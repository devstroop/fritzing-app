const std = @import("std");

// ─── Source file inventory from all .pri files ───────────────────────────

const kitchensink_sources = [_][]const u8{
    "src/commands.cpp",
    "src/debugdialog.cpp",
    "src/fapplication.cpp",
    "src/fsplashscreen.cpp",
    "src/fsvgrenderer.cpp",
    "src/itemdrag.cpp",
    "src/layerattributes.cpp",
    "src/main.cpp",
    "src/processeventblocker.cpp",
    "src/sketchtoolbutton.cpp",
    "src/viewgeometry.cpp",
    "src/viewlayer.cpp",
    "src/waitpushundostack.cpp",
    "src/project_properties.cpp",
    "src/servicelistfetcher.cpp",
};

const mainwindow_sources = [_][]const u8{
    "src/mainwindow/fprobeactions.cpp",
    "src/mainwindow/fdockwidget.cpp",
    "src/mainwindow/fritzingwindow.cpp",
    "src/mainwindow/mainwindow.cpp",
    "src/mainwindow/mainwindow_export.cpp",
    "src/mainwindow/mainwindow_menu.cpp",
    "src/mainwindow/mainwindow_dock.cpp",
    "src/mainwindow/sketchareawidget.cpp",
    "src/mainwindow/FProbeDropByModuleID.cpp",
    "src/mainwindow/FProbeKeyPressEvents.cpp",
    "src/mainwindow/FProbeCurrentSketchXml.cpp",
    "src/mainwindow/getspice.cpp",
    "src/mainwindow/fprobefocuswidget.cpp",
};

const partsbin_sources = [_][]const u8{
    "src/partsbinpalette/partsbinpalettewidget.cpp",
    "src/partsbinpalette/searchbinpalettewidget.cpp",
    "src/partsbinpalette/partsbinview.cpp",
    "src/partsbinpalette/partsbinlistview.cpp",
    "src/partsbinpalette/partsbiniconview.cpp",
    "src/partsbinpalette/graphicsflowlayout.cpp",
    "src/partsbinpalette/svgiconwidget.cpp",
    "src/partsbinpalette/partsbincommands.cpp",
    "src/partsbinpalette/searchlineedit.cpp",
    "src/partsbinpalette/binmanager/binmanager.cpp",
    "src/partsbinpalette/binmanager/stacktabbar.cpp",
    "src/partsbinpalette/binmanager/stacktabwidget.cpp",
};

const partseditor_sources = [_][]const u8{
    "src/partseditor/pemainwindow.cpp",
    "src/partseditor/pemetadataview.cpp",
    "src/partseditor/pecommands.cpp",
    "src/partseditor/peconnectorsview.cpp",
    "src/partseditor/pesvgview.cpp",
    "src/partseditor/petoolview.cpp",
    "src/partseditor/peutils.cpp",
    "src/partseditor/pegraphicsitem.cpp",
    "src/partseditor/kicadmoduledialog.cpp",
    "src/partseditor/hashpopulatewidget.cpp",
};

const svg_sources = [_][]const u8{
    "src/svg/svgfilesplitter.cpp",
    "src/svg/svgpathparser.cpp",
    "src/svg/svgpathgrammar.cpp",
    "src/svg/svgpathlexer.cpp",
    "src/svg/svgpathrunner.cpp",
    "src/svg/svg2gerber.cpp",
    "src/svg/svgflattener.cpp",
    "src/svg/gerbergenerator.cpp",
    "src/svg/groundplanegenerator.cpp",
    "src/svg/groundplanegeneratorold.cpp",
    "src/svg/x2svg.cpp",
    "src/svg/kicad2svg.cpp",
    "src/svg/kicadmodule2svg.cpp",
    "src/svg/kicadschematic2svg.cpp",
    "src/svg/gedaelement2svg.cpp",
    "src/svg/gedaelementparser.cpp",
    "src/svg/gedaelementgrammar.cpp",
    "src/svg/gedaelementlexer.cpp",
    "src/svg/svgtext.cpp",
};

const help_sources = [_][]const u8{
    "src/help/aboutbox.cpp",
    "src/help/firsttimehelpdialog.cpp",
    "src/help/tipsandtricks.cpp",
};

const version_sources = [_][]const u8{
    "src/version/modfiledialog.cpp",
    "src/version/updatedialog.cpp",
    "src/version/version.cpp",
    "src/version/versionchecker.cpp",
    "src/version/partschecker.cpp",
};

const utils_sources = [_][]const u8{
    "src/utils/fpsmonitor.cpp",
    "src/utils/ftooltip.cpp",
    "src/utils/autoclosemessagebox.cpp",
    "src/utils/bendpointaction.cpp",
    "src/utils/bezier.cpp",
    "src/utils/bezierdisplay.cpp",
    "src/utils/clickablelabel.cpp",
    "src/utils/cursormaster.cpp",
    "src/utils/expandinglabel.cpp",
    "src/utils/fileprogressdialog.cpp",
    "src/utils/flineedit.cpp",
    "src/utils/fmessagebox.cpp",
    "src/utils/focusoutcombobox.cpp",
    "src/utils/fsizegrip.cpp",
    "src/utils/lockmanager.cpp",
    "src/utils/misc.cpp",
    "src/utils/resizehandle.cpp",
    "src/utils/folderutils.cpp",
    "src/utils/graphicsutils.cpp",
    "src/utils/graphutils.cpp",
    "src/utils/ratsnestcolors.cpp",
    "src/utils/schematicrectconstants.cpp",
    "src/utils/s2s.cpp",
    "src/utils/textutils.cpp",
    "src/utils/textmetrics.cpp",
    "src/utils/zoomslider.cpp",
    "src/utils/FMessageLogProbe.cpp",
    "src/utils/uploadpair.cpp",
};

const items_sources = [_][]const u8{
    "src/items/breadboard.cpp",
    "src/items/capacitor.cpp",
    "src/items/clipablewire.cpp",
    "src/items/dip.cpp",
    "src/items/dipv2.cpp",
    "src/items/groundplane.cpp",
    "src/items/hole.cpp",
    "src/items/itembase.cpp",
    "src/items/jumperitem.cpp",
    "src/items/layerkinpaletteitem.cpp",
    "src/items/led.cpp",
    "src/items/logoitem.cpp",
    "src/items/moduleidnames.cpp",
    "src/items/mysterypart.cpp",
    "src/items/note.cpp",
    "src/items/pad.cpp",
    "src/items/paletteitem.cpp",
    "src/items/paletteitembase.cpp",
    "src/items/partfactory.cpp",
    "src/items/partlabel.cpp",
    "src/items/perfboard.cpp",
    "src/items/pinheader.cpp",
    "src/items/propertydef.cpp",
    "src/items/resistor.cpp",
    "src/items/resizableboard.cpp",
    "src/items/ruler.cpp",
    "src/items/schematicframe.cpp",
    "src/items/schematicsubpart.cpp",
    "src/items/screwterminal.cpp",
    "src/items/stripboard.cpp",
    "src/items/symbolpaletteitem.cpp",
    "src/items/tracewire.cpp",
    "src/items/via.cpp",
    "src/items/virtualwire.cpp",
    "src/items/wire.cpp",
    "src/items/FProbeR1PosPCB.cpp",
    "src/items/FProbeRPartLabel.cpp",
    "src/items/FProbeSwitchProperty.cpp",
};

const autoroute_sources = [_][]const u8{
    "src/autoroute/autorouter.cpp",
    "src/autoroute/autorouteprogressdialog.cpp",
    "src/autoroute/autoroutersettingsdialog.cpp",
    "src/autoroute/checker.cpp",
    "src/autoroute/binpacking/Rect.cpp",
    "src/autoroute/binpacking/GuillotineBinPack.cpp",
    "src/autoroute/mazerouter/mazerouter.cpp",
    "src/autoroute/zoomcontrols.cpp",
    "src/autoroute/drc.cpp",
    "src/autoroute/eventeater.cpp",
};

const connectors_sources = [_][]const u8{
    "src/connectors/debugconnectorsprobe.cpp",
    "src/connectors/bus.cpp",
    "src/connectors/busshared.cpp",
    "src/connectors/connector.cpp",
    "src/connectors/connectoritem.cpp",
    "src/connectors/nonconnectoritem.cpp",
    "src/connectors/connectorshared.cpp",
    "src/connectors/ercdata.cpp",
    "src/connectors/svgidlayer.cpp",
    "src/connectors/debugconnectors.cpp",
};

const infoview_sources = [_][]const u8{
    "src/infoview/htmlinfoview.cpp",
    "src/infoview/scalediconframe.cpp",
};

const model_sources = [_][]const u8{
    "src/model/floaderror.cpp",
    "src/model/fzpinfo.cpp",
    "src/model/modelbase.cpp",
    "src/model/modelpart.cpp",
    "src/model/modelpartshared.cpp",
    "src/model/palettemodel.cpp",
    "src/model/sketchmodel.cpp",
};

const sketch_sources = [_][]const u8{
    "src/sketch/renderthing.cpp",
    "src/sketch/fgraphicsscene.cpp",
    "src/sketch/breadboardsketchwidget.cpp",
    "src/sketch/infographicsview.cpp",
    "src/sketch/pcbsketchwidget.cpp",
    "src/sketch/schematicsketchwidget.cpp",
    "src/sketch/sketchwidget.cpp",
    "src/sketch/outlierhandler.cpp",
    "src/sketch/welcomeview.cpp",
    "src/sketch/zoomablegraphicsview.cpp",
    "src/sketch/subpartswapmanager.cpp",
    "src/sketch/swapthing.cpp",
};

