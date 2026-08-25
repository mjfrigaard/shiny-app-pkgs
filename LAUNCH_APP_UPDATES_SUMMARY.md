# launch_app() Mode Argument Implementation Summary

## Overview
The `launch_app()` function is being updated to support both blocking (`runApp()`) and non-blocking (`startApp()`) execution modes. This document summarizes the changes needed across the codebase and documentation.

## Function Signature Changes

### Current Signature
```r
launch_app <- function(...) {
  shiny::shinyApp(
    ui     = movies_ui(),
    server = movies_server,
    ...
  )
}
```

### Updated Signature (Target)
```r
launch_app <- function(options = list(), mode = "run", run = "p") {
  app <- shinyApp(
    ui = movies_ui(),
    server = movies_server,
    options = options
  )

  if (mode == "start") {
    shiny::startApp(object = app, port = 3838)
  } else if (mode == "run") {
    display_type(run = run)
    shiny::runApp(appDir = app)
  }
}
```

### Parameters
- **`options`** (list, default: `list()`) — Shiny options to pass to `shinyApp()`
- **`mode`** (character, default: `"run"`) — Launch mode: `"run"` for blocking, `"start"` for non-blocking
- **`run`** (character, default: `"p"`) — Where to launch: `"p"` (pane), `"w"` (window), `"b"` (browser)

## Files Requiring Code Updates

### Core Package Files
1. **R/launch_app.R**
   - Update function signature
   - Add mode parameter handling
   - Conditionally call `startApp()` or `runApp()`
   - Integrate with `display_type()` for blocking mode

### App Files (sap package)
1. **app.R** (interactive sessions)
   - Update: `sap::launch_app(options = list(test.mode = TRUE), mode = "run", run = 'p')`

2. **app.R** (for GitHub Actions deployment - gha.qmd)
   - Update: `launch_app(app = 'ggp2', mode = "run", options = list(test.mode = FALSE))`
   - Note: Clarify what `app` parameter does (if it's a custom parameter for launching different apps)

3. **Docker deployment** (docker.qmd context)
   - May need to specify mode in containerized context
   - Verify `sap::launch_app()` behavior in non-interactive Docker environment

### Test Files
- Update any tests that call `launch_app()` to include mode parameter where appropriate

## Documentation Updates (Completed ✅)

### Chapter Updates
- ✅ **launch.qmd** - Complete update including:
  - TLDR box with `startApp()` description
  - Full `startApp()` section explaining non-blocking behavior
  - Updated standalone app function with mode argument
  - Updated app.R examples
  - Recap section with `startApp()` summary
  - Multiple practical examples of `startApp()` usage

- ✅ **debug_apps.qmd** - AST examples updated:
  - Lines 77-133: Updated both AST diagrams to show new `launch_app()` structure
  - Shows `launch_app()` wrapping `shinyApp()` with mode/run parameters

- ✅ **gha.qmd** - GitHub Actions deployment:
  - Lines 1085-1092: Added `mode = "run"` to `launch_app()` call
  - Added explanatory note about parameters and blocking mode

- ✅ **app_data.qmd** - Reactive values example:
  - Line 453: Added note explaining default blocking mode usage

### Pending Documentation Updates (Priority 2)
- **design.qmd** - May need clarification on mode parameter in design workflow
- **docker.qmd** - May need to address mode parameter in containerized context
- **debugger.qmd** - Explain the `app` parameter usage
- **document.qmd** - Update architecture diagrams if needed

## Key Implementation Considerations

### 1. Mode Parameter Behavior
- **`mode = "run"`** (default):
  - Calls `runApp()` with app object
  - Blocks console (user can't type while app runs)
  - Calls `display_type()` to control window placement
  - Used in development and deployment contexts

- **`mode = "start"`**:
  - Calls `startApp()` with app object
  - Returns `ShinyAppHandle` immediately
  - Console remains available
  - Requires specifying `port` (default: 3838)
  - Best for rapid iterative development

### 2. Display Type Integration
- `display_type()` should only be called when `mode = "run"`
- Default `run = "p"` (viewer pane) matches development preferences
- `display_type()` handles RStudio/Positron detection

### 3. Port Handling for startApp()
- Non-blocking mode needs explicit port
- Consider: Should port be parameterized? Or hardcoded to 3838?
- Current examples use 3838

### 4. Backward Compatibility
- Default `mode = "run"` maintains existing behavior
- Existing `launch_app()` calls will work without changes
- `options` parameter now explicit (was in `...`)

## Testing Recommendations

1. **Interactive Development**
   - Test `launch_app(mode = "run")` in RStudio/Positron
   - Test `launch_app(mode = "start", port = 3838)` and verify console returns
   - Test `handle$stop()` on returned ShinyAppHandle
   - Test `handle$status()` and `handle$url()`

2. **Deployment Contexts**
   - Test `launch_app(mode = "run")` in GitHub Actions (non-interactive)
   - Test `launch_app(mode = "run")` in Docker (non-interactive)
   - Verify `test.mode = FALSE` options work correctly

3. **Display Type**
   - Test all `run` values: `"p"`, `"w"`, `"b"`
   - Verify behavior in both RStudio and Positron
   - Test on systems without RStudio

## Branches and Versions

- Book chapter updates: main branch
- Code updates: Coordinate with sap package branches
- Consider: Do multiple app packages (movexplR6, etc.) need similar updates?

## Related Functions

- `display_type()` - Controls window placement in blocking mode
- `shiny::shinyApp()` - Creates app object
- `shiny::runApp()` - Blocking app launcher
- `shiny::startApp()` - Non-blocking app launcher
- `movies_ui()` / `movies_server()` - App UI and server functions

## Questions for Implementation

1. **App Parameter**: What does `app = 'ggp2'` do in `launch_app(app = 'ggp2')`?
   - Is this for launching different apps from the same package?
   - Should it be documented as a custom parameter?

2. **Port Configuration**: Should port be parameterized?
   ```r
   launch_app(..., mode = "start", port = 3838)
   ```

3. **Default Port**: What if user tries `startApp()` without specifying port?
   - Should we use `getOption("shiny.port")` as fallback?

4. **Additional Apps**: Are there other app packages (movexplR6, etc.) that need same changes?

---

**Documentation Status**: ✅ Complete for Priority 1 chapters
**Code Status**: ⏳ Awaiting implementation
**Testing Status**: ⏳ Awaiting implementation and testing

**Last Updated**: 2026-08-25
