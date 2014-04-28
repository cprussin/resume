# LaTeX Resume Class

## Description

This is a LaTeX document class intended for use when writing resumes.  It is
loosely based off parts of [the Resume class developed by
RPI](http://www.rpi.edu/dept/arc/training/latex/resumes/), but has been
rewritten from ground up.  To keep the class file minimal, only one style is
supported---please see [my resume](http://cprussin.net/resume.pdf) for an
example of the produced format.  The source of my resume is included in this
repository as an example.

## Usage

Instruct LaTeX to use the `resume` class in the preamble of your document:

```latex
\documentclass{resume}
```

### Letterhead

The letterhead provided by this document class prints the resume author's name,
a horizontal line, and two address sub-headers, one floated left and the other
floated right.  To put a letterhead in your document, use the `letterhead`
command.

```latex
\letterhead{<Name>}{<Address 1>}{<Address 2>}
```

### Sections

Each section will generate a small-caps header in the left margin.  Use
sections exactly as you would in any other LaTeX document:

```latex
\begin{section}{<Header>}
...
\end{section}
```

#### Experience

The `experience` macro produces a section with a header containing information
about the experience and a list of statements regarding the experience.  The
`experience` macro is used as follows:

```latex
\begin{experience}{<Job title>}{<Company>}{<Dates>}{<Location>}
	\item <Statement describing experience>
	...
\end{experience}
```

#### Projects

The `project` macro is similar to the `experience` macro, but it does not
expect a title or location.  Use the `project` macro as follows:

```latex
\begin{project}{<Project name>}{<Project sub-title>}{<Dates>}
	\item <Statement describing project>
	...
\end{project}
```

#### Activities

The `activity` macro lists activities, positions held, and dates.

```latex
\activity{<Activity title>}{<Positions held>}{<Dates>}
```

If no positions were held, use the macro as follows:

```latex
\activity{<Activity title>}{}{<Dates>}
```

Note the inner `{}`.

#### Awards / Honors

The `award` macro is similar to the `activity` macro, but does not include an
argument for officer position.

```latex
\award{<Award title>}{<Dates>}
```
