import sublime
import sublime_plugin


def semicolons(lispCode):
    splitted = lispCode.split("\n")
    longestLength = max([len(s) for s in splitted])
    semiLen = longestLength
    lenpluses = [longestLength - len(s) + 4 for s in splitted]
    t = zip(splitted, lenpluses)
    splitted = [(s + "{:>" + str(l) + "}").format(";") for s, l in t]
    return "\n".join(splitted)


class clispCommentBlock(sublime_plugin.TextCommand):
    def run(self, edit):
        print("CLisp")
        window = sublime.active_window()
        view = window.active_view()
        sel = view.sel()

        if sel and len(sel) == 1:
            region = sel[0]
            txt = view.substr(region)
            view.replace(edit, region, semicolons(txt))
