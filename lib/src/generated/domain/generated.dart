class Arguments {
  Arguments(this.origform, this.language, this.pos, this.posDomain,
      this.wantedParadigms);

  final String language;
  final String origform;
  final String pos;
  final String posDomain;
  final List<String> wantedParadigms;
}
