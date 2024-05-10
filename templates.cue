package templates

_sharedTemplates: [
	{
		template: "cookiecutter/homebrew-and-scoop/cookiecutter.json.j2"
		path:     "cookiecutter.json"
	},
	{
		template: "README/README.md.j2"
		path:     "{{ cookiecutter.project_slug }}/README.md"
	},
	{
		template: "gitignore/gitignore2.j2"
		path:     "{{ cookiecutter.project_slug }}/.gitignore"
	},
	{
		template: "go/go.mod.j2"
		path:     "{{ cookiecutter.project_slug }}/go.mod"
	},
	{
		template: "cookiecutter/hooks/post_gen_project.py"
		path:     "hooks/post_gen_project.py"
	},
]

dailycould: templates: _sharedTemplates + [
	{
		template: "go/Makefile.j2"
		path:     "{{ cookiecutter.project_slug }}/Makefile"
	},
	{
		template: "go/magefile.go.j2"
		path:     "{{ cookiecutter.project_slug }}/magefile.go"
	},
	{
		template: "go/goreleaser/goreleaser.yaml.j2"
		path:     "{{ cookiecutter.project_slug }}/.goreleaser.yaml"
	},
	{
		template: "go/version/version.go.j2"
		path:     "{{ cookiecutter.project_slug }}/version/version.go"
	},
]

allnew: templates: _sharedTemplates + [
	{
		template: "go/Makefile2.j2"
		path:     "{{ cookiecutter.project_slug }}/Makefile"
	},
	{
		template: "go/magefile2.go.j2"
		path:     "{{ cookiecutter.project_slug }}/magefile.go"
	},
	{
		template: "go/goreleaser/goreleaser2.yaml.j2"
		path:     "{{ cookiecutter.project_slug }}/.goreleaser.yaml"
	},
	{
		template: "go/version/version.go.j2"
		path:     "{{ cookiecutter.project_slug }}/version/version.go"
	},
]

itsvermont: templates: _sharedTemplates + [
	{
		template: "go/Makefile2.j2"
		path:     "{{ cookiecutter.project_slug }}/Makefile"
	},
	{
		template: "go/magefile2.go.j2"
		path:     "{{ cookiecutter.project_slug }}/magefile.go"
	},
	{
		template: "go/goreleaser/goreleaser.yaml.j2"
		path:     "{{ cookiecutter.project_slug }}/.goreleaser.yaml"
	},
	{
		template: "go/version/version.go.j2"
		path:     "{{ cookiecutter.project_slug }}/version/version.go"
	},
]

bluesorrow: templates: _sharedTemplates
