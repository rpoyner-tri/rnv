; $Id$
; character classes and ranges

(define rx-ranges '(
  (U-IsBasicLatin . #((0x0000 . 0x007F)))
  (U-IsLatin-1Supplement #((0x0080 . 0x00FF)))
  (U-IsLatinExtended-A . #((0x0100 . 0x017F)))
  (U-IsLatinExtended-B . #((0x0180 . 0x024F)))
  (U-IsIPAExtensions . #((0x0250 . 0x02AF)))
  (U-IsSpacingModifierLetters . #((0x02B0 . 0x02FF)))
  (U-IsCombiningDiacriticalMarks . #((0x0300 . 0x036F)))
  (U-IsGreek . #((0x0370 . 0x03FF)))
  (U-IsCyrillic . #((0x0400 . 0x04FF)))
  (U-IsArmenian . #((0x0530 . 0x058F)))
  (U-IsHebrew . #((0x0590 . 0x05FF)))
  (U-IsArabic . #((0x0600 . 0x06FF)))
  (U-IsSyriac . #((0x0700 . 0x074F)))
  (U-IsThaana . #((0x0780 . 0x07BF)))
  (U-IsDevanagari . #((0x0900 . 0x097F)))
  (U-IsBengali . #((0x0980 . 0x09FF)))
  (U-IsGurmukhi . #((0x0A00 . 0x0A7F)))
  (U-IsGujarati . #((0x0A80 . 0x0AFF)))
  (U-IsOriya . #((0x0B00 . 0x0B7F)))
  (U-IsTamil . #((0x0B80 . 0x0BFF)))
  (U-IsTelugu . #((0x0C00 . 0x0C7F)))
  (U-IsKannada . #((0x0C80 . 0x0CFF)))
  (U-IsMalayalam . #((0x0D00 . 0x0D7F)))
  (U-IsSinhala . #((0x0D80 . 0x0DFF)))
  (U-IsThai . #((0x0E00 . 0x0E7F)))
  (U-IsLao . #((0x0E80 . 0x0EFF)))
  (U-IsTibetan . #((0x0F00 . 0x0FFF)))
  (U-IsMyanmar . #((0x1000 . 0x109F)))
  (U-IsGeorgian . #((0x10A0 . 0x10FF)))
  (U-IsHangulJamo . #((0x1100 . 0x11FF)))
  (U-IsEthiopic . #((0x1200 . 0x137F)))
  (U-IsCherokee . #((0x13A0 . 0x13FF)))
  (U-IsUnifiedCanadianAboriginalSyllabics . #((0x1400 . 0x167F)))
  (U-IsOgham . #((0x1680 . 0x169F)))
  (U-IsRunic . #((0x16A0 . 0x16FF)))
  (U-IsKhmer . #((0x1780 . 0x17FF)))
  (U-IsMongolian . #((0x1800 . 0x18AF)))
  (U-IsLatinExtendedAdditional . #((0x1E00 . 0x1EFF)))
  (U-IsGreekExtended . #((0x1F00 . 0x1FFF)))
  (U-IsGeneralPunctuation . #((0x2000 . 0x206F)))
  (U-IsSuperscriptsandSubscripts . #((0x2070 . 0x209F)))
  (U-IsCurrencySymbols . #((0x20A0 . 0x20CF)))
  (U-IsCombiningMarksforSymbols . #((0x20D0 . 0x20FF)))
  (U-IsLetterlikeSymbols . #((0x2100 . 0x214F)))
  (U-IsNumberForms . #((0x2150 . 0x218F)))
  (U-IsArrows . #((0x2190 . 0x21FF)))
  (U-IsMathematicalOperators . #((0x2200 . 0x22FF)))
  (U-IsMiscellaneousTechnical . #((0x2300 . 0x23FF)))
  (U-IsControlPictures . #((0x2400 . 0x243F)))
  (U-IsOpticalCharacterRecognition . #((0x2440 . 0x245F)))
  (U-IsEnclosedAlphanumerics . #((0x2460 . 0x24FF)))
  (U-IsBoxDrawing . #((0x2500 . 0x257F)))
  (U-IsBlockElements . #((0x2580 . 0x259F)))
  (U-IsGeometricShapes . #((0x25A0 . 0x25FF)))
  (U-IsMiscellaneousSymbols . #((0x2600 . 0x26FF)))
  (U-IsDingbats . #((0x2700 . 0x27BF)))
  (U-IsBraillePatterns . #((0x2800 . 0x28FF)))
  (U-IsCJKRadicalsSupplement . #((0x2E80 . 0x2EFF)))
  (U-IsKangxiRadicals . #((0x2F00 . 0x2FDF)))
  (U-IsIdeographicDescriptionCharacters . #((0x2FF0 . 0x2FFF)))
  (U-IsCJKSymbolsandPunctuation . #((0x3000 . 0x303F)))
  (U-IsHiragana . #((0x3040 . 0x309F)))
  (U-IsKatakana . #((0x30A0 . 0x30FF)))
  (U-IsBopomofo . #((0x3100 . 0x312F)))
  (U-IsHangulCompatibilityJamo . #((0x3130 . 0x318F)))
  (U-IsKanbun . #((0x3190 . 0x319F)))
  (U-IsBopomofoExtended . #((0x31A0 . 0x31BF)))
  (U-IsEnclosedCJKLettersandMonths . #((0x3200 . 0x32FF)))
  (U-IsCJKCompatibility . #((0x3300 . 0x33FF)))
  (U-IsCJKUnifiedIdeographsExtensionA . #((0x3400 . 0x4DB5)))
  (U-IsCJKUnifiedIdeographs . #((0x4E00 . 0x9FFF)))
  (U-IsYiSyllables . #((0xA000 . 0xA48F)))
  (U-IsYiRadicals . #((0xA490 . 0xA4CF)))
  (U-IsHangulSyllables . #((0xAC00 . 0xD7A3)))
  (U-IsCJKCompatibilityIdeographs . #((0xF900 . 0xFAFF)))
  (U-IsAlphabeticPresentationForms . #((0xFB00 . 0xFB4F)))
  (U-IsArabicPresentationForms-A . #((0xFB50 . 0xFDFF)))
  (U-IsCombiningHalfMarks . #((0xFE20 . 0xFE2F)))
  (U-IsCJKCompatibilityForms . #((0xFE30 . 0xFE4F)))
  (U-IsSmallFormVariants . #((0xFE50 . 0xFE6F)))
  (U-IsArabicPresentationForms-B . #((0xFE70 . 0xFEFE)))
  (U-IsSpecials . #((0xFEFF . 0xFEFF) (0xFFF0 . 0xFFFD)))
  (U-IsHalfwidthandFullwidthForms . #((0xFF00 . 0xFFEF)))
  (U-IsOldItalic . #((0x10300 . 0x1032F)))
  (U-IsGothic . #((0x10330 . 0x1034F)))
  (U-IsDeseret . #((0x10400 . 0x1044F)))
  (U-IsByzantineMusicalSymbols . #((0x1D000 . 0x1D0FF)))
  (U-IsMusicalSymbols . #((0x1D100 . 0x1D1FF)))
  (U-IsMathematicalAlphanumericSymbols . #((0x1D400 . 0x1D7FF)))
  (U-IsCJKUnifiedIdeographsExtensionB . #((0x20000 . 0x2A6D6)))
  (U-IsCJKCompatibilityIdeographsSupplement . #((0x2F800 . 0x2FA1F)))
  (U-IsTags . #((0xE0000 . 0xE007F)))
  (U-IsPrivateUse . #((0xE000 . 0xF8FF) (0xF0000 . 0xFFFFD) (0x100000 . 0x10FFFD)))

  (U-L)
  
  (U-Lu . #((0x41 . 0x5A) (0xC0 . 0xD6) (0xD8 . 0xDE) (0x100 . 0x100) (0x102 . 0x102)
  (0x104 . 0x104) (0x106 . 0x106) (0x108 . 0x108) (0x10A . 0x10A) (0x10C . 0x10C)
  (0x10E . 0x10E) (0x110 . 0x110) (0x112 . 0x112) (0x114 . 0x114) (0x116 . 0x116)
  (0x118 . 0x118) (0x11A . 0x11A) (0x11C . 0x11C) (0x11E . 0x11E) (0x120 . 0x120)
  (0x122 . 0x122) (0x124 . 0x124) (0x126 . 0x126) (0x128 . 0x128) (0x12A . 0x12A)
  (0x12C . 0x12C) (0x12E . 0x12E) (0x130 . 0x130) (0x132 . 0x132) (0x134 . 0x134)
  (0x136 . 0x136) (0x139 . 0x139) (0x13B . 0x13B) (0x13D . 0x13D) (0x13F . 0x13F)
  (0x141 . 0x141) (0x143 . 0x143) (0x145 . 0x145) (0x147 . 0x147) (0x14A . 0x14A)
  (0x14C . 0x14C) (0x14E . 0x14E) (0x150 . 0x150) (0x152 . 0x152) (0x154 . 0x154)
  (0x156 . 0x156) (0x158 . 0x158) (0x15A . 0x15A) (0x15C . 0x15C) (0x15E . 0x15E)
  (0x160 . 0x160) (0x162 . 0x162) (0x164 . 0x164) (0x166 . 0x166) (0x168 . 0x168)
  (0x16A . 0x16A) (0x16C . 0x16C) (0x16E . 0x16E) (0x170 . 0x170) (0x172 . 0x172)
  (0x174 . 0x174) (0x176 . 0x176) (0x178 . 0x179) (0x17B . 0x17B) (0x17D . 0x17D)
  (0x181 . 0x182) (0x184 . 0x184) (0x186 . 0x187) (0x189 . 0x18B) (0x18E . 0x191)
  (0x193 . 0x194) (0x196 . 0x198) (0x19C . 0x19D) (0x19F . 0x1A0) (0x1A2 . 0x1A2)
  (0x1A4 . 0x1A4) (0x1A6 . 0x1A7) (0x1A9 . 0x1A9) (0x1AC . 0x1AC) (0x1AE . 0x1AF)
  (0x1B1 . 0x1B3) (0x1B5 . 0x1B5) (0x1B7 . 0x1B8) (0x1BC . 0x1BC) (0x1C4 . 0x1C4)
  (0x1C7 . 0x1C7) (0x1CA . 0x1CA) (0x1CD . 0x1CD) (0x1CF . 0x1CF) (0x1D1 . 0x1D1)
  (0x1D3 . 0x1D3) (0x1D5 . 0x1D5) (0x1D7 . 0x1D7) (0x1D9 . 0x1D9) (0x1DB . 0x1DB)
  (0x1DE . 0x1DE) (0x1E0 . 0x1E0) (0x1E2 . 0x1E2) (0x1E4 . 0x1E4) (0x1E6 . 0x1E6)
  (0x1E8 . 0x1E8) (0x1EA . 0x1EA) (0x1EC . 0x1EC) (0x1EE . 0x1EE) (0x1F1 . 0x1F1)
  (0x1F4 . 0x1F4) (0x1F6 . 0x1F8) (0x1FA . 0x1FA) (0x1FC . 0x1FC) (0x1FE . 0x1FE)
  (0x200 . 0x200) (0x202 . 0x202) (0x204 . 0x204) (0x206 . 0x206) (0x208 . 0x208)
  (0x20A . 0x20A) (0x20C . 0x20C) (0x20E . 0x20E) (0x210 . 0x210) (0x212 . 0x212)
  (0x214 . 0x214) (0x216 . 0x216) (0x218 . 0x218) (0x21A . 0x21A) (0x21C . 0x21C)
  (0x21E . 0x21E) (0x222 . 0x222) (0x224 . 0x224) (0x226 . 0x226) (0x228 . 0x228)
  (0x22A . 0x22A) (0x22C . 0x22C) (0x22E . 0x22E) (0x230 . 0x230) (0x232 . 0x232)
  (0x386 . 0x386) (0x388 . 0x38A) (0x38C . 0x38C) (0x38E . 0x38F) (0x391 . 0x3A1)
  (0x3A3 . 0x3AB) (0x3D2 . 0x3D4) (0x3DA . 0x3DA) (0x3DC . 0x3DC) (0x3DE . 0x3DE)
  (0x3E0 . 0x3E0) (0x3E2 . 0x3E2) (0x3E4 . 0x3E4) (0x3E6 . 0x3E6) (0x3E8 . 0x3E8)
  (0x3EA . 0x3EA) (0x3EC . 0x3EC) (0x3EE . 0x3EE) (0x3F4 . 0x3F4) (0x400 . 0x42F)
  (0x460 . 0x460) (0x462 . 0x462) (0x464 . 0x464) (0x466 . 0x466) (0x468 . 0x468)
  (0x46A . 0x46A) (0x46C . 0x46C) (0x46E . 0x46E) (0x470 . 0x470) (0x472 . 0x472)
  (0x474 . 0x474) (0x476 . 0x476) (0x478 . 0x478) (0x47A . 0x47A) (0x47C . 0x47C)
  (0x47E . 0x47E) (0x480 . 0x480) (0x48C . 0x48C) (0x48E . 0x48E) (0x490 . 0x490)
  (0x492 . 0x492) (0x494 . 0x494) (0x496 . 0x496) (0x498 . 0x498) (0x49A . 0x49A)
  (0x49C . 0x49C) (0x49E . 0x49E) (0x4A0 . 0x4A0) (0x4A2 . 0x4A2) (0x4A4 . 0x4A4)
  (0x4A6 . 0x4A6) (0x4A8 . 0x4A8) (0x4AA . 0x4AA) (0x4AC . 0x4AC) (0x4AE . 0x4AE)
  (0x4B0 . 0x4B0) (0x4B2 . 0x4B2) (0x4B4 . 0x4B4) (0x4B6 . 0x4B6) (0x4B8 . 0x4B8)
  (0x4BA . 0x4BA) (0x4BC . 0x4BC) (0x4BE . 0x4BE) (0x4C0 . 0x4C1) (0x4C3 . 0x4C3)
  (0x4C7 . 0x4C7) (0x4CB . 0x4CB) (0x4D0 . 0x4D0) (0x4D2 . 0x4D2) (0x4D4 . 0x4D4)
  (0x4D6 . 0x4D6) (0x4D8 . 0x4D8) (0x4DA . 0x4DA) (0x4DC . 0x4DC) (0x4DE . 0x4DE)
  (0x4E0 . 0x4E0) (0x4E2 . 0x4E2) (0x4E4 . 0x4E4) (0x4E6 . 0x4E6) (0x4E8 . 0x4E8)
  (0x4EA . 0x4EA) (0x4EC . 0x4EC) (0x4EE . 0x4EE) (0x4F0 . 0x4F0) (0x4F2 . 0x4F2)
  (0x4F4 . 0x4F4) (0x4F8 . 0x4F8) (0x531 . 0x556) (0x10A0 . 0x10C5) (0x1E00 . 0x1E00)
  (0x1E02 . 0x1E02) (0x1E04 . 0x1E04) (0x1E06 . 0x1E06) (0x1E08 . 0x1E08)
  (0x1E0A . 0x1E0A) (0x1E0C . 0x1E0C) (0x1E0E . 0x1E0E) (0x1E10 . 0x1E10)
  (0x1E12 . 0x1E12) (0x1E14 . 0x1E14) (0x1E16 . 0x1E16) (0x1E18 . 0x1E18)
  (0x1E1A . 0x1E1A) (0x1E1C . 0x1E1C) (0x1E1E . 0x1E1E) (0x1E20 . 0x1E20)
  (0x1E22 . 0x1E22) (0x1E24 . 0x1E24) (0x1E26 . 0x1E26) (0x1E28 . 0x1E28)
  (0x1E2A . 0x1E2A) (0x1E2C . 0x1E2C) (0x1E2E . 0x1E2E) (0x1E30 . 0x1E30)
  (0x1E32 . 0x1E32) (0x1E34 . 0x1E34) (0x1E36 . 0x1E36) (0x1E38 . 0x1E38)
  (0x1E3A . 0x1E3A) (0x1E3C . 0x1E3C) (0x1E3E . 0x1E3E) (0x1E40 . 0x1E40)
  (0x1E42 . 0x1E42) (0x1E44 . 0x1E44) (0x1E46 . 0x1E46) (0x1E48 . 0x1E48)
  (0x1E4A . 0x1E4A) (0x1E4C . 0x1E4C) (0x1E4E . 0x1E4E) (0x1E50 . 0x1E50)
  (0x1E52 . 0x1E52) (0x1E54 . 0x1E54) (0x1E56 . 0x1E56) (0x1E58 . 0x1E58)
  (0x1E5A . 0x1E5A) (0x1E5C . 0x1E5C) (0x1E5E . 0x1E5E) (0x1E60 . 0x1E60)
  (0x1E62 . 0x1E62) (0x1E64 . 0x1E64) (0x1E66 . 0x1E66) (0x1E68 . 0x1E68)
  (0x1E6A . 0x1E6A) (0x1E6C . 0x1E6C) (0x1E6E . 0x1E6E) (0x1E70 . 0x1E70)
  (0x1E72 . 0x1E72) (0x1E74 . 0x1E74) (0x1E76 . 0x1E76) (0x1E78 . 0x1E78)
  (0x1E7A . 0x1E7A) (0x1E7C . 0x1E7C) (0x1E7E . 0x1E7E) (0x1E80 . 0x1E80)
  (0x1E82 . 0x1E82) (0x1E84 . 0x1E84) (0x1E86 . 0x1E86) (0x1E88 . 0x1E88)
  (0x1E8A . 0x1E8A) (0x1E8C . 0x1E8C) (0x1E8E . 0x1E8E) (0x1E90 . 0x1E90)
  (0x1E92 . 0x1E92) (0x1E94 . 0x1E94) (0x1EA0 . 0x1EA0) (0x1EA2 . 0x1EA2)
  (0x1EA4 . 0x1EA4) (0x1EA6 . 0x1EA6) (0x1EA8 . 0x1EA8) (0x1EAA . 0x1EAA)
  (0x1EAC . 0x1EAC) (0x1EAE . 0x1EAE) (0x1EB0 . 0x1EB0) (0x1EB2 . 0x1EB2)
  (0x1EB4 . 0x1EB4) (0x1EB6 . 0x1EB6) (0x1EB8 . 0x1EB8) (0x1EBA . 0x1EBA)
  (0x1EBC . 0x1EBC) (0x1EBE . 0x1EBE) (0x1EC0 . 0x1EC0) (0x1EC2 . 0x1EC2)
  (0x1EC4 . 0x1EC4) (0x1EC6 . 0x1EC6) (0x1EC8 . 0x1EC8) (0x1ECA . 0x1ECA)
  (0x1ECC . 0x1ECC) (0x1ECE . 0x1ECE) (0x1ED0 . 0x1ED0) (0x1ED2 . 0x1ED2)
  (0x1ED4 . 0x1ED4) (0x1ED6 . 0x1ED6) (0x1ED8 . 0x1ED8) (0x1EDA . 0x1EDA)
  (0x1EDC . 0x1EDC) (0x1EDE . 0x1EDE) (0x1EE0 . 0x1EE0) (0x1EE2 . 0x1EE2)
  (0x1EE4 . 0x1EE4) (0x1EE6 . 0x1EE6) (0x1EE8 . 0x1EE8) (0x1EEA . 0x1EEA)
  (0x1EEC . 0x1EEC) (0x1EEE . 0x1EEE) (0x1EF0 . 0x1EF0) (0x1EF2 . 0x1EF2)
  (0x1EF4 . 0x1EF4) (0x1EF6 . 0x1EF6) (0x1EF8 . 0x1EF8) (0x1F08 . 0x1F0F)
  (0x1F18 . 0x1F1D) (0x1F28 . 0x1F2F) (0x1F38 . 0x1F3F) (0x1F48 . 0x1F4D)
  (0x1F59 . 0x1F59) (0x1F5B . 0x1F5B) (0x1F5D . 0x1F5D) (0x1F5F . 0x1F5F)
  (0x1F68 . 0x1F6F) (0x1FB8 . 0x1FBB) (0x1FC8 . 0x1FCB) (0x1FD8 . 0x1FDB)
  (0x1FE8 . 0x1FEC) (0x1FF8 . 0x1FFB) (0x2102 . 0x2102) (0x2107 . 0x2107)
  (0x210B . 0x210D) (0x2110 . 0x2112) (0x2115 . 0x2115) (0x2119 . 0x211D)
  (0x2124 . 0x2124) (0x2126 . 0x2126) (0x2128 . 0x2128) (0x212A . 0x212D)
  (0x2130 . 0x2131) (0x2133 . 0x2133) (0xFF21 . 0xFF3A) (0x10400 . 0x10425)
  (0x1D400 . 0x1D419) (0x1D434 . 0x1D44D) (0x1D468 . 0x1D481) (0x1D49C . 0x1D49C)
  (0x1D49E . 0x1D49F) (0x1D4A2 . 0x1D4A2) (0x1D4A5 . 0x1D4A6) (0x1D4A9 . 0x1D4AC)
  (0x1D4AE . 0x1D4B5) (0x1D4D0 . 0x1D4E9) (0x1D504 . 0x1D505) (0x1D507 . 0x1D50A)
  (0x1D50D . 0x1D514) (0x1D516 . 0x1D51C) (0x1D538 . 0x1D539) (0x1D53B . 0x1D53E)
  (0x1D540 . 0x1D544) (0x1D546 . 0x1D546) (0x1D54A . 0x1D550) (0x1D56C . 0x1D585)
  (0x1D5A0 . 0x1D5B9) (0x1D5D4 . 0x1D5ED) (0x1D608 . 0x1D621) (0x1D63C . 0x1D655)
  (0x1D670 . 0x1D689) (0x1D6A8 . 0x1D6C0) (0x1D6E2 . 0x1D6FA) (0x1D71C . 0x1D734)
  (0x1D756 . 0x1D76E) (0x1D790 . 0x1D7A8)))

  (U-Ll . #((0x61 . 0x7A) (0xAA . 0xAA) (0xB5 . 0xB5) (0xBA . 0xBA) (0xDF . 0xF6)
  (0xF8 . 0xFF) (0x101 . 0x101) (0x103 . 0x103) (0x105 . 0x105) (0x107 . 0x107)
  (0x109 . 0x109) (0x10B . 0x10B) (0x10D . 0x10D) (0x10F . 0x10F) (0x111 . 0x111)
  (0x113 . 0x113) (0x115 . 0x115) (0x117 . 0x117) (0x119 . 0x119) (0x11B . 0x11B)
  (0x11D . 0x11D) (0x11F . 0x11F) (0x121 . 0x121) (0x123 . 0x123) (0x125 . 0x125)
  (0x127 . 0x127) (0x129 . 0x129) (0x12B . 0x12B) (0x12D . 0x12D) (0x12F . 0x12F)
  (0x131 . 0x131) (0x133 . 0x133) (0x135 . 0x135) (0x137 . 0x138) (0x13A . 0x13A)
  (0x13C . 0x13C) (0x13E . 0x13E) (0x140 . 0x140) (0x142 . 0x142) (0x144 . 0x144)
  (0x146 . 0x146) (0x148 . 0x149) (0x14B . 0x14B) (0x14D . 0x14D) (0x14F . 0x14F)
  (0x151 . 0x151) (0x153 . 0x153) (0x155 . 0x155) (0x157 . 0x157) (0x159 . 0x159)
  (0x15B . 0x15B) (0x15D . 0x15D) (0x15F . 0x15F) (0x161 . 0x161) (0x163 . 0x163)
  (0x165 . 0x165) (0x167 . 0x167) (0x169 . 0x169) (0x16B . 0x16B) (0x16D . 0x16D)
  (0x16F . 0x16F) (0x171 . 0x171) (0x173 . 0x173) (0x175 . 0x175) (0x177 . 0x177)
  (0x17A . 0x17A) (0x17C . 0x17C) (0x17E . 0x180) (0x183 . 0x183) (0x185 . 0x185)
  (0x188 . 0x188) (0x18C . 0x18D) (0x192 . 0x192) (0x195 . 0x195) (0x199 . 0x19B)
  (0x19E . 0x19E) (0x1A1 . 0x1A1) (0x1A3 . 0x1A3) (0x1A5 . 0x1A5) (0x1A8 . 0x1A8)
  (0x1AA . 0x1AB) (0x1AD . 0x1AD) (0x1B0 . 0x1B0) (0x1B4 . 0x1B4) (0x1B6 . 0x1B6)
  (0x1B9 . 0x1BA) (0x1BD . 0x1BF) (0x1C6 . 0x1C6) (0x1C9 . 0x1C9) (0x1CC . 0x1CC)
  (0x1CE . 0x1CE) (0x1D0 . 0x1D0) (0x1D2 . 0x1D2) (0x1D4 . 0x1D4) (0x1D6 . 0x1D6)
  (0x1D8 . 0x1D8) (0x1DA . 0x1DA) (0x1DC . 0x1DD) (0x1DF . 0x1DF) (0x1E1 . 0x1E1)
  (0x1E3 . 0x1E3) (0x1E5 . 0x1E5) (0x1E7 . 0x1E7) (0x1E9 . 0x1E9) (0x1EB . 0x1EB)
  (0x1ED . 0x1ED) (0x1EF . 0x1F0) (0x1F3 . 0x1F3) (0x1F5 . 0x1F5) (0x1F9 . 0x1F9)
  (0x1FB . 0x1FB) (0x1FD . 0x1FD) (0x1FF . 0x1FF) (0x201 . 0x201) (0x203 . 0x203)
  (0x205 . 0x205) (0x207 . 0x207) (0x209 . 0x209) (0x20B . 0x20B) (0x20D . 0x20D)
  (0x20F . 0x20F) (0x211 . 0x211) (0x213 . 0x213) (0x215 . 0x215) (0x217 . 0x217)
  (0x219 . 0x219) (0x21B . 0x21B) (0x21D . 0x21D) (0x21F . 0x21F) (0x223 . 0x223)
  (0x225 . 0x225) (0x227 . 0x227) (0x229 . 0x229) (0x22B . 0x22B) (0x22D . 0x22D)
  (0x22F . 0x22F) (0x231 . 0x231) (0x233 . 0x233) (0x250 . 0x2AD) (0x390 . 0x390)
  (0x3AC . 0x3CE) (0x3D0 . 0x3D1) (0x3D5 . 0x3D7) (0x3DB . 0x3DB) (0x3DD . 0x3DD)
  (0x3DF . 0x3DF) (0x3E1 . 0x3E1) (0x3E3 . 0x3E3) (0x3E5 . 0x3E5) (0x3E7 . 0x3E7)
  (0x3E9 . 0x3E9) (0x3EB . 0x3EB) (0x3ED . 0x3ED) (0x3EF . 0x3F3) (0x3F5 . 0x3F5)
  (0x430 . 0x45F) (0x461 . 0x461) (0x463 . 0x463) (0x465 . 0x465) (0x467 . 0x467)
  (0x469 . 0x469) (0x46B . 0x46B) (0x46D . 0x46D) (0x46F . 0x46F) (0x471 . 0x471)
  (0x473 . 0x473) (0x475 . 0x475) (0x477 . 0x477) (0x479 . 0x479) (0x47B . 0x47B)
  (0x47D . 0x47D) (0x47F . 0x47F) (0x481 . 0x481) (0x48D . 0x48D) (0x48F . 0x48F)
  (0x491 . 0x491) (0x493 . 0x493) (0x495 . 0x495) (0x497 . 0x497) (0x499 . 0x499)
  (0x49B . 0x49B) (0x49D . 0x49D) (0x49F . 0x49F) (0x4A1 . 0x4A1) (0x4A3 . 0x4A3)
  (0x4A5 . 0x4A5) (0x4A7 . 0x4A7) (0x4A9 . 0x4A9) (0x4AB . 0x4AB) (0x4AD . 0x4AD)
  (0x4AF . 0x4AF) (0x4B1 . 0x4B1) (0x4B3 . 0x4B3) (0x4B5 . 0x4B5) (0x4B7 . 0x4B7)
  (0x4B9 . 0x4B9) (0x4BB . 0x4BB) (0x4BD . 0x4BD) (0x4BF . 0x4BF) (0x4C2 . 0x4C2)
  (0x4C4 . 0x4C4) (0x4C8 . 0x4C8) (0x4CC . 0x4CC) (0x4D1 . 0x4D1) (0x4D3 . 0x4D3)
  (0x4D5 . 0x4D5) (0x4D7 . 0x4D7) (0x4D9 . 0x4D9) (0x4DB . 0x4DB) (0x4DD . 0x4DD)
  (0x4DF . 0x4DF) (0x4E1 . 0x4E1) (0x4E3 . 0x4E3) (0x4E5 . 0x4E5) (0x4E7 . 0x4E7)
  (0x4E9 . 0x4E9) (0x4EB . 0x4EB) (0x4ED . 0x4ED) (0x4EF . 0x4EF) (0x4F1 . 0x4F1)
  (0x4F3 . 0x4F3) (0x4F5 . 0x4F5) (0x4F9 . 0x4F9) (0x561 . 0x587) (0x1E01 . 0x1E01)
  (0x1E03 . 0x1E03) (0x1E05 . 0x1E05) (0x1E07 . 0x1E07) (0x1E09 . 0x1E09)
  (0x1E0B . 0x1E0B) (0x1E0D . 0x1E0D) (0x1E0F . 0x1E0F) (0x1E11 . 0x1E11)
  (0x1E13 . 0x1E13) (0x1E15 . 0x1E15) (0x1E17 . 0x1E17) (0x1E19 . 0x1E19)
  (0x1E1B . 0x1E1B) (0x1E1D . 0x1E1D) (0x1E1F . 0x1E1F) (0x1E21 . 0x1E21)
  (0x1E23 . 0x1E23) (0x1E25 . 0x1E25) (0x1E27 . 0x1E27) (0x1E29 . 0x1E29)
  (0x1E2B . 0x1E2B) (0x1E2D . 0x1E2D) (0x1E2F . 0x1E2F) (0x1E31 . 0x1E31)
  (0x1E33 . 0x1E33) (0x1E35 . 0x1E35) (0x1E37 . 0x1E37) (0x1E39 . 0x1E39)
  (0x1E3B . 0x1E3B) (0x1E3D . 0x1E3D) (0x1E3F . 0x1E3F) (0x1E41 . 0x1E41)
  (0x1E43 . 0x1E43) (0x1E45 . 0x1E45) (0x1E47 . 0x1E47) (0x1E49 . 0x1E49)
  (0x1E4B . 0x1E4B) (0x1E4D . 0x1E4D) (0x1E4F . 0x1E4F) (0x1E51 . 0x1E51)
  (0x1E53 . 0x1E53) (0x1E55 . 0x1E55) (0x1E57 . 0x1E57) (0x1E59 . 0x1E59)
  (0x1E5B . 0x1E5B) (0x1E5D . 0x1E5D) (0x1E5F . 0x1E5F) (0x1E61 . 0x1E61)
  (0x1E63 . 0x1E63) (0x1E65 . 0x1E65) (0x1E67 . 0x1E67) (0x1E69 . 0x1E69)
  (0x1E6B . 0x1E6B) (0x1E6D . 0x1E6D) (0x1E6F . 0x1E6F) (0x1E71 . 0x1E71)
  (0x1E73 . 0x1E73) (0x1E75 . 0x1E75) (0x1E77 . 0x1E77) (0x1E79 . 0x1E79)
  (0x1E7B . 0x1E7B) (0x1E7D . 0x1E7D) (0x1E7F . 0x1E7F) (0x1E81 . 0x1E81)
  (0x1E83 . 0x1E83) (0x1E85 . 0x1E85) (0x1E87 . 0x1E87) (0x1E89 . 0x1E89)
  (0x1E8B . 0x1E8B) (0x1E8D . 0x1E8D) (0x1E8F . 0x1E8F) (0x1E91 . 0x1E91)
  (0x1E93 . 0x1E93) (0x1E95 . 0x1E9B) (0x1EA1 . 0x1EA1) (0x1EA3 . 0x1EA3)
  (0x1EA5 . 0x1EA5) (0x1EA7 . 0x1EA7) (0x1EA9 . 0x1EA9) (0x1EAB . 0x1EAB)
  (0x1EAD . 0x1EAD) (0x1EAF . 0x1EAF) (0x1EB1 . 0x1EB1) (0x1EB3 . 0x1EB3)
  (0x1EB5 . 0x1EB5) (0x1EB7 . 0x1EB7) (0x1EB9 . 0x1EB9) (0x1EBB . 0x1EBB)
  (0x1EBD . 0x1EBD) (0x1EBF . 0x1EBF) (0x1EC1 . 0x1EC1) (0x1EC3 . 0x1EC3)
  (0x1EC5 . 0x1EC5) (0x1EC7 . 0x1EC7) (0x1EC9 . 0x1EC9) (0x1ECB . 0x1ECB)
  (0x1ECD . 0x1ECD) (0x1ECF . 0x1ECF) (0x1ED1 . 0x1ED1) (0x1ED3 . 0x1ED3)
  (0x1ED5 . 0x1ED5) (0x1ED7 . 0x1ED7) (0x1ED9 . 0x1ED9) (0x1EDB . 0x1EDB)
  (0x1EDD . 0x1EDD) (0x1EDF . 0x1EDF) (0x1EE1 . 0x1EE1) (0x1EE3 . 0x1EE3)
  (0x1EE5 . 0x1EE5) (0x1EE7 . 0x1EE7) (0x1EE9 . 0x1EE9) (0x1EEB . 0x1EEB)
  (0x1EED . 0x1EED) (0x1EEF . 0x1EEF) (0x1EF1 . 0x1EF1) (0x1EF3 . 0x1EF3)
  (0x1EF5 . 0x1EF5) (0x1EF7 . 0x1EF7) (0x1EF9 . 0x1EF9) (0x1F00 . 0x1F07)
  (0x1F10 . 0x1F15) (0x1F20 . 0x1F27) (0x1F30 . 0x1F37) (0x1F40 . 0x1F45)
  (0x1F50 . 0x1F57) (0x1F60 . 0x1F67) (0x1F70 . 0x1F7D) (0x1F80 . 0x1F87)
  (0x1F90 . 0x1F97) (0x1FA0 . 0x1FA7) (0x1FB0 . 0x1FB4) (0x1FB6 . 0x1FB7)
  (0x1FBE . 0x1FBE) (0x1FC2 . 0x1FC4) (0x1FC6 . 0x1FC7) (0x1FD0 . 0x1FD3)
  (0x1FD6 . 0x1FD7) (0x1FE0 . 0x1FE7) (0x1FF2 . 0x1FF4) (0x1FF6 . 0x1FF7)
  (0x207F . 0x207F) (0x210A . 0x210A) (0x210E . 0x210F) (0x2113 . 0x2113)
  (0x212F . 0x212F) (0x2134 . 0x2134) (0x2139 . 0x2139) (0xFB00 . 0xFB06)
  (0xFB13 . 0xFB17) (0xFF41 . 0xFF5A) (0x10428 . 0x1044D) (0x1D41A . 0x1D433)
  (0x1D44E . 0x1D454) (0x1D456 . 0x1D467) (0x1D482 . 0x1D49B) (0x1D4B6 . 0x1D4B9)
  (0x1D4BB . 0x1D4BB) (0x1D4BD . 0x1D4C0) (0x1D4C2 . 0x1D4C3) (0x1D4C5 . 0x1D4CF)
  (0x1D4EA . 0x1D503) (0x1D51E . 0x1D537) (0x1D552 . 0x1D56B) (0x1D586 . 0x1D59F)
  (0x1D5BA . 0x1D5D3) (0x1D5EE . 0x1D607) (0x1D622 . 0x1D63B) (0x1D656 . 0x1D66F)
  (0x1D68A . 0x1D6A3) (0x1D6C2 . 0x1D6DA) (0x1D6DC . 0x1D6E1) (0x1D6FC . 0x1D714)
  (0x1D716 . 0x1D71B) (0x1D736 . 0x1D74E) (0x1D750 . 0x1D755) (0x1D770 . 0x1D788)
  (0x1D78A . 0x1D78F) (0x1D7AA . 0x1D7C2) (0x1D7C4 . 0x1D7C9)))

  (U-Lt . #((0x1C5 . 0x1C5) (0x1C8 . 0x1C8) (0x1CB . 0x1CB) (0x1F2 . 0x1F2)
  (0x1F88 . 0x1F8F) (0x1F98 . 0x1F9F) (0x1FA8 . 0x1FAF) (0x1FBC . 0x1FBC)
  (0x1FCC . 0x1FCC) (0x1FFC . 0x1FFC)))

  (U-Lm . #((0x2B0 . 0x2B8) (0x2BB . 0x2C1) (0x2D0 . 0x2D1) (0x2E0 . 0x2E4)
  (0x2EE . 0x2EE) (0x37A . 0x37A) (0x559 . 0x559) (0x640 . 0x640) (0x6E5 . 0x6E6)
  (0xE46 . 0xE46) (0xEC6 . 0xEC6) (0x1843 . 0x1843) (0x3005 . 0x3005)
  (0x3031 . 0x3035) (0x309D . 0x309E) (0x30FC . 0x30FE) (0xFF70 . 0xFF70)
  (0xFF9E . 0xFF9F)))

  (U-Lo . #((0x1BB . 0x1BB) (0x1C0 . 0x1C3) (0x5D0 . 0x5EA) (0x5F0 . 0x5F2)
  (0x621 . 0x63A) (0x641 . 0x64A) (0x671 . 0x6D3) (0x6D5 . 0x6D5) (0x6FA . 0x6FC)
  (0x710 . 0x710) (0x712 . 0x72C) (0x780 . 0x7A5) (0x905 . 0x939) (0x93D . 0x93D)
  (0x950 . 0x950) (0x958 . 0x961) (0x985 . 0x98C) (0x98F . 0x990) (0x993 . 0x9A8)
  (0x9AA . 0x9B0) (0x9B2 . 0x9B2) (0x9B6 . 0x9B9) (0x9DC . 0x9DD) (0x9DF . 0x9E1)
  (0x9F0 . 0x9F1) (0xA05 . 0xA0A) (0xA0F . 0xA10) (0xA13 . 0xA28) (0xA2A . 0xA30)
  (0xA32 . 0xA33) (0xA35 . 0xA36) (0xA38 . 0xA39) (0xA59 . 0xA5C) (0xA5E . 0xA5E)
  (0xA72 . 0xA74) (0xA85 . 0xA8B) (0xA8D . 0xA8D) (0xA8F . 0xA91) (0xA93 . 0xAA8)
  (0xAAA . 0xAB0) (0xAB2 . 0xAB3) (0xAB5 . 0xAB9) (0xABD . 0xABD) (0xAD0 . 0xAD0)
  (0xAE0 . 0xAE0) (0xB05 . 0xB0C) (0xB0F . 0xB10) (0xB13 . 0xB28) (0xB2A . 0xB30)
  (0xB32 . 0xB33) (0xB36 . 0xB39) (0xB3D . 0xB3D) (0xB5C . 0xB5D) (0xB5F . 0xB61)
  (0xB85 . 0xB8A) (0xB8E . 0xB90) (0xB92 . 0xB95) (0xB99 . 0xB9A) (0xB9C . 0xB9C)
  (0xB9E . 0xB9F) (0xBA3 . 0xBA4) (0xBA8 . 0xBAA) (0xBAE . 0xBB5) (0xBB7 . 0xBB9)
  (0xC05 . 0xC0C) (0xC0E . 0xC10) (0xC12 . 0xC28) (0xC2A . 0xC33) (0xC35 . 0xC39)
  (0xC60 . 0xC61) (0xC85 . 0xC8C) (0xC8E . 0xC90) (0xC92 . 0xCA8) (0xCAA . 0xCB3)
  (0xCB5 . 0xCB9) (0xCDE . 0xCDE) (0xCE0 . 0xCE1) (0xD05 . 0xD0C) (0xD0E . 0xD10)
  (0xD12 . 0xD28) (0xD2A . 0xD39) (0xD60 . 0xD61) (0xD85 . 0xD96) (0xD9A . 0xDB1)
  (0xDB3 . 0xDBB) (0xDBD . 0xDBD) (0xDC0 . 0xDC6) (0xE01 . 0xE30) (0xE32 . 0xE33)
  (0xE40 . 0xE45) (0xE81 . 0xE82) (0xE84 . 0xE84) (0xE87 . 0xE88) (0xE8A . 0xE8A)
  (0xE8D . 0xE8D) (0xE94 . 0xE97) (0xE99 . 0xE9F) (0xEA1 . 0xEA3) (0xEA5 . 0xEA5)
  (0xEA7 . 0xEA7) (0xEAA . 0xEAB) (0xEAD . 0xEB0) (0xEB2 . 0xEB3) (0xEBD . 0xEBD)
  (0xEC0 . 0xEC4) (0xEDC . 0xEDD) (0xF00 . 0xF00) (0xF40 . 0xF47) (0xF49 . 0xF6A)
  (0xF88 . 0xF8B) (0x1000 . 0x1021) (0x1023 . 0x1027) (0x1029 . 0x102A)
  (0x1050 . 0x1055) (0x10D0 . 0x10F6) (0x1100 . 0x1159) (0x115F . 0x11A2)
  (0x11A8 . 0x11F9) (0x1200 . 0x1206) (0x1208 . 0x1246) (0x1248 . 0x1248)
  (0x124A . 0x124D) (0x1250 . 0x1256) (0x1258 . 0x1258) (0x125A . 0x125D)
  (0x1260 . 0x1286) (0x1288 . 0x1288) (0x128A . 0x128D) (0x1290 . 0x12AE)
  (0x12B0 . 0x12B0) (0x12B2 . 0x12B5) (0x12B8 . 0x12BE) (0x12C0 . 0x12C0)
  (0x12C2 . 0x12C5) (0x12C8 . 0x12CE) (0x12D0 . 0x12D6) (0x12D8 . 0x12EE)
  (0x12F0 . 0x130E) (0x1310 . 0x1310) (0x1312 . 0x1315) (0x1318 . 0x131E)
  (0x1320 . 0x1346) (0x1348 . 0x135A) (0x13A0 . 0x13F4) (0x1401 . 0x166C)
  (0x166F . 0x1676) (0x1681 . 0x169A) (0x16A0 . 0x16EA) (0x1780 . 0x17B3)
  (0x1820 . 0x1842) (0x1844 . 0x1877) (0x1880 . 0x18A8) (0x2135 . 0x2138)
  (0x3006 . 0x3006) (0x3041 . 0x3094) (0x30A1 . 0x30FA) (0x3105 . 0x312C)
  (0x3131 . 0x318E) (0x31A0 . 0x31B7) (0x3400 . 0x4DB5) (0x4E00 . 0x9FA5)
  (0xA000 . 0xA48C) (0xAC00 . 0xD7A3) (0xF900 . 0xFA2D) (0xFB1D . 0xFB1D)
  (0xFB1F . 0xFB28) (0xFB2A . 0xFB36) (0xFB38 . 0xFB3C) (0xFB3E . 0xFB3E)
  (0xFB40 . 0xFB41) (0xFB43 . 0xFB44) (0xFB46 . 0xFBB1) (0xFBD3 . 0xFD3D)
  (0xFD50 . 0xFD8F) (0xFD92 . 0xFDC7) (0xFDF0 . 0xFDFB) (0xFE70 . 0xFE72)
  (0xFE74 . 0xFE74) (0xFE76 . 0xFEFC) (0xFF66 . 0xFF6F) (0xFF71 . 0xFF9D)
  (0xFFA0 . 0xFFBE) (0xFFC2 . 0xFFC7) (0xFFCA . 0xFFCF) (0xFFD2 . 0xFFD7)
  (0xFFDA . 0xFFDC) (0x10300 . 0x1031E) (0x10330 . 0x10349) (0x20000 . 0x2A6D6)
  (0x2F800 . 0x2FA1D)))

  (U-M)
  
  (U-Mn . #((0x300 . 0x34E) (0x360 . 0x362) (0x483 . 0x486) (0x591 . 0x5A1)
  (0x5A3 . 0x5B9) (0x5BB . 0x5BD) (0x5BF . 0x5BF) (0x5C1 . 0x5C2) (0x5C4 . 0x5C4)
  (0x64B . 0x655) (0x670 . 0x670) (0x6D6 . 0x6DC) (0x6DF . 0x6E4) (0x6E7 . 0x6E8)
  (0x6EA . 0x6ED) (0x711 . 0x711) (0x730 . 0x74A) (0x7A6 . 0x7B0) (0x901 . 0x902)
  (0x93C . 0x93C) (0x941 . 0x948) (0x94D . 0x94D) (0x951 . 0x954) (0x962 . 0x963)
  (0x981 . 0x981) (0x9BC . 0x9BC) (0x9C1 . 0x9C4) (0x9CD . 0x9CD) (0x9E2 . 0x9E3)
  (0xA02 . 0xA02) (0xA3C . 0xA3C) (0xA41 . 0xA42) (0xA47 . 0xA48) (0xA4B . 0xA4D)
  (0xA70 . 0xA71) (0xA81 . 0xA82) (0xABC . 0xABC) (0xAC1 . 0xAC5) (0xAC7 . 0xAC8)
  (0xACD . 0xACD) (0xB01 . 0xB01) (0xB3C . 0xB3C) (0xB3F . 0xB3F) (0xB41 . 0xB43)
  (0xB4D . 0xB4D) (0xB56 . 0xB56) (0xB82 . 0xB82) (0xBC0 . 0xBC0) (0xBCD . 0xBCD)
  (0xC3E . 0xC40) (0xC46 . 0xC48) (0xC4A . 0xC4D) (0xC55 . 0xC56) (0xCBF . 0xCBF)
  (0xCC6 . 0xCC6) (0xCCC . 0xCCD) (0xD41 . 0xD43) (0xD4D . 0xD4D) (0xDCA . 0xDCA)
  (0xDD2 . 0xDD4) (0xDD6 . 0xDD6) (0xE31 . 0xE31) (0xE34 . 0xE3A) (0xE47 . 0xE4E)
  (0xEB1 . 0xEB1) (0xEB4 . 0xEB9) (0xEBB . 0xEBC) (0xEC8 . 0xECD) (0xF18 . 0xF19)
  (0xF35 . 0xF35) (0xF37 . 0xF37) (0xF39 . 0xF39) (0xF71 . 0xF7E) (0xF80 . 0xF84)
  (0xF86 . 0xF87) (0xF90 . 0xF97) (0xF99 . 0xFBC) (0xFC6 . 0xFC6) (0x102D . 0x1030)
  (0x1032 . 0x1032) (0x1036 . 0x1037) (0x1039 . 0x1039) (0x1058 . 0x1059)
  (0x17B7 . 0x17BD) (0x17C6 . 0x17C6) (0x17C9 . 0x17D3) (0x18A9 . 0x18A9)
  (0x20D0 . 0x20DC) (0x20E1 . 0x20E1) (0x302A . 0x302F) (0x3099 . 0x309A)
  (0xFB1E . 0xFB1E) (0xFE20 . 0xFE23) (0x1D167 . 0x1D169) (0x1D17B . 0x1D182)
  (0x1D185 . 0x1D18B) (0x1D1AA . 0x1D1AD)))

  (U-Mc . #((0x903 . 0x903) (0x93E . 0x940) (0x949 . 0x94C) (0x982 . 0x983)
  (0x9BE . 0x9C0) (0x9C7 . 0x9C8) (0x9CB . 0x9CC) (0x9D7 . 0x9D7) (0xA3E . 0xA40)
  (0xA83 . 0xA83) (0xABE . 0xAC0) (0xAC9 . 0xAC9) (0xACB . 0xACC) (0xB02 . 0xB03)
  (0xB3E . 0xB3E) (0xB40 . 0xB40) (0xB47 . 0xB48) (0xB4B . 0xB4C) (0xB57 . 0xB57)
  (0xB83 . 0xB83) (0xBBE . 0xBBF) (0xBC1 . 0xBC2) (0xBC6 . 0xBC8) (0xBCA . 0xBCC)
  (0xBD7 . 0xBD7) (0xC01 . 0xC03) (0xC41 . 0xC44) (0xC82 . 0xC83) (0xCBE . 0xCBE)
  (0xCC0 . 0xCC4) (0xCC7 . 0xCC8) (0xCCA . 0xCCB) (0xCD5 . 0xCD6) (0xD02 . 0xD03)
  (0xD3E . 0xD40) (0xD46 . 0xD48) (0xD4A . 0xD4C) (0xD57 . 0xD57) (0xD82 . 0xD83)
  (0xDCF . 0xDD1) (0xDD8 . 0xDDF) (0xDF2 . 0xDF3) (0xF3E . 0xF3F) (0xF7F . 0xF7F)
  (0x102C . 0x102C) (0x1031 . 0x1031) (0x1038 . 0x1038) (0x1056 . 0x1057)
  (0x17B4 . 0x17B6) (0x17BE . 0x17C5) (0x17C7 . 0x17C8) (0x1D165 . 0x1D166)
  (0x1D16D . 0x1D172)))

  (U-Me . #((0x488 . 0x489) (0x6DD . 0x6DE) (0x20DD . 0x20E0) (0x20E2 . 0x20E3)))

  (U-N)
  
  (U-Nd . #((0x30 . 0x39) (0x660 . 0x669) (0x6F0 . 0x6F9) (0x966 . 0x96F)
  (0x9E6 . 0x9EF) (0xA66 . 0xA6F) (0xAE6 . 0xAEF) (0xB66 . 0xB6F) (0xBE7 . 0xBEF)
  (0xC66 . 0xC6F) (0xCE6 . 0xCEF) (0xD66 . 0xD6F) (0xE50 . 0xE59) (0xED0 . 0xED9)
  (0xF20 . 0xF29) (0x1040 . 0x1049) (0x1369 . 0x1371) (0x17E0 . 0x17E9)
  (0x1810 . 0x1819) (0xFF10 . 0xFF19) (0x1D7CE . 0x1D7FF)))

  (U-Nl . #((0x16EE . 0x16F0) (0x2160 . 0x2183) (0x3007 . 0x3007) (0x3021 . 0x3029)
  (0x3038 . 0x303A) (0x1034A . 0x1034A)))

  (U-No . #((0xB2 . 0xB3) (0xB9 . 0xB9) (0xBC . 0xBE) (0x9F4 . 0x9F9) (0xBF0 . 0xBF2)
  (0xF2A . 0xF33) (0x1372 . 0x137C) (0x2070 . 0x2070) (0x2074 . 0x2079)
  (0x2080 . 0x2089) (0x2153 . 0x215F) (0x2460 . 0x249B) (0x24EA . 0x24EA)
  (0x2776 . 0x2793) (0x3192 . 0x3195) (0x3220 . 0x3229) (0x3280 . 0x3289)
  (0x10320 . 0x10323)))

  (U-P)
  
  (U-Pc . #((0x5F . 0x5F) (0x203F . 0x2040) (0x30FB . 0x30FB) (0xFE33 . 0xFE34)
  (0xFE4D . 0xFE4F) (0xFF3F . 0xFF3F) (0xFF65 . 0xFF65)))

  (U-Pd . #((0x2D . 0x2D) (0xAD . 0xAD) (0x58A . 0x58A) (0x1806 . 0x1806)
  (0x2010 . 0x2015) (0x301C . 0x301C) (0x3030 . 0x3030) (0xFE31 . 0xFE32)
  (0xFE58 . 0xFE58) (0xFE63 . 0xFE63) (0xFF0D . 0xFF0D)))

  (U-Ps . #((0x28 . 0x28) (0x5B . 0x5B) (0x7B . 0x7B) (0xF3A . 0xF3A) (0xF3C . 0xF3C)
  (0x169B . 0x169B) (0x201A . 0x201A) (0x201E . 0x201E) (0x2045 . 0x2045)
  (0x207D . 0x207D) (0x208D . 0x208D) (0x2329 . 0x2329) (0x3008 . 0x3008)
  (0x300A . 0x300A) (0x300C . 0x300C) (0x300E . 0x300E) (0x3010 . 0x3010)
  (0x3014 . 0x3014) (0x3016 . 0x3016) (0x3018 . 0x3018) (0x301A . 0x301A)
  (0x301D . 0x301D) (0xFD3E . 0xFD3E) (0xFE35 . 0xFE35) (0xFE37 . 0xFE37)
  (0xFE39 . 0xFE39) (0xFE3B . 0xFE3B) (0xFE3D . 0xFE3D) (0xFE3F . 0xFE3F)
  (0xFE41 . 0xFE41) (0xFE43 . 0xFE43) (0xFE59 . 0xFE59) (0xFE5B . 0xFE5B)
  (0xFE5D . 0xFE5D) (0xFF08 . 0xFF08) (0xFF3B . 0xFF3B) (0xFF5B . 0xFF5B)
  (0xFF62 . 0xFF62)))

  (U-Pe . #((0x29 . 0x29) (0x5D . 0x5D) (0x7D . 0x7D) (0xF3B . 0xF3B) (0xF3D . 0xF3D)
  (0x169C . 0x169C) (0x2046 . 0x2046) (0x207E . 0x207E) (0x208E . 0x208E)
  (0x232A . 0x232A) (0x3009 . 0x3009) (0x300B . 0x300B) (0x300D . 0x300D)
  (0x300F . 0x300F) (0x3011 . 0x3011) (0x3015 . 0x3015) (0x3017 . 0x3017)
  (0x3019 . 0x3019) (0x301B . 0x301B) (0x301E . 0x301F) (0xFD3F . 0xFD3F)
  (0xFE36 . 0xFE36) (0xFE38 . 0xFE38) (0xFE3A . 0xFE3A) (0xFE3C . 0xFE3C)
  (0xFE3E . 0xFE3E) (0xFE40 . 0xFE40) (0xFE42 . 0xFE42) (0xFE44 . 0xFE44)
  (0xFE5A . 0xFE5A) (0xFE5C . 0xFE5C) (0xFE5E . 0xFE5E) (0xFF09 . 0xFF09)
  (0xFF3D . 0xFF3D) (0xFF5D . 0xFF5D) (0xFF63 . 0xFF63)))

  (U-Pi . #((0xAB . 0xAB) (0x2018 . 0x2018) (0x201B . 0x201C) (0x201F . 0x201F)
  (0x2039 . 0x2039)))

  (U-Pf . #((0xBB . 0xBB) (0x2019 . 0x2019) (0x201D . 0x201D) (0x203A . 0x203A)))

  (U-Po . #((0x21 . 0x23) (0x25 . 0x27) (0x2A . 0x2A) (0x2C . 0x2C) (0x2E . 0x2F)
  (0x3A . 0x3B) (0x3F . 0x40) (0x5C . 0x5C) (0xA1 . 0xA1) (0xB7 . 0xB7) (0xBF . 0xBF)
  (0x37E . 0x37E) (0x387 . 0x387) (0x55A . 0x55F) (0x589 . 0x589) (0x5BE . 0x5BE)
  (0x5C0 . 0x5C0) (0x5C3 . 0x5C3) (0x5F3 . 0x5F4) (0x60C . 0x60C) (0x61B . 0x61B)
  (0x61F . 0x61F) (0x66A . 0x66D) (0x6D4 . 0x6D4) (0x700 . 0x70D) (0x964 . 0x965)
  (0x970 . 0x970) (0xDF4 . 0xDF4) (0xE4F . 0xE4F) (0xE5A . 0xE5B) (0xF04 . 0xF12)
  (0xF85 . 0xF85) (0x104A . 0x104F) (0x10FB . 0x10FB) (0x1361 . 0x1368)
  (0x166D . 0x166E) (0x16EB . 0x16ED) (0x17D4 . 0x17DA) (0x17DC . 0x17DC)
  (0x1800 . 0x1805) (0x1807 . 0x180A) (0x2016 . 0x2017) (0x2020 . 0x2027)
  (0x2030 . 0x2038) (0x203B . 0x203E) (0x2041 . 0x2043) (0x2048 . 0x204D)
  (0x3001 . 0x3003) (0xFE30 . 0xFE30) (0xFE49 . 0xFE4C) (0xFE50 . 0xFE52)
  (0xFE54 . 0xFE57) (0xFE5F . 0xFE61) (0xFE68 . 0xFE68) (0xFE6A . 0xFE6B)
  (0xFF01 . 0xFF03) (0xFF05 . 0xFF07) (0xFF0A . 0xFF0A) (0xFF0C . 0xFF0C)
  (0xFF0E . 0xFF0F) (0xFF1A . 0xFF1B) (0xFF1F . 0xFF20) (0xFF3C . 0xFF3C)
  (0xFF61 . 0xFF61) (0xFF64 . 0xFF64)))

  (U-Z)
  
  (U-Zs . #((0x20 . 0x20) (0xA0 . 0xA0) (0x1680 . 0x1680) (0x2000 . 0x200B)
  (0x202F . 0x202F) (0x3000 . 0x3000)))

  (U-Zl . #((0x2028 . 0x2028)))

  (U-Zp . #((0x2029 . 0x2029)))

  (U-S)
  
  (U-Sm . #((0x2B . 0x2B) (0x3C . 0x3E) (0x7C . 0x7C) (0x7E . 0x7E) (0xAC . 0xAC)
  (0xB1 . 0xB1) (0xD7 . 0xD7) (0xF7 . 0xF7) (0x2044 . 0x2044) (0x207A . 0x207C)
  (0x208A . 0x208C) (0x2190 . 0x2194) (0x219A . 0x219B) (0x21A0 . 0x21A0)
  (0x21A3 . 0x21A3) (0x21A6 . 0x21A6) (0x21AE . 0x21AE) (0x21CE . 0x21CF)
  (0x21D2 . 0x21D2) (0x21D4 . 0x21D4) (0x2200 . 0x22F1) (0x2308 . 0x230B)
  (0x2320 . 0x2321) (0x25B7 . 0x25B7) (0x25C1 . 0x25C1) (0x266F . 0x266F)
  (0xFB29 . 0xFB29) (0xFE62 . 0xFE62) (0xFE64 . 0xFE66) (0xFF0B . 0xFF0B)
  (0xFF1C . 0xFF1E) (0xFF5C . 0xFF5C) (0xFF5E . 0xFF5E) (0xFFE2 . 0xFFE2)
  (0xFFE9 . 0xFFEC) (0x1D6C1 . 0x1D6C1) (0x1D6DB . 0x1D6DB) (0x1D6FB . 0x1D6FB)
  (0x1D715 . 0x1D715) (0x1D735 . 0x1D735) (0x1D74F . 0x1D74F) (0x1D76F . 0x1D76F)
  (0x1D789 . 0x1D789) (0x1D7A9 . 0x1D7A9) (0x1D7C3 . 0x1D7C3)))

  (U-Sc . #((0x24 . 0x24) (0xA2 . 0xA5) (0x9F2 . 0x9F3) (0xE3F . 0xE3F) (0x17DB . 0x17DB)
  (0x20A0 . 0x20AF) (0xFE69 . 0xFE69) (0xFF04 . 0xFF04) (0xFFE0 . 0xFFE1)
  (0xFFE5 . 0xFFE6)))

  (U-Sk . #((0x5E . 0x5E) (0x60 . 0x60) (0xA8 . 0xA8) (0xAF . 0xAF) (0xB4 . 0xB4)
  (0xB8 . 0xB8) (0x2B9 . 0x2BA) (0x2C2 . 0x2CF) (0x2D2 . 0x2DF) (0x2E5 . 0x2ED)
  (0x374 . 0x375) (0x384 . 0x385) (0x1FBD . 0x1FBD) (0x1FBF . 0x1FC1)
  (0x1FCD . 0x1FCF) (0x1FDD . 0x1FDF) (0x1FED . 0x1FEF) (0x1FFD . 0x1FFE)
  (0x309B . 0x309C) (0xFF3E . 0xFF3E) (0xFF40 . 0xFF40) (0xFFE3 . 0xFFE3)))

  (U-So . #((0xA6 . 0xA7) (0xA9 . 0xA9) (0xAE . 0xAE) (0xB0 . 0xB0) (0xB6 . 0xB6)
  (0x482 . 0x482) (0x6E9 . 0x6E9) (0x6FD . 0x6FE) (0x9FA . 0x9FA) (0xB70 . 0xB70)
  (0xF01 . 0xF03) (0xF13 . 0xF17) (0xF1A . 0xF1F) (0xF34 . 0xF34) (0xF36 . 0xF36)
  (0xF38 . 0xF38) (0xFBE . 0xFC5) (0xFC7 . 0xFCC) (0xFCF . 0xFCF) (0x2100 . 0x2101)
  (0x2103 . 0x2106) (0x2108 . 0x2109) (0x2114 . 0x2114) (0x2116 . 0x2118)
  (0x211E . 0x2123) (0x2125 . 0x2125) (0x2127 . 0x2127) (0x2129 . 0x2129)
  (0x212E . 0x212E) (0x2132 . 0x2132) (0x213A . 0x213A) (0x2195 . 0x2199)
  (0x219C . 0x219F) (0x21A1 . 0x21A2) (0x21A4 . 0x21A5) (0x21A7 . 0x21AD)
  (0x21AF . 0x21CD) (0x21D0 . 0x21D1) (0x21D3 . 0x21D3) (0x21D5 . 0x21F3)
  (0x2300 . 0x2307) (0x230C . 0x231F) (0x2322 . 0x2328) (0x232B . 0x237B)
  (0x237D . 0x239A) (0x2400 . 0x2426) (0x2440 . 0x244A) (0x249C . 0x24E9)
  (0x2500 . 0x2595) (0x25A0 . 0x25B6) (0x25B8 . 0x25C0) (0x25C2 . 0x25F7)
  (0x2600 . 0x2613) (0x2619 . 0x266E) (0x2670 . 0x2671) (0x2701 . 0x2704)
  (0x2706 . 0x2709) (0x270C . 0x2727) (0x2729 . 0x274B) (0x274D . 0x274D)
  (0x274F . 0x2752) (0x2756 . 0x2756) (0x2758 . 0x275E) (0x2761 . 0x2767)
  (0x2794 . 0x2794) (0x2798 . 0x27AF) (0x27B1 . 0x27BE) (0x2800 . 0x28FF)
  (0x2E80 . 0x2E99) (0x2E9B . 0x2EF3) (0x2F00 . 0x2FD5) (0x2FF0 . 0x2FFB)
  (0x3004 . 0x3004) (0x3012 . 0x3013) (0x3020 . 0x3020) (0x3036 . 0x3037)
  (0x303E . 0x303F) (0x3190 . 0x3191) (0x3196 . 0x319F) (0x3200 . 0x321C)
  (0x322A . 0x3243) (0x3260 . 0x327B) (0x327F . 0x327F) (0x328A . 0x32B0)
  (0x32C0 . 0x32CB) (0x32D0 . 0x32FE) (0x3300 . 0x3376) (0x337B . 0x33DD)
  (0x33E0 . 0x33FE) (0xA490 . 0xA4A1) (0xA4A4 . 0xA4B3) (0xA4B5 . 0xA4C0)
  (0xA4C2 . 0xA4C4) (0xA4C6 . 0xA4C6) (0xFFE4 . 0xFFE4) (0xFFE8 . 0xFFE8)
  (0xFFED . 0xFFEE) (0xFFFC . 0xFFFD) (0x1D000 . 0x1D0F5) (0x1D100 . 0x1D126)
  (0x1D12A . 0x1D164) (0x1D16A . 0x1D16C) (0x1D183 . 0x1D184) (0x1D18C . 0x1D1A9)
  (0x1D1AE . 0x1D1DD)))

  (U-C)
  
  (U-Cc . #((0x0 . 0x1F) (0x7F . 0x9F)))

  (U-Cf . #((0x70F . 0x70F) (0x180B . 0x180E) (0x200C . 0x200F) (0x202A . 0x202E)
  (0x206A . 0x206F) (0xFEFF . 0xFEFF) (0xFFF9 . 0xFFFB) (0x1D173 . 0x1D17A)
  (0xE0001 . 0xE0001) (0xE0020 . 0xE007F)))

  (U-Co . #((0xE000 . 0xF8FF) (0xF0000 . 0xFFFFD) (0x100000 . 0x10FFFD)))))





