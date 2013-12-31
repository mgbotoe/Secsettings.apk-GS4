.class public Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "HandwritingLanguagePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;,
        Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;
    }
.end annotation


# static fields
.field private static mHelper:Lcom/android/settings/handwritingsearch/RMHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandwritingLanguageListAdapter:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;

.field private mLinkInfo:Z

.field private mListView:Landroid/widget/ListView;

.field private mMoreButton:Landroid/widget/Button;

.field private mMoreButtonLayout:Landroid/widget/LinearLayout;

.field mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mHelper:Lcom/android/settings/handwritingsearch/RMHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    .line 41
    iput-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mTextView:Landroid/widget/TextView;

    .line 43
    iput-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mListView:Landroid/widget/ListView;

    .line 45
    iput-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mMoreButton:Landroid/widget/Button;

    .line 47
    iput-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mMoreButtonLayout:Landroid/widget/LinearLayout;

    .line 49
    iput-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mHandwritingLanguageListAdapter:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mLinkInfo:Z

    .line 193
    new-instance v0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$2;-><init>(Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;)V

    iput-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 204
    new-instance v0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$3;

    invoke-direct {v0, p0}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$3;-><init>(Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;)V

    iput-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 519
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->getDescriptionString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private getDescriptionString()Ljava/lang/String;
    .locals 11

    .prologue
    const v10, 0x7f0915b3

    const v9, 0x7f0915b2

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 154
    const/4 v1, 0x0

    .line 155
    .local v1, description:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mHandwritingLanguageListAdapter:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;

    iget-object v5, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;->getItem(I)Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, currentLanguage:Ljava/lang/String;
    new-instance v2, Ljava/util/Locale;

    const-string v4, "en"

    const-string v5, "GB"

    invoke-direct {v2, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .local v2, enLocale:Ljava/util/Locale;
    new-instance v3, Ljava/util/Locale;

    const-string v4, "zh"

    const-string v5, "CN"

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .local v3, zhLocale:Ljava/util/Locale;
    if-nez v0, :cond_0

    .line 160
    iget-object v4, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 179
    :goto_0
    return-object v1

    .line 162
    :cond_0
    const-string v4, "en_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 163
    iget-object v4, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 164
    :cond_1
    const-string v4, "ko_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "ja_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 166
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 167
    const-string v4, "ja"

    iget-object v5, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 168
    iget-object v4, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    const v5, 0x7f0915b4

    new-array v6, v7, [Ljava/lang/Object;

    const-string v7, "\u30a2\u30eb\u30d5\u30a1\u30d9\u30c3\u30c8"

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 170
    :cond_3
    iget-object v4, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "Alphabet"

    aput-object v6, v5, v8

    const-string v6, "\u6f22\u5b57"

    aput-object v6, v5, v7

    invoke-virtual {v4, v10, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 173
    :cond_4
    iget-object v4, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v2}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v3}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v10, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 176
    :cond_5
    iget-object v4, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    const v5, 0x7f0915b4

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v2}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private static getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "l"
    .parameter "specialLocaleCodes"
    .parameter "specialLocaleNames"

    .prologue
    .line 439
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, code:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 442
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 443
    aget-object v2, p2, v1

    .line 447
    :goto_1
    return-object v2

    .line 441
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 447
    :cond_1
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static getLocaleInfoAdapter(Landroid/content/Context;)[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    .locals 27
    .parameter "context"

    .prologue
    .line 213
    new-instance v24, Lcom/android/settings/handwritingsearch/RMHelper;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/handwritingsearch/RMHelper;-><init>(Landroid/content/Context;)V

    sput-object v24, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mHelper:Lcom/android/settings/handwritingsearch/RMHelper;

    .line 214
    sget-object v24, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mHelper:Lcom/android/settings/handwritingsearch/RMHelper;

    invoke-virtual/range {v24 .. v24}, Lcom/android/settings/handwritingsearch/RMHelper;->getLangList()[Ljava/lang/String;

    move-result-object v17

    .line 215
    .local v17, mVOLangList:[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v12, v0

    .line 216
    .local v12, langLength:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 217
    .local v21, resources:Landroid/content/res/Resources;
    const v24, 0x1070009

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    .line 219
    .local v22, specialLocaleCodes:[Ljava/lang/String;
    const v24, 0x107000a

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v23

    .line 221
    .local v23, specialLocaleNames:[Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 223
    new-array v0, v12, [Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-object/from16 v20, v0

    .line 224
    .local v20, preprocess:[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    const/4 v8, 0x0

    .line 226
    .local v8, finalSize:I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v24

    const-string v25, "CscFeature_Framework_ReplaceCountryName"

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 228
    .local v5, countryFeature:Ljava/lang/String;
    const-string v3, ""

    .line 229
    .local v3, ISO_Code:Ljava/lang/String;
    const-string v6, ""

    .line 231
    .local v6, coutryReplaceName:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 232
    const/16 v24, 0x0

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 233
    const/16 v24, 0x6

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 236
    :cond_0
    const/4 v10, 0x0

    .local v10, i:I
    move v9, v8

    .end local v8           #finalSize:I
    .local v9, finalSize:I
    :goto_0
    if-ge v10, v12, :cond_8

    .line 237
    aget-object v24, v17, v10

    if-nez v24, :cond_1

    move v8, v9

    .line 236
    .end local v9           #finalSize:I
    .restart local v8       #finalSize:I
    :goto_1
    add-int/lit8 v10, v10, 0x1

    move v9, v8

    .end local v8           #finalSize:I
    .restart local v9       #finalSize:I
    goto :goto_0

    .line 239
    :cond_1
    aget-object v11, v17, v10

    .line 241
    .local v11, lang:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    .line 242
    .local v14, len:I
    const/16 v24, 0x5

    move/from16 v0, v24

    if-ne v14, v0, :cond_7

    .line 243
    const/16 v24, 0x0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 244
    .local v13, language:Ljava/lang/String;
    const/16 v24, 0x3

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 245
    .local v4, country:Ljava/lang/String;
    new-instance v15, Ljava/util/Locale;

    invoke-direct {v15, v13, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .local v15, locale:Ljava/util/Locale;
    if-nez v9, :cond_2

    .line 248
    const-string v24, "HandwritingLanguagePreference"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "adding initial "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v15, v15}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    add-int/lit8 v8, v9, 0x1

    .end local v9           #finalSize:I
    .restart local v8       #finalSize:I
    new-instance v24, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    invoke-virtual {v15, v15}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v11, v15}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v24, v20, v9

    goto :goto_1

    .line 256
    .end local v8           #finalSize:I
    .restart local v9       #finalSize:I
    :cond_2
    add-int/lit8 v24, v9, -0x1

    aget-object v24, v20, v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->locale:Ljava/util/Locale;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 257
    const-string v24, "HandwritingLanguagePreference"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "backing up and fixing "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    add-int/lit8 v26, v9, -0x1

    aget-object v26, v20, v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " to "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    add-int/lit8 v26, v9, -0x1

    aget-object v26, v20, v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->locale:Ljava/util/Locale;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    add-int/lit8 v24, v9, -0x1

    aget-object v24, v20, v24

    add-int/lit8 v25, v9, -0x1

    aget-object v25, v20, v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->locale:Ljava/util/Locale;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->title:Ljava/lang/String;

    .line 266
    const-string v24, "HandwritingLanguagePreference"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "  and adding "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v15, v0, v1}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    add-int/lit8 v8, v9, 0x1

    .end local v9           #finalSize:I
    .restart local v8       #finalSize:I
    new-instance v24, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v15, v0, v1}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v11, v15}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v24, v20, v9

    goto/16 :goto_1

    .line 275
    .end local v8           #finalSize:I
    .restart local v9       #finalSize:I
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_5

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 276
    const-string v19, ""

    .line 277
    .local v19, numeric:Ljava/lang/String;
    const-string v18, ""

    .line 279
    .local v18, mcc:Ljava/lang/String;
    const-string v24, "gsm.sim.operator.numeric"

    const-string v25, "none"

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 281
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_4

    .line 287
    move-object v7, v6

    .line 300
    .end local v18           #mcc:Ljava/lang/String;
    .end local v19           #numeric:Ljava/lang/String;
    .local v7, displayName:Ljava/lang/String;
    :goto_2
    const-string v24, "HandwritingLanguagePreference"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "adding "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    add-int/lit8 v8, v9, 0x1

    .end local v9           #finalSize:I
    .restart local v8       #finalSize:I
    new-instance v24, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-object/from16 v0, v24

    invoke-direct {v0, v7, v11, v15}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v24, v20, v9

    goto/16 :goto_1

    .line 293
    .end local v7           #displayName:Ljava/lang/String;
    .end local v8           #finalSize:I
    .restart local v9       #finalSize:I
    .restart local v18       #mcc:Ljava/lang/String;
    .restart local v19       #numeric:Ljava/lang/String;
    :cond_4
    invoke-virtual {v15, v15}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #displayName:Ljava/lang/String;
    goto :goto_2

    .line 295
    .end local v7           #displayName:Ljava/lang/String;
    .end local v18           #mcc:Ljava/lang/String;
    .end local v19           #numeric:Ljava/lang/String;
    :cond_5
    const-string v24, "zz_ZZ"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 296
    const-string v7, "Pseudo..."

    .restart local v7       #displayName:Ljava/lang/String;
    goto :goto_2

    .line 298
    .end local v7           #displayName:Ljava/lang/String;
    :cond_6
    invoke-virtual {v15, v15}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #displayName:Ljava/lang/String;
    goto :goto_2

    .line 305
    .end local v4           #country:Ljava/lang/String;
    .end local v7           #displayName:Ljava/lang/String;
    .end local v13           #language:Ljava/lang/String;
    .end local v15           #locale:Ljava/util/Locale;
    :cond_7
    const/16 v24, 0x0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 306
    .restart local v13       #language:Ljava/lang/String;
    new-instance v15, Ljava/util/Locale;

    invoke-direct {v15, v13}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 308
    .restart local v15       #locale:Ljava/util/Locale;
    invoke-virtual {v15, v15}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 309
    .restart local v7       #displayName:Ljava/lang/String;
    add-int/lit8 v8, v9, 0x1

    .end local v9           #finalSize:I
    .restart local v8       #finalSize:I
    new-instance v24, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-object/from16 v0, v24

    invoke-direct {v0, v7, v11, v15}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v24, v20, v9

    goto/16 :goto_1

    .line 313
    .end local v7           #displayName:Ljava/lang/String;
    .end local v8           #finalSize:I
    .end local v11           #lang:Ljava/lang/String;
    .end local v13           #language:Ljava/lang/String;
    .end local v14           #len:I
    .end local v15           #locale:Ljava/util/Locale;
    .restart local v9       #finalSize:I
    :cond_8
    new-array v0, v12, [Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-object/from16 v16, v0

    .line 314
    .local v16, localeInfos:[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v9, :cond_9

    .line 315
    aget-object v24, v20, v10

    aput-object v24, v16, v10

    .line 314
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 318
    :cond_9
    return-object v16
.end method

.method public static getLocaleInfoAdapter(Landroid/content/Context;[Ljava/lang/String;)[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    .locals 29
    .parameter "context"
    .parameter "imLang"

    .prologue
    .line 323
    new-instance v26, Lcom/android/settings/handwritingsearch/RMHelper;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/handwritingsearch/RMHelper;-><init>(Landroid/content/Context;)V

    sput-object v26, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mHelper:Lcom/android/settings/handwritingsearch/RMHelper;

    .line 324
    sget-object v26, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mHelper:Lcom/android/settings/handwritingsearch/RMHelper;

    invoke-virtual/range {v26 .. v26}, Lcom/android/settings/handwritingsearch/RMHelper;->getLangList()[Ljava/lang/String;

    move-result-object v18

    .line 325
    .local v18, mVOLangList:[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v13, v0

    .line 327
    .local v13, langLength:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 328
    .local v22, resources:Landroid/content/res/Resources;
    const v26, 0x1070009

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v24

    .line 330
    .local v24, specialLocaleCodes:[Ljava/lang/String;
    const v26, 0x107000a

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v25

    .line 333
    .local v25, specialLocaleNames:[Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 335
    new-array v0, v13, [Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-object/from16 v21, v0

    .line 336
    .local v21, preprocess:[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    const/4 v8, 0x0

    .line 338
    .local v8, finalSize:I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v26

    const-string v27, "CscFeature_Framework_ReplaceCountryName"

    invoke-virtual/range {v26 .. v27}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 340
    .local v5, countryFeature:Ljava/lang/String;
    const-string v3, ""

    .line 341
    .local v3, ISO_Code:Ljava/lang/String;
    const-string v6, ""

    .line 343
    .local v6, coutryReplaceName:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_0

    .line 344
    const/16 v26, 0x0

    const/16 v27, 0x5

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 345
    const/16 v26, 0x6

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 348
    :cond_0
    const/4 v10, 0x0

    .local v10, i:I
    move v9, v8

    .end local v8           #finalSize:I
    .local v9, finalSize:I
    :goto_0
    if-ge v10, v13, :cond_7

    .line 349
    aget-object v12, v18, v10

    .line 350
    .local v12, lang:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    .line 351
    .local v15, len:I
    const/16 v26, 0x5

    move/from16 v0, v26

    if-ne v15, v0, :cond_6

    .line 352
    const/16 v26, 0x0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 353
    .local v14, language:Ljava/lang/String;
    const/16 v26, 0x3

    const/16 v27, 0x5

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 354
    .local v4, country:Ljava/lang/String;
    new-instance v16, Ljava/util/Locale;

    move-object/from16 v0, v16

    invoke-direct {v0, v14, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .local v16, locale:Ljava/util/Locale;
    if-nez v9, :cond_1

    .line 357
    const-string v26, "HandwritingLanguagePreference"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "adding initial "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    add-int/lit8 v8, v9, 0x1

    .end local v9           #finalSize:I
    .restart local v8       #finalSize:I
    new-instance v26, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-object/from16 v0, v16

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v12, v2}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v26, v21, v9

    .line 348
    .end local v4           #country:Ljava/lang/String;
    :goto_1
    add-int/lit8 v10, v10, 0x1

    move v9, v8

    .end local v8           #finalSize:I
    .restart local v9       #finalSize:I
    goto :goto_0

    .line 365
    .restart local v4       #country:Ljava/lang/String;
    :cond_1
    add-int/lit8 v26, v9, -0x1

    aget-object v26, v21, v26

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->locale:Ljava/util/Locale;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 366
    const-string v26, "HandwritingLanguagePreference"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "backing up and fixing "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    add-int/lit8 v28, v9, -0x1

    aget-object v28, v21, v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->title:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " to "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    add-int/lit8 v28, v9, -0x1

    aget-object v28, v21, v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->locale:Ljava/util/Locale;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    add-int/lit8 v26, v9, -0x1

    aget-object v26, v21, v26

    add-int/lit8 v27, v9, -0x1

    aget-object v27, v21, v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->locale:Ljava/util/Locale;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->title:Ljava/lang/String;

    .line 375
    const-string v26, "HandwritingLanguagePreference"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "  and adding "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    add-int/lit8 v8, v9, 0x1

    .end local v9           #finalSize:I
    .restart local v8       #finalSize:I
    new-instance v26, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v12, v2}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v26, v21, v9

    goto/16 :goto_1

    .line 384
    .end local v8           #finalSize:I
    .restart local v9       #finalSize:I
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_4

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 385
    const-string v20, ""

    .line 386
    .local v20, numeric:Ljava/lang/String;
    const-string v19, ""

    .line 388
    .local v19, mcc:Ljava/lang/String;
    const-string v26, "gsm.sim.operator.numeric"

    const-string v27, "none"

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 390
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_3

    .line 396
    move-object v7, v6

    .line 409
    .end local v19           #mcc:Ljava/lang/String;
    .end local v20           #numeric:Ljava/lang/String;
    .local v7, displayName:Ljava/lang/String;
    :goto_2
    const-string v26, "HandwritingLanguagePreference"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "adding "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    add-int/lit8 v8, v9, 0x1

    .end local v9           #finalSize:I
    .restart local v8       #finalSize:I
    new-instance v26, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-direct {v0, v7, v12, v1}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v26, v21, v9

    goto/16 :goto_1

    .line 402
    .end local v7           #displayName:Ljava/lang/String;
    .end local v8           #finalSize:I
    .restart local v9       #finalSize:I
    .restart local v19       #mcc:Ljava/lang/String;
    .restart local v20       #numeric:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v16

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #displayName:Ljava/lang/String;
    goto :goto_2

    .line 404
    .end local v7           #displayName:Ljava/lang/String;
    .end local v19           #mcc:Ljava/lang/String;
    .end local v20           #numeric:Ljava/lang/String;
    :cond_4
    const-string v26, "zz_ZZ"

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 405
    const-string v7, "Pseudo..."

    .restart local v7       #displayName:Ljava/lang/String;
    goto :goto_2

    .line 407
    .end local v7           #displayName:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v16

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #displayName:Ljava/lang/String;
    goto :goto_2

    .line 414
    .end local v4           #country:Ljava/lang/String;
    .end local v7           #displayName:Ljava/lang/String;
    .end local v14           #language:Ljava/lang/String;
    .end local v16           #locale:Ljava/util/Locale;
    :cond_6
    const/16 v26, 0x0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 415
    .restart local v14       #language:Ljava/lang/String;
    new-instance v16, Ljava/util/Locale;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 417
    .restart local v16       #locale:Ljava/util/Locale;
    move-object/from16 v0, v16

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 418
    .restart local v7       #displayName:Ljava/lang/String;
    add-int/lit8 v8, v9, 0x1

    .end local v9           #finalSize:I
    .restart local v8       #finalSize:I
    new-instance v26, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-direct {v0, v7, v12, v1}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v26, v21, v9

    goto/16 :goto_1

    .line 422
    .end local v7           #displayName:Ljava/lang/String;
    .end local v8           #finalSize:I
    .end local v12           #lang:Ljava/lang/String;
    .end local v14           #language:Ljava/lang/String;
    .end local v15           #len:I
    .end local v16           #locale:Ljava/util/Locale;
    .restart local v9       #finalSize:I
    :cond_7
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 423
    .local v17, localeInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;>;"
    const/4 v11, 0x0

    .local v11, j:I
    :goto_3
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v11, v0, :cond_a

    .line 424
    const/4 v10, 0x0

    :goto_4
    if-ge v10, v9, :cond_9

    .line 425
    aget-object v26, p1, v11

    aget-object v27, v21, v10

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->getLanguage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_8

    .line 426
    aget-object v26, v21, v10

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 423
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 431
    :cond_a
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    new-array v0, v0, [Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-object/from16 v23, v0

    .line 432
    .local v23, retLanguage:[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 434
    return-object v23
.end method

.method private setListValue(Ljava/lang/String;)V
    .locals 4
    .parameter "currentLang"

    .prologue
    .line 183
    const/4 v1, 0x0

    .line 184
    .local v1, position:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mHandwritingLanguageListAdapter:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;

    invoke-virtual {v2}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mHandwritingLanguageListAdapter:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;

    invoke-virtual {v2, v0}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;->getItem(I)Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    move v1, v0

    .line 190
    :cond_0
    iget-object v2, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 191
    return-void

    .line 184
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 451
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 455
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 57
    const-string v0, "HandwritingLanguagePreference"

    const-string v1, "onCreate() "

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "handwriting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mLinkInfo:Z

    .line 61
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 64
    const v1, 0x7f0400b2

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0b01bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mTextView:Landroid/widget/TextView;

    .line 67
    const v1, 0x7f0b01bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mListView:Landroid/widget/ListView;

    .line 68
    const v1, 0x7f0b01be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mMoreButton:Landroid/widget/Button;

    .line 69
    const v1, 0x7f0b01bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mMoreButtonLayout:Landroid/widget/LinearLayout;

    .line 71
    iget-object v1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mMoreButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mMoreButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$1;-><init>(Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mLinkInfo:Z

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mMoreButtonLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mMoreButtonLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 89
    :cond_1
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 150
    const-string v0, "HandwritingLanguagePreference"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method

.method public onPause()V
    .locals 6

    .prologue
    .line 131
    iget-object v3, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    .line 132
    .local v2, position:I
    iget-object v3, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mHandwritingLanguageListAdapter:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;

    invoke-virtual {v3, v2}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;->getItem(I)Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, language:Ljava/lang/String;
    const-string v3, "HandwritingLanguagePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set Handwriting language : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v3, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "handwriting_language"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.setting.HANDWRITING_LANGUAGE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "language"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    iget-object v3, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 143
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 144
    return-void
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 93
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, arrayLanguageInfo:[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;
    iget-object v5, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language_list"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, imLanguageList:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "default_input_method"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, inputMethodId:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "handwriting_language"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, currentLang:Ljava/lang/String;
    const-string v5, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 102
    iget-object v5, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->getLocaleInfoAdapter(Landroid/content/Context;)[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-result-object v0

    .line 103
    iget-object v5, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mMoreButtonLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 104
    iget-object v5, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mMoreButtonLayout:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 116
    :cond_0
    :goto_0
    new-instance v5, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;

    iget-object v6, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    const v7, 0x7f040189

    invoke-direct {v5, p0, v6, v7, v0}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;-><init>(Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;Landroid/content/Context;I[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;)V

    iput-object v5, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mHandwritingLanguageListAdapter:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;

    .line 119
    iget-object v5, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mHandwritingLanguageListAdapter:Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$HandwritingLanguageListAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    iget-object v5, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 121
    iget-object v5, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 122
    iget-object v5, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 124
    invoke-direct {p0, v1}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->setListValue(Ljava/lang/String;)V

    .line 126
    iget-object v5, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->getDescriptionString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    return-void

    .line 105
    :cond_1
    if-eqz v3, :cond_2

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    if-nez v3, :cond_4

    .line 106
    :cond_3
    new-array v2, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v2, v5

    .line 107
    .local v2, imLanguage:[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->getLocaleInfoAdapter(Landroid/content/Context;[Ljava/lang/String;)[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-result-object v0

    .line 108
    goto :goto_0

    .line 109
    .end local v2           #imLanguage:[Ljava/lang/String;
    :cond_4
    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    :cond_5
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 113
    .restart local v2       #imLanguage:[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;->getLocaleInfoAdapter(Landroid/content/Context;[Ljava/lang/String;)[Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-result-object v0

    goto :goto_0
.end method
