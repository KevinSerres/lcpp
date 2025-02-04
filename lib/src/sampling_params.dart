part of '../llama.dart';

class PArguments {
  double p;
  int minKeep;

  PArguments({
    required this.p,
    required this.minKeep
  });

  factory PArguments.fromMap(Map<String, dynamic> map) => PArguments(
    p: map['p'],
    minKeep: map['minKeep']
  );

  Map<String, dynamic> toMap() => {
    'p': p,
    'minKeep': minKeep
  };
}

class TemperatureArguments {
  double temperature;
  double? delta;
  double? exponent;

  TemperatureArguments({
    required this.temperature,
    this.delta,
    this.exponent
  });

  factory TemperatureArguments.fromMap(Map<String, dynamic> map) => TemperatureArguments(
    temperature: map['temperature'],
    delta: map['delta'],
    exponent: map['exponent']
  );

  Map<String, dynamic> toMap() => {
    'temperature': temperature,
    'delta': delta,
    'exponent': exponent
  };
}

class XtcArguments {
  double p;
  double t;
  int minKeep;
  int seed;

  XtcArguments({
    required this.p,
    required this.t,
    required this.minKeep,
    required this.seed
  });

  factory XtcArguments.fromMap(Map<String, dynamic> map) => XtcArguments(
    p: map['p'],
    t: map['t'],
    minKeep: map['minKeep'],
    seed: map['seed']
  );

  Map<String, dynamic> toMap() => {
    'p': p,
    't': t,
    'minKeep': minKeep,
    'seed': seed
  };
}

class MirostatArguments {
  int nVocab;
  int seed;
  double tau;
  double eta;
  int m;

  MirostatArguments({
    required this.nVocab,
    required this.seed,
    required this.tau,
    required this.eta,
    required this.m
  });

  factory MirostatArguments.fromMap(Map<String, dynamic> map) => MirostatArguments(
    nVocab: map['nVocab'],
    seed: map['seed'],
    tau: map['tau'],
    eta: map['eta'],
    m: map['m']
  );

  Map<String, dynamic> toMap() => {
    'nVocab': nVocab,
    'seed': seed,
    'tau': tau,
    'eta': eta,
    'm': m
  };
}

class MirostatV2Arguments {
  int seed;
  double tau;
  double eta;

  MirostatV2Arguments({
    required this.seed,
    required this.tau,
    required this.eta
  });

  factory MirostatV2Arguments.fromMap(Map<String, dynamic> map) => MirostatV2Arguments(
    seed: map['seed'],
    tau: map['tau'],
    eta: map['eta']
  );

  Map<String, dynamic> toMap() => {
    'seed': seed,
    'tau': tau,
    'eta': eta
  };
}

class GrammarArguments {
  String str;
  String root;

  GrammarArguments({
    required this.str,
    required this.root
  });

  factory GrammarArguments.fromMap(Map<String, dynamic> map) => GrammarArguments(
    str: map['str'],
    root: map['root']
  );

  Map<String, dynamic> toMap() => {
    'str': str,
    'root': root
  };
}

class PenaltiesArguments {
  int lastN;
  double repeat;
  double frequency;
  double present;

  PenaltiesArguments({
    required this.lastN,
    required this.repeat,
    required this.frequency,
    required this.present
  });

  factory PenaltiesArguments.fromMap(Map<String, dynamic> map) => PenaltiesArguments(
    lastN: map['lastN'],
    repeat: map['repeat'],
    frequency: map['frequency'],
    present: map['present']
  );

  Map<String, dynamic> toMap() => {
    'lastN': lastN,
    'repeat': repeat,
    'frequency': frequency,
    'present': present
  };
}

class DrySamplerArguments {
  int nCtxTrain;
  double multiplier;
  double dryBase;
  int allowedLength;
  int penaltyLastN;
  List<String> sequenceBreakers;

  DrySamplerArguments({
    required this.nCtxTrain,
    required this.multiplier,
    required this.dryBase,
    required this.allowedLength,
    required this.penaltyLastN,
    required this.sequenceBreakers
  });

