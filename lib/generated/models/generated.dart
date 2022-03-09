class Arguments {
  Arguments(this.origform, this.language, this.pos, this.posDomain,
      this.wantedParadigms);

  final String origform;
  final String language;
  final String pos;
  final String posDomain;
  final List<String> wantedParadigms;
}