const dialogs_sources = [_][]const u8{
    "src/dialogs/prefsdialog.cpp",
    "src/dialogs/exportparametersdialog.cpp",
    "src/dialogs/pinlabeldialog.cpp",
    "src/dialogs/groundfillseeddialog.cpp",
    "src/dialogs/quotedialog.cpp",
    "src/dialogs/recoverydialog.cpp",
    "src/dialogs/setcolordialog.cpp",
    "src/dialogs/translatorlistmodel.cpp",
    "src/dialogs/fabuploaddialog.cpp",
    "src/dialogs/fabuploadprogress.cpp",
    "src/dialogs/networkhelper.cpp",
    "src/dialogs/fabuploadprogressprobe.cpp",
};

const program_sources = [_][]const u8{
    "src/program/highlighter.cpp",
    "src/program/programtab.cpp",
    "src/program/programwindow.cpp",
    "src/program/syntaxer.cpp",
    "src/program/trienode.cpp",
    "src/program/console.cpp",
    "src/program/consolewindow.cpp",
    "src/program/consolesettings.cpp",
    "src/program/platform.cpp",
    "src/program/platformarduino.cpp",
    "src/program/platformpicaxe.cpp",
    "src/program/platformlaunchpad.cpp",
};

const testing_sources = [_][]const u8{
    "src/testing/FTesting.cpp",
    "src/testing/FProbe.cpp",
    "src/testing/FTestingServer.cpp",
};

const simulation_sources = [_][]const u8{
    "src/simulation/FProbeStartSimulator.cpp",
    "src/simulation/simulator.cpp",
    "src/simulation/ngspice_simulator.cpp",
};

const misc_sources = [_][]const u8{
    "src/referencemodel/sqlitereferencemodel.cpp",
    "src/referencemodel/serviceiconfetcher.cpp",
    "src/eagle/fritzing2eagle.cpp",
    "src/dock/layerpalette.cpp",
    "src/ipc/ipc_d_356.cpp",
    "test/version/cppversion.cpp",
};

const all_source_groups = [_][]const []const u8{
    &kitchensink_sources,
    &mainwindow_sources,
    &partsbin_sources,
    &partseditor_sources,
    &svg_sources,
    &help_sources,
    &version_sources,
    &utils_sources,
    &items_sources,
    &autoroute_sources,
    &connectors_sources,
    &infoview_sources,
    &model_sources,
    &sketch_sources,
    &dialogs_sources,
    &program_sources,
    &testing_sources,
    &simulation_sources,
    &misc_sources,
};

