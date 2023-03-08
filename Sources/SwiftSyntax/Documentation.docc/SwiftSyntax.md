%{
  # -*- mode: Swift -*-
  from gyb_syntax_support import *
  from gyb_syntax_support.Traits import TRAITS
  NODE_MAP = create_node_map()
  # Ignore the following admonition it applies to the resulting .md file only
}%
# ``SwiftSyntax``

@Comment {
  Automatically Generated From SwiftSyntax.md.gyb.
  Do Not Edit Directly!
}

A library for working with Swift code.

## Overview

SwiftSyntax is a source accurate tree representation of Swift source code. It 
allows Swift tools to parse, inspect, generate, and transform Swift source code.

## Topics

### Articles

- <doc:Working-with-SwiftSyntax>
- <doc:ChangingSwiftSyntax>
- <doc:Create-SwiftSyntax-Release>

### Tutorials

- <doc:Tutorial-Table-of-Contents>

### Syntax

- <doc:SwiftSyntax/Syntax>
- <doc:SwiftSyntax/SyntaxCollection>

### Trivia

- <doc:SwiftSyntax/Trivia>
- <doc:SwiftSyntax/TriviaPiece>
- <doc:SwiftSyntax/TriviaPosition>

### Tokens

- <doc:SwiftSyntax/TokenSyntax>
- <doc:SwiftSyntax/TokenKind>
- <doc:SwiftSyntax/TokenSequence>
- <doc:SwiftSyntax/SourcePresence>

### Syntax Visitors

- <doc:SwiftSyntax/SyntaxVisitor>
- <doc:SwiftSyntax/SyntaxAnyVisitor>
- <doc:SwiftSyntax/SyntaxRewriter>
- <doc:SwiftSyntax/SyntaxTreeViewMode>
- <doc:SwiftSyntax/SyntaxVisitorContinueKind>
- <doc:SwiftSyntax/ReversedTokenSequence>

### Syntax Position

- <doc:SwiftSyntax/AbsolutePosition>
- <doc:SwiftSyntax/ByteSourceRange>
- <doc:SwiftSyntax/SourceLocation>
- <doc:SwiftSyntax/SourceLocationConverter>
- <doc:SwiftSyntax/SourceRange>
- <doc:SwiftSyntax/SourceLength>

### Incremental Parsing

- <doc:SwiftSyntax/IncrementalParseLookup>
- <doc:SwiftSyntax/IncrementalParseTransition>
- <doc:SwiftSyntax/IncrementalParseReusedNodeDelegate>
- <doc:SwiftSyntax/IncrementalParseReusedNodeCollector>
- <doc:SwiftSyntax/SourceEdit>
- <doc:SwiftSyntax/ConcurrentEdits>

### Internals

- <doc:SwiftSyntax/SyntaxProtocol>
- <doc:SwiftSyntax/SyntaxArena>
- <doc:SwiftSyntax/SyntaxEnum>
- <doc:SwiftSyntax/SyntaxHashable>
- <doc:SwiftSyntax/SyntaxIdentifier>
- <doc:SwiftSyntax/RawTokenKind>