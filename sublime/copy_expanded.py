import sublime
import sublime_plugin


class CopyExpandedCommand(sublime_plugin.TextCommand):
    def run(self, edit):
        self.view.run_command("expand_tabs")
        for region in self.view.sel():
            if region.empty():
                region = sublime.Region(0, self.view.size())
        sublime.set_clipboard(self.view.substr(region))
        self.view.end_edit(edit)
        self.view.run_command("undo")
        sublime.status_message("Copied tab-expanded text to clipboard!")