  factory DrySamplerArguments.fromMap(Map<String, dynamic> map) => DrySamplerArguments(
    nCtxTrain: map['nCtxTrain'],
    multiplier: map['multiplier'],
    dryBase: map['dryBase'],
    allowedLength: map['allowedLength'],
    penaltyLastN: map['penaltyLastN'],
    sequenceBreakers: List<String>.from(map['sequenceBreakers'])
  );

  Map<String, dynamic> toMap() => {
    'nCtxTrain': nCtxTrain,
    'multiplier': multiplier,
    'dryBase': dryBase,
    'allowedLength': allowedLength,
    'penaltyLastN': penaltyLastN,
    'sequenceBreakers': sequenceBreakers
  };
}

class SamplingParams {
  bool greedy;
  bool infill;
  int? seed;
  int? topK;
  PArguments? topP;
  PArguments? minP;
  PArguments? typicalP;
  TemperatureArguments? temperature;
  XtcArguments? xtc;
  MirostatArguments? mirostat;
  MirostatV2Arguments? mirostatV2;
  GrammarArguments? grammar;
  PenaltiesArguments? penalties;
  DrySamplerArguments? drySampler;

  SamplingParams({
    this.greedy = false,
    this.infill = false,
    this.seed,
    this.topK,
    this.topP,
    this.minP,
    this.typicalP,
    this.temperature,
    this.xtc,
    this.mirostat,
    this.mirostatV2,
    this.grammar,
    this.penalties,
    this.drySampler
  });

  factory SamplingParams.fromMap(Map<String, dynamic> map) => SamplingParams(
    greedy: map['greedy'],
    infill: map['infill'],
    seed: map['seed'],
    topK: map['topK'],
    topP: map['topP'] != null ? PArguments.fromMap(map['topP']) : null,
    minP: map['minP'] != null ? PArguments.fromMap(map['minP']) : null,
    typicalP: map['typicalP'] != null ? PArguments.fromMap(map['typicalP']) : null,
    temperature: map['temperature'] != null ? TemperatureArguments.fromMap(map['temperature']) : null,
    xtc: map['xtc'] != null ? XtcArguments.fromMap(map['xtc']) : null,
    mirostat: map['mirostat'] != null ? MirostatArguments.fromMap(map['mirostat']) : null,
    mirostatV2: map['mirostatV2'] != null ? MirostatV2Arguments.fromMap(map['mirostatV2']) : null,
    grammar: map['grammar'] != null ? GrammarArguments.fromMap(map['grammar']) : null,
    penalties: map['penalties'] != null ? PenaltiesArguments.fromMap(map['penalties']) : null,
    drySampler: map['drySampler'] != null ? DrySamplerArguments.fromMap(map['drySampler']) : null
  );

  factory SamplingParams.fromJson(String source) => SamplingParams.fromMap(jsonDecode(source));