const moc_headers = [_][]const u8{
    "src/autoroute/autorouteprogressdialog.h",
    "src/autoroute/autorouter.h",
    "src/autoroute/autoroutersettingsdialog.h",
    "src/autoroute/drc.h",
    "src/autoroute/eventeater.h",
    "src/autoroute/mazerouter/mazerouter.h",
    "src/autoroute/zoomcontrols.h",
    "src/commands.h",
    "src/connectors/bus.h",
    "src/connectors/connector.h",
    "src/connectors/connectoritem.h",
    "src/connectors/connectorshared.h",
    "src/connectors/debugconnectors.h",
    "src/connectors/debugconnectorsprobe.h",
    "src/connectors/nonconnectoritem.h",
    "src/debugdialog.h",
    "src/dialogs/exportparametersdialog.h",
    "src/dialogs/fabuploaddialog.h",
    "src/dialogs/fabuploadprogress.h",
    "src/dialogs/fabuploadprogressprobe.h",
    "src/dialogs/groundfillseeddialog.h",
    "src/dialogs/pinlabeldialog.h",
    "src/dialogs/prefsdialog.h",
    "src/dialogs/quotedialog.h",
    "src/dialogs/recoverydialog.h",
    "src/dialogs/setcolordialog.h",
    "src/dialogs/translatorlistmodel.h",
    "src/dock/layerpalette.h",
    "src/eagle/fritzing2eagle.h",
    "src/fapplication.h",
    "src/fsplashscreen.h",
    "src/fsvgrenderer.h",
    "src/help/aboutbox.h",
    "src/help/firsttimehelpdialog.h",
    "src/help/tipsandtricks.h",
    "src/infoview/htmlinfoview.h",
    "src/infoview/scalediconframe.h",
    "src/itemdrag.h",
    "src/items/breadboard.h",
    "src/items/capacitor.h",
    "src/items/clipablewire.h",
    "src/items/dip.h",
    "src/items/dipv2.h",
    "src/items/groundplane.h",
    "src/items/hole.h",
    "src/items/itembase.h",
    "src/items/jumperitem.h",
    "src/items/layerkinpaletteitem.h",
    "src/items/led.h",
    "src/items/logoitem.h",
    "src/items/mysterypart.h",
    "src/items/note.h",
    "src/items/pad.h",
    "src/items/paletteitem.h",
    "src/items/paletteitembase.h",
    "src/items/partlabel.h",
    "src/items/perfboard.h",
    "src/items/pinheader.h",
    "src/items/resistor.h",
    "src/items/resizableboard.h",
    "src/items/ruler.h",
    "src/items/schematicframe.h",
    "src/items/schematicsubpart.h",
    "src/items/screwterminal.h",
    "src/items/stripboard.h",
    "src/items/symbolpaletteitem.h",
    "src/items/tracewire.h",
    "src/items/via.h",
    "src/items/virtualwire.h",
    "src/items/wire.h",
    "src/mainwindow/FProbeDropByModuleID.h",
    "src/mainwindow/FProbeKeyPressEvents.h",
    "src/mainwindow/fdockwidget.h",
    "src/mainwindow/fprobeactions.h",
    "src/mainwindow/fprobefocuswidget.h",
    "src/mainwindow/fritzingwindow.h",
    "src/mainwindow/mainwindow.h",
    "src/mainwindow/sketchareawidget.h",
    "src/model/floaderror.h",
    "src/model/fzpinfo.h",
    "src/model/modelbase.h",
    "src/model/modelpart.h",
    "src/model/modelpartshared.h",
    "src/model/palettemodel.h",
    "src/model/sketchmodel.h",
    "src/partsbinpalette/binmanager/binmanager.h",
    "src/partsbinpalette/binmanager/stacktabbar.h",
    "src/partsbinpalette/binmanager/stacktabwidget.h",
    "src/partsbinpalette/partsbiniconview.h",
    "src/partsbinpalette/partsbinlistview.h",
    "src/partsbinpalette/partsbinpalettewidget.h",
    "src/partsbinpalette/searchbinpalettewidget.h",
    "src/partsbinpalette/searchlineedit.h",
    "src/partsbinpalette/svgiconwidget.h",
    "src/partseditor/baseremovebutton.h",
    "src/partseditor/hashpopulatewidget.h",
    "src/partseditor/kicadmoduledialog.h",
    "src/partseditor/peconnectorsview.h",
    "src/partseditor/pegraphicsitem.h",
    "src/partseditor/pemainwindow.h",
    "src/partseditor/pemetadataview.h",
    "src/partseditor/pesvgview.h",
    "src/partseditor/petoolview.h",
    "src/program/console.h",
    "src/program/consolesettings.h",
    "src/program/consolewindow.h",
    "src/program/highlighter.h",
    "src/program/platform.h",
    "src/program/platformarduino.h",
    "src/program/platformlaunchpad.h",
    "src/program/platformpicaxe.h",
    "src/program/programtab.h",
    "src/program/programwindow.h",
    "src/program/syntaxer.h",
    "src/referencemodel/referencemodel.h",
    "src/referencemodel/serviceiconfetcher.h",
    "src/referencemodel/sqlitereferencemodel.h",
    "src/servicelistfetcher.h",
    "src/simulation/FProbeStartSimulator.h",
    "src/simulation/simulator.h",
    "src/sketch/breadboardsketchwidget.h",
    "src/sketch/fgraphicsscene.h",
    "src/sketch/infographicsview.h",
    "src/sketch/outlierhandler.h",
    "src/sketch/pcbsketchwidget.h",
    "src/sketch/schematicsketchwidget.h",
    "src/sketch/sketchwidget.h",
    "src/sketch/welcomeview.h",
    "src/sketch/zoomablegraphicsview.h",
    "src/sketchtoolbutton.h",
    "src/svg/groundplanegenerator.h",
    "src/svg/groundplanegeneratorold.h",
    "src/svg/svg2gerber.h",
    "src/svg/svgfilesplitter.h",
    "src/svg/svgflattener.h",
    "src/svg/svgpathrunner.h",
    "src/testing/FTesting.h",
    "src/testing/FTestingServer.h",
    "src/utils/autoclosemessagebox.h",
    "src/utils/bendpointaction.h",
    "src/utils/boundedregexpvalidator.h",
    "src/utils/clickablelabel.h",
    "src/utils/cursormaster.h",
    "src/utils/expandinglabel.h",
    "src/utils/familypropertycombobox.h",
    "src/utils/fileprogressdialog.h",
    "src/utils/flineedit.h",
    "src/utils/fmessagebox.h",
    "src/utils/focusoutcombobox.h",
    "src/utils/fpsmonitor.h",
    "src/utils/fsizegrip.h",
    "src/utils/lockmanager.h",
    "src/utils/resizehandle.h",
    "src/utils/s2s.h",
    "src/utils/zoomslider.h",
    "src/version/modfiledialog.h",
    "src/version/updatedialog.h",
    "src/version/versionchecker.h",
    "src/viewlayer.h",
    "src/waitpushundostack.h",
};

const ui_files = [_][]const u8{
    "src/version/modfiledialog.ui",
    "src/program/consolewindow.ui",
    "src/program/consolesettings.ui",
    "src/dialogs/fabuploaddialog.ui",
    "src/dialogs/exportparametersdialog.ui",
};

// ─── Helpers ──────────────────────────────────────────────────────────────

fn countSources() usize {
    var count: usize = 0;
    for (all_source_groups) |group| count += group.len;
    return count;
}

fn allocSources(b: *std.Build) []const []const u8 {
    const total = countSources();
    const sources = b.allocator.alloc([]const u8, total) catch @panic("OOM");
    var idx: usize = 0;
    for (all_source_groups) |group| {
        for (group) |src| {
            sources[idx] = src;
            idx += 1;
        }
    }
    return sources;
}

fn uiOutputName(ui_path: []const u8) []const u8 {
    const basename = std.fs.path.basename(ui_path);
    const no_ext = std.fs.path.stem(basename);
    return std.fmt.allocPrint(std.heap.page_allocator, "ui_{s}.h", .{no_ext}) catch @panic("OOM");
}

fn findQtTool(b: *std.Build, qt_bin_dir: []const u8, qt_libexec_dir: []const u8, tool: []const u8) []const u8 {
    // Internal Qt tools (moc, uic, rcc) may live in a libexec directory.
    // Check libexec first, then bin, then fall back to bare name (PATH).
    const libexec_path = std.fs.path.join(b.allocator, &[_][]const u8{ qt_libexec_dir, tool }) catch @panic("OOM");
    if (std.fs.accessAbsolute(libexec_path, .{})) |_| {
        return libexec_path;
    } else |_| {}
    const bin_path = std.fs.path.join(b.allocator, &[_][]const u8{ qt_bin_dir, tool }) catch @panic("OOM");
    if (std.fs.accessAbsolute(bin_path, .{})) |_| {
        return bin_path;
    } else |_| {}
    return b.allocator.dupe(u8, tool) catch @panic("OOM");
}

fn discoverQt(b: *std.Build, qt_dir: ?[]const u8) struct { []const u8, []const u8, []const u8, []const u8 } {
    if (qt_dir) |dir| {
        return .{
            std.fs.path.join(b.allocator, &[_][]const u8{ dir, "include" }) catch @panic("OOM"),
            std.fs.path.join(b.allocator, &[_][]const u8{ dir, "lib" }) catch @panic("OOM"),
            std.fs.path.join(b.allocator, &[_][]const u8{ dir, "bin" }) catch @panic("OOM"),
            std.fs.path.join(b.allocator, &[_][]const u8{ dir, "libexec" }) catch @panic("OOM"),
        };
    }

    for ([_][]const u8{ "qmake", "qmake6" }) |qmake| {
        const result = std.process.Child.run(.{
            .allocator = b.allocator,
            .argv = &[_][]const u8{ qmake, "-query", "QT_INSTALL_PREFIX" },
        }) catch continue;
        defer b.allocator.free(result.stdout);
        defer if (result.stderr.len > 0) b.allocator.free(result.stderr);
        if (result.term.Exited == 0) {
            const prefix = std.mem.trim(u8, result.stdout, " \n\r");
            const inc_dir = qtQuery(b, qmake, "QT_INSTALL_HEADERS") orelse
                std.fs.path.join(b.allocator, &[_][]const u8{ prefix, "include" }) catch @panic("OOM");
            const lib_dir = qtQuery(b, qmake, "QT_INSTALL_LIBS") orelse
                std.fs.path.join(b.allocator, &[_][]const u8{ prefix, "lib" }) catch @panic("OOM");
            const bin_dir = qtQuery(b, qmake, "QT_INSTALL_BINS") orelse
                std.fs.path.join(b.allocator, &[_][]const u8{ prefix, "bin" }) catch @panic("OOM");
            const libexec_dir = qtQuery(b, qmake, "QT_INSTALL_LIBEXECS") orelse bin_dir;
            return .{ inc_dir, lib_dir, bin_dir, libexec_dir };
        }
    }

    @panic("Qt not found. Install Qt 6.5 or pass --qt-dir=<path>");
}

fn qtQuery(b: *std.Build, qmake: []const u8, prop: []const u8) ?[]const u8 {
    const result = std.process.Child.run(.{
        .allocator = b.allocator,
        .argv = &[_][]const u8{ qmake, "-query", prop },
    }) catch return null;
    defer b.allocator.free(result.stdout);
    defer if (result.stderr.len > 0) b.allocator.free(result.stderr);
    if (result.term.Exited != 0) return null;
    const val = std.mem.trim(u8, result.stdout, " \n\r");
    return if (val.len == 0) null else b.allocator.dupe(u8, val) catch @panic("OOM");
}

fn runCmd(b: *std.Build, argv: anytype) ?[]const u8 {
    const result = std.process.Child.run(.{
        .allocator = b.allocator,
        .argv = argv,
        .cwd = null,
    }) catch return null;
    defer b.allocator.free(result.stdout);
    defer if (result.stderr.len > 0) b.allocator.free(result.stderr);
    if (result.term.Exited != 0) return null;
    return b.allocator.dupe(u8, std.mem.trim(u8, result.stdout, " \n\r")) catch @panic("OOM");
}

/// Wrapper around b.path that handles absolute paths (which b.path rejects).
fn lp(b: *std.Build, path: []const u8) std.Build.LazyPath {
    if (std.fs.path.isAbsolute(path)) {
        return .{ .cwd_relative = path };
    }
    return b.path(path);
}

// ─── Main ─────────────────────────────────────────────────────────────────

pub fn build(b: *std.Build) void {
    b.reference_trace = 0;
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    // ── Qt Discovery ──────────────────────────────────────────────────────
    const qt_dir = b.option([]const u8, "qt-dir", "Path to Qt installation") orelse
        std.process.getEnvVarOwned(b.allocator, "QT_DIR") catch null;
    const qt_include_dir, const qt_lib_dir, const qt_bin_dir, const qt_libexec_dir = discoverQt(b, qt_dir);

    const moc_path = findQtTool(b, qt_bin_dir, qt_libexec_dir, "moc");
    const uic_path = findQtTool(b, qt_bin_dir, qt_libexec_dir, "uic");
    const rcc_path = findQtTool(b, qt_bin_dir, qt_libexec_dir, "rcc");

    // ── External Dependency Paths ─────────────────────────────────────────
    const ngspice_dir = b.option([]const u8, "ngspice-dir", "Path to ngspice-42") orelse
        std.process.getEnvVarOwned(b.allocator, "NGSPICE_DIR") catch null;
    const quazip_dir = b.option([]const u8, "quazip-dir", "Path to quazip") orelse
        std.process.getEnvVarOwned(b.allocator, "QUAZIP_DIR") catch null;
    const svgpp_dir = b.option([]const u8, "svgpp-dir", "Path to svgpp-1.3.1") orelse
        std.process.getEnvVarOwned(b.allocator, "SVGPP_DIR") catch null;
    const clipper_dir = b.option([]const u8, "clipper-dir", "Path to Clipper1") orelse
        std.process.getEnvVarOwned(b.allocator, "CLIPPER_DIR") catch null;
    const libgit2_dir = b.option([]const u8, "libgit2-dir", "Path to libgit2-1.7.1") orelse
        std.process.getEnvVarOwned(b.allocator, "LIBGIT2_DIR") catch null;
    const openssl_dir = b.option([]const u8, "openssl-dir", "Path to OpenSSL") orelse
        std.process.getEnvVarOwned(b.allocator, "OPENSSL_DIR") catch null;
    const boost_dir = b.option([]const u8, "boost-dir", "Path to Boost root") orelse
        std.process.getEnvVarOwned(b.allocator, "BOOST_DIR") catch null;

    // ── Module & Executable ───────────────────────────────────────────────
    const mod = b.createModule(.{ .target = target, .optimize = optimize });
    const exe = b.addExecutable(.{ .name = "Fritzing", .root_module = mod });

    // ── Compile Definitions ───────────────────────────────────────────────
    const target_os = target.result.os.tag;
    const target_arch = target.result.cpu.arch;

    var cxx_buf: [32][]const u8 = undefined;
    var cxx_count: usize = 0;
    cxx_buf[cxx_count] = "-std=c++17";
    cxx_count += 1;
    cxx_buf[cxx_count] = "-fno-omit-frame-pointer";
    cxx_count += 1;
    cxx_buf[cxx_count] = "-O3";
    cxx_count += 1;

    if (target_os == .linux) {
        if (target_arch == .x86_64) {
            cxx_buf[cxx_count] = "-DLINUX_64";
            cxx_count += 1;
        } else {
            cxx_buf[cxx_count] = "-DLINUX_32";
            cxx_count += 1;
        }
    } else if (target_os == .windows) {
        cxx_buf[cxx_count] = "-D_CRT_SECURE_NO_DEPRECATE";
        cxx_count += 1;
        cxx_buf[cxx_count] = "-D_WINDOWS";
        cxx_count += 1;
        if (target_arch == .x86_64) {
            cxx_buf[cxx_count] = "-DWIN64";
            cxx_count += 1;
        }
    }

    cxx_buf[cxx_count] = "-DDATADIR=\"/usr/share\"";
    cxx_count += 1;
    cxx_buf[cxx_count] = "-DPKGDATADIR=\"/usr/share/fritzing\"";
    cxx_count += 1;

    if (runCmd(b, &[_][]const u8{ "git", "describe", "--tags" })) |v| {
        cxx_buf[cxx_count] = b.fmt("-DGIT_VERSION=\"{s}\"", .{v});
        cxx_count += 1;
    }
    if (runCmd(b, &[_][]const u8{ "git", "show", "--no-patch", "--no-notes", "--pretty=%cd", "HEAD", "--date=iso-strict" })) |d| {
        cxx_buf[cxx_count] = b.fmt("-DGIT_DATE=\"{s}\"", .{d});
        cxx_count += 1;
    }
    if (runCmd(b, &[_][]const u8{ "date", "--iso-8601=seconds" })) |d| {
        cxx_buf[cxx_count] = b.fmt("-DBUILD_DATE=\"{s}\"", .{d});
        cxx_count += 1;
    }

    // -stdlib must be set before cxx_flags is sliced below
    if (target_os == .linux) {
        cxx_buf[cxx_count] = "-stdlib=libstdc++";
        cxx_count += 1;
    } else if (target_os == .macos) {
        cxx_buf[cxx_count] = "-stdlib=libc++";
        cxx_count += 1;
    }

    const cxx_flags = cxx_buf[0..cxx_count];

    // ── Include Paths ─────────────────────────────────────────────────────
    mod.addIncludePath(lp(b, qt_include_dir));
    const qt_modules = [_][]const u8{ "QtCore", "QtGui", "QtWidgets", "QtConcurrent", "QtNetwork", "QtPrintSupport", "QtSerialPort", "QtSql", "QtSvg", "QtXml", "QtSvgWidgets", "QtOpenGLWidgets" };
    for (qt_modules) |qt_mod| {
        mod.addIncludePath(lp(b, b.fmt("{s}/{s}", .{ qt_include_dir, qt_mod })));
    }

    // macOS: Qt headers live inside .framework/Headers/.  The umbrella
    // headers (e.g. <QLabel>) are found via -F framework search, but
    // their inner includes (e.g. <QtWidgets/qlabel.h>) need the framework
    // Headers dir on the include path.
    if (target_os == .macos) {
        for (qt_modules) |qt_mod| {
            mod.addIncludePath(lp(b, b.fmt("{s}/{s}.framework/Headers", .{ qt_lib_dir, qt_mod })));
        }
    }

    mod.addIncludePath(lp(b, "."));
    mod.addIncludePath(lp(b, "src"));
    mod.addIncludePath(lp(b, "src/dialogs"));
    mod.addIncludePath(lp(b, "src/ipc"));

    if (ngspice_dir) |d| mod.addIncludePath(lp(b, b.fmt("{s}/include", .{d})));
    if (quazip_dir) |d| mod.addIncludePath(lp(b, b.fmt("{s}/include/QuaZip-Qt6-1.4", .{d})));
    if (svgpp_dir) |d| mod.addIncludePath(lp(b, b.fmt("{s}/include", .{d})));
    if (clipper_dir) |d| mod.addIncludePath(lp(b, b.fmt("{s}/include/polyclipping", .{d})));
    if (libgit2_dir) |d| mod.addIncludePath(lp(b, b.fmt("{s}/include", .{d})));
    if (boost_dir) |d| mod.addIncludePath(lp(b, d));
    if (openssl_dir) |d| mod.addIncludePath(lp(b, b.fmt("{s}/include", .{d})));

    // ── C++ Standard Library Headers ─────────────────────────────────────
    // Zig's bundled Clang may not find the C++ stdlib headers automatically.
    // Add them as module include paths so they apply to both source and
    // header scanning. Also set -stdlib to match the system's C++ library.
    if (target_os == .linux) {
        const gcc_vers = [_][]const u8{ "14", "13", "12", "11", "10" };
        for (gcc_vers) |ver| {
            const dir = std.fs.path.join(b.allocator, &[_][]const u8{ "/usr/include/c++", ver }) catch continue;
            if (std.fs.accessAbsolute(dir, .{})) |_| {
                mod.addIncludePath(.{ .cwd_relative = dir });
                const arch_dir = std.fs.path.join(b.allocator, &[_][]const u8{
                    "/usr/include/x86_64-linux-gnu/c++", ver,
                }) catch continue;
                if (std.fs.accessAbsolute(arch_dir, .{})) |_| {
                    mod.addIncludePath(.{ .cwd_relative = arch_dir });
                } else |_| {}
                break;
            } else |_| {}
        }
    } else if (target_os == .macos) {
        // Apple's libc++ headers are inside the SDK
        if (runCmd(b, &[_][]const u8{ "xcrun", "--show-sdk-path" })) |sdk| {
            const cxx_inc = std.fs.path.join(b.allocator, &[_][]const u8{
                sdk, "usr", "include", "c++", "v1",
            }) catch null;
            if (cxx_inc) |p| {
                if (std.fs.accessAbsolute(p, .{})) |_| {
                    mod.addIncludePath(.{ .cwd_relative = p });
                } else |_| {}
            }
        }
    }

    // ── Qt Toolchain: MOC ─────────────────────────────────────────────────
    // Run moc on each Q_OBJECT header and add the generated .cpp as a source.
    for (moc_headers) |hdr| {
        const basename = std.fs.path.basename(hdr);
        const out_name = b.fmt("{s}.cpp", .{basename});
        const cmd = b.addSystemCommand(&[_][]const u8{ moc_path, "-o" });
        const out = cmd.addOutputFileArg(out_name);
        cmd.addFileArg(lp(b, hdr));
        cmd.addArg("-I");
        cmd.addArg(qt_include_dir);
        cmd.addArg("-I");
        cmd.addArg("src");
        mod.addCSourceFile(.{ .file = out, .flags = cxx_flags });
    }

    // ── Qt Toolchain: UIC ─────────────────────────────────────────────────
    // Generate ui_*.h from .ui files. Each step's output directory is added
    // as an include path so the compiler can find the generated headers.
    for (ui_files) |uif| {
        const cmd = b.addSystemCommand(&[_][]const u8{ uic_path, "-o" });
        const out_name = uiOutputName(uif);
        const out_lp = cmd.addOutputFileArg(out_name);
        cmd.addFileArg(lp(b, uif));
        const gen_file = switch (out_lp) {
            .generated => |g| g.file,
            else => unreachable,
        };
        mod.addIncludePath(.{ .generated = .{ .file = gen_file, .up = 1 } });
    }

    // ── Qt Toolchain: RCC ─────────────────────────────────────────────────
    {
        const cmd = b.addSystemCommand(&[_][]const u8{ rcc_path, "-o" });
        const out = cmd.addOutputFileArg("qrc_phoenixresources.cpp");
        cmd.addArg("-name");
        cmd.addArg("phoenixresources");
        cmd.addFileArg(lp(b, "phoenixresources.qrc"));
        mod.addCSourceFile(.{ .file = out, .flags = cxx_flags });
    }

    // ── Sources ───────────────────────────────────────────────────────────
    mod.addCSourceFiles(.{
        .root = lp(b, "."),
        .files = allocSources(b),
        .flags = cxx_flags,
    });

    // zlibdummy.c is a plain C file — cannot use -std=c++17
    mod.addCSourceFile(.{ .file = lp(b, "src/zlibdummy.c"), .flags = &.{} });

    // ── Library Linking ───────────────────────────────────────────────────
    const qt_libs = [_][]const u8{
        "Qt6Core",    "Qt6Gui",          "Qt6Widgets",    "Qt6Concurrent",
        "Qt6Network", "Qt6PrintSupport", "Qt6SerialPort", "Qt6Sql",
        "Qt6Svg",     "Qt6Xml",          "Qt6SvgWidgets", "Qt6OpenGLWidgets",
    };
    mod.addLibraryPath(lp(b, qt_lib_dir));
    for (qt_libs) |lib| mod.linkSystemLibrary(lib, .{});

    if (target_os == .linux or target_os == .macos) {
        mod.linkSystemLibrary("z", .{});
    }

    if (openssl_dir) |d| mod.addLibraryPath(lp(b, b.fmt("{s}/lib64", .{d})));
    mod.linkSystemLibrary("ssl", .{});
    mod.linkSystemLibrary("crypto", .{});

    if (libgit2_dir) |d| mod.addLibraryPath(lp(b, b.fmt("{s}/lib", .{d})));
    mod.linkSystemLibrary("git2", .{});

    if (quazip_dir) |d| {
        mod.addLibraryPath(lp(b, b.fmt("{s}/lib", .{d})));
        mod.linkSystemLibrary("quazip1-qt6", .{});
    }

    if (clipper_dir) |d| mod.addLibraryPath(lp(b, b.fmt("{s}/lib", .{d})));
    mod.linkSystemLibrary("polyclipping", .{});

    if (ngspice_dir) |d| mod.addLibraryPath(lp(b, b.fmt("{s}/lib", .{d})));

    if (target_os == .macos) {
        mod.linkFramework("CoreFoundation", .{});
        mod.linkFramework("Carbon", .{});
        mod.linkFramework("IOKit", .{});
        mod.linkSystemLibrary("iconv", .{});
    }

    // ── RPATH for shared libs (Linux) ─────────────────────────────────────
    if (target_os == .linux) {
        if (libgit2_dir) |d| mod.addRPath(lp(b, b.fmt("{s}/lib", .{d})));
        if (quazip_dir) |d| mod.addRPath(lp(b, b.fmt("{s}/lib", .{d})));
        if (clipper_dir) |d| mod.addRPath(lp(b, b.fmt("{s}/lib", .{d})));
        if (openssl_dir) |d| mod.addRPath(lp(b, b.fmt("{s}/lib64", .{d})));
    }

    // ── Install & Run ─────────────────────────────────────────────────────
    b.installArtifact(exe);

    const run_cmd = b.addRunArtifact(exe);
    if (b.args) |args| run_cmd.addArgs(args);
    const run_step = b.step("run", "Run Fritzing");
    run_step.dependOn(&run_cmd.step);
}