  ffi.Pointer<llama_sampler> toNative(ffi.Pointer<llama_vocab> vocab) {
    final sampler = LlamaCppNative.lib.llama_sampler_chain_init(LlamaCppNative.lib.llama_sampler_chain_default_params());

    if (greedy) {
      LlamaCppNative.lib.llama_sampler_chain_add(sampler, LlamaCppNative.lib.llama_sampler_init_greedy());
    }

    if (infill) {
      LlamaCppNative.lib.llama_sampler_chain_add(sampler, LlamaCppNative.lib.llama_sampler_init_infill(vocab));
    }

    if (seed != null) {
      LlamaCppNative.lib.llama_sampler_chain_add(sampler, LlamaCppNative.lib.llama_sampler_init_dist(seed!));
    }

    if (topK != null) {
      LlamaCppNative.lib.llama_sampler_chain_add(sampler, LlamaCppNative.lib.llama_sampler_init_top_k(topK!));
    }

    if (topP != null) {
      LlamaCppNative.lib.llama_sampler_chain_add(sampler, LlamaCppNative.lib.llama_sampler_init_top_p(topP!.p, topP!.minKeep));
    }

    if (minP != null) {
      LlamaCppNative.lib.llama_sampler_chain_add(sampler, LlamaCppNative.lib.llama_sampler_init_min_p(minP!.p, minP!.minKeep));
    }

    if (typicalP != null) {
      LlamaCppNative.lib.llama_sampler_chain_add(sampler, LlamaCppNative.lib.llama_sampler_init_typical(typicalP!.p, typicalP!.minKeep));
    }

    if (temperature != null) {
      if (temperature!.delta == null && temperature!.exponent == null) {
        LlamaCppNative.lib.llama_sampler_chain_add(
          sampler, 
          LlamaCppNative.lib.llama_sampler_init_temp(temperature!.temperature)
        );
      } 
      else {
        LlamaCppNative.lib.llama_sampler_chain_add(
          sampler, 
          LlamaCppNative.lib.llama_sampler_init_temp_ext(temperature!.temperature, temperature!.delta!, temperature!.exponent!)
        );
      }
    }

    if (xtc != null) {
      LlamaCppNative.lib.llama_sampler_chain_add(
        sampler, 
        LlamaCppNative.lib.llama_sampler_init_xtc(xtc!.p, xtc!.t, xtc!.minKeep, xtc!.seed)
      );
    }

    if (mirostat != null) {
      LlamaCppNative.lib.llama_sampler_chain_add(
        sampler, 
        LlamaCppNative.lib.llama_sampler_init_mirostat(mirostat!.nVocab, mirostat!.seed, mirostat!.tau, mirostat!.eta, mirostat!.m)
      );
    }

    if (mirostatV2 != null) {
      LlamaCppNative.lib.llama_sampler_chain_add(
        sampler, 
        LlamaCppNative.lib.llama_sampler_init_mirostat_v2(mirostatV2!.seed, mirostatV2!.tau, mirostatV2!.eta)
      );
    }

    if (grammar != null) {
      LlamaCppNative.lib.llama_sampler_chain_add(
        sampler, 
        LlamaCppNative.lib.llama_sampler_init_grammar(
          vocab, 
          grammar!.str.toNativeUtf8().cast<ffi.Char>(), 
          grammar!.root.toNativeUtf8().cast<ffi.Char>()
        )
      );
    }

    if (penalties != null) {
      LlamaCppNative.lib.llama_sampler_chain_add(
        sampler, 
        LlamaCppNative.lib.llama_sampler_init_penalties(
          penalties!.lastN, 
          penalties!.repeat, 
          penalties!.frequency, 
          penalties!.present
        )
      );
    }

    if (drySampler != null) {
      final sequenceBreakers = calloc<ffi.Pointer<ffi.Char>>(drySampler!.sequenceBreakers.length);
      for (var i = 0; i < drySampler!.sequenceBreakers.length; i++) {
        sequenceBreakers[i] = drySampler!.sequenceBreakers[i].toNativeUtf8().cast<ffi.Char>();
      }

      LlamaCppNative.lib.llama_sampler_chain_add(
        sampler, 
        LlamaCppNative.lib.llama_sampler_init_dry(
          vocab,
          drySampler!.nCtxTrain, 
          drySampler!.multiplier, 
          drySampler!.dryBase, 
          drySampler!.allowedLength, 
          drySampler!.penaltyLastN, 
          sequenceBreakers,
          drySampler!.sequenceBreakers.length
        )
      );
    }

    return sampler;
  }

  Map<String, dynamic> toMap() => {
    'greedy': greedy,
    'infill': infill,
    'seed': seed,
    'topK': topK,
    'topP': topP?.toMap(),
    'minP': minP?.toMap(),
    'typicalP': typicalP?.toMap(),
    'temperature': temperature?.toMap(),
    'xtc': xtc?.toMap(),
    'mirostat': mirostat?.toMap(),
    'mirostatV2': mirostatV2?.toMap(),
    'grammar': grammar?.toMap(),
    'penalties': penalties?.toMap(),
    'drySampler': drySampler?.toMap()
  };

  String toJson() => jsonEncode(toMap());
}