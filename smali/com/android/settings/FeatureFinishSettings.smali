.class public Lcom/android/settings/FeatureFinishSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FeatureFinishSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static mPackageName:[Ljava/lang/String;


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mActionMeo:Landroid/preference/PreferenceScreen;

.field private mAirCommand:Landroid/preference/PreferenceScreen;

.field private mDirectPen:Landroid/preference/PreferenceScreen;

.field private mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mMagazine:Landroid/preference/PreferenceScreen;

.field private mMultiWindow:Landroid/preference/PreferenceScreen;

.field private mPm:Landroid/content/pm/PackageManager;

.field mResolver:Landroid/content/ContentResolver;

.field private mScrapbook:Landroid/preference/PreferenceScreen;

.field private mSfinder:Landroid/preference/PreferenceScreen;

.field private mSnote:Landroid/preference/PreferenceScreen;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 86
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.sec.android.gallery3d"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.sec.android.app.camera"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sec.android.app.sbrowser"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.samsung.everglades.video"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "tv.peel.samsung.app"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.sec.readershub"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.google.android.apps.books"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/FeatureFinishSettings;->mPackageName:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 81
    iput-object v0, p0, Lcom/android/settings/FeatureFinishSettings;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    .line 83
    iput-object v0, p0, Lcom/android/settings/FeatureFinishSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 84
    iput-object v0, p0, Lcom/android/settings/FeatureFinishSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/FeatureFinishSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/FeatureFinishSettings;->mGuideDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private initUI()V
    .locals 6

    .prologue
    .line 126
    iget-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mDirectPen:Landroid/preference/PreferenceScreen;

    const v2, 0x7f090036

    invoke-virtual {p0, v2}, Lcom/android/settings/FeatureFinishSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0x7f090cd5

    invoke-virtual {p0, v5}, Lcom/android/settings/FeatureFinishSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/FeatureFinishSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mResolver:Landroid/content/ContentResolver;

    .line 128
    iget-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mMagazine:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 129
    iget-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mActionMeo:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 130
    iget-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mAirCommand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 131
    iget-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mDirectPen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 132
    iget-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mScrapbook:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 133
    iget-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mSfinder:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 134
    iget-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mSnote:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 135
    iget-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mMultiWindow:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/FeatureFinishSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 140
    .local v0, ps:Landroid/preference/PreferenceScreen;
    iget-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mScrapbook:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 141
    iget-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mAirCommand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 142
    iget-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mActionMeo:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 143
    iget-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mDirectPen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 162
    return-void
.end method


# virtual methods
.method public makeActionMemoLayout()Landroid/view/View;
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 226
    const/4 v3, 0x0

    .line 227
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings/FeatureFinishSettings;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04008f

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 228
    const v4, 0x7f0b01ad

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 230
    .local v1, helpContent:Landroid/widget/LinearLayout;
    const v4, 0x7f090038

    invoke-virtual {p0, v4}, Lcom/android/settings/FeatureFinishSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 232
    .local v2, s:Ljava/lang/String;
    new-instance v0, Lcom/android/settings/HelpItem;

    iget-object v4, p0, Lcom/android/settings/FeatureFinishSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v4}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 233
    .local v0, first:Lcom/android/settings/HelpItem;
    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 234
    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 235
    invoke-virtual {v0, v2}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/FeatureFinishSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 237
    const v4, 0x7f02028c

    invoke-virtual {v0, v4}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 241
    :goto_0
    invoke-virtual {v0}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 243
    return-object v3

    .line 239
    :cond_0
    const v4, 0x7f02028b

    invoke-virtual {v0, v4}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    goto :goto_0
.end method

.method public makeAirCommandLayout()Landroid/view/View;
    .locals 22

    .prologue
    .line 248
    const/16 v18, 0x0

    .line 249
    .local v18, view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FeatureFinishSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    const v20, 0x7f04008f

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 250
    const v19, 0x7f0b01ad

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 252
    .local v6, helpContent:Landroid/widget/LinearLayout;
    const-string v19, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 253
    new-instance v2, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FeatureFinishSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 254
    .local v2, ATTfirst:Lcom/android/settings/HelpItem;
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 255
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 256
    const v19, 0x7f090e62

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 257
    const v19, 0x7f02028e

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 258
    invoke-virtual {v2}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 260
    new-instance v14, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FeatureFinishSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 261
    .local v14, second:Lcom/android/settings/HelpItem;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const v20, 0x7f090017

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/FeatureFinishSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f090e55

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/FeatureFinishSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 262
    .local v10, mSecondTitle:Ljava/lang/String;
    invoke-virtual {v14, v10}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(Ljava/lang/String;)V

    .line 263
    const v19, 0x7f090e63

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 264
    invoke-virtual {v14}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 266
    new-instance v17, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FeatureFinishSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 267
    .local v17, third:Lcom/android/settings/HelpItem;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const v20, 0x7f090018

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/FeatureFinishSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f090e56

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/FeatureFinishSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 268
    .local v12, mThirdTitle:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(Ljava/lang/String;)V

    .line 269
    const v19, 0x7f090e64

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 270
    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 272
    new-instance v5, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FeatureFinishSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 273
    .local v5, fourth:Lcom/android/settings/HelpItem;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const v20, 0x7f090019

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/FeatureFinishSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f090e57

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/FeatureFinishSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 274
    .local v9, mFourthTitle:Ljava/lang/String;
    invoke-virtual {v5, v9}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(Ljava/lang/String;)V

    .line 275
    const v19, 0x7f090e65

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 276
    invoke-virtual {v5}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 278
    new-instance v3, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FeatureFinishSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 279
    .local v3, fifth:Lcom/android/settings/HelpItem;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const v20, 0x7f09001a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/FeatureFinishSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f090e58

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/FeatureFinishSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 280
    .local v8, mFifthTitle:Ljava/lang/String;
    invoke-virtual {v3, v8}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(Ljava/lang/String;)V

    .line 281
    const v19, 0x7f090e66

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 282
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 284
    new-instance v16, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FeatureFinishSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 285
    .local v16, sixth:Lcom/android/settings/HelpItem;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const v20, 0x7f09001b

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/FeatureFinishSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f090e59

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/FeatureFinishSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 286
    .local v11, mSixthTitle:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(Ljava/lang/String;)V

    .line 287
    const v19, 0x7f090e67

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 288
    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 290
    new-instance v15, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FeatureFinishSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 291
    .local v15, seventh:Lcom/android/settings/HelpItem;
    const v19, 0x7f090e68

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 292
    const v19, 0x7f090e69

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 293
    invoke-virtual {v15}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 295
    new-instance v7, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FeatureFinishSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 296
    .local v7, image:Lcom/android/settings/HelpItem;
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 297
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 298
    const v19, 0x7f02028f

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 299
    invoke-virtual {v7}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 312
    .end local v2           #ATTfirst:Lcom/android/settings/HelpItem;
    .end local v3           #fifth:Lcom/android/settings/HelpItem;
    .end local v5           #fourth:Lcom/android/settings/HelpItem;
    .end local v7           #image:Lcom/android/settings/HelpItem;
    .end local v8           #mFifthTitle:Ljava/lang/String;
    .end local v9           #mFourthTitle:Ljava/lang/String;
    .end local v10           #mSecondTitle:Ljava/lang/String;
    .end local v11           #mSixthTitle:Ljava/lang/String;
    .end local v12           #mThirdTitle:Ljava/lang/String;
    .end local v14           #second:Lcom/android/settings/HelpItem;
    .end local v15           #seventh:Lcom/android/settings/HelpItem;
    .end local v16           #sixth:Lcom/android/settings/HelpItem;
    .end local v17           #third:Lcom/android/settings/HelpItem;
    :goto_0
    return-object v18

    .line 303
    :cond_0
    const v19, 0x7f090e53

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/FeatureFinishSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 305
    .local v13, s:Ljava/lang/String;
    new-instance v4, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FeatureFinishSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 306
    .local v4, first:Lcom/android/settings/HelpItem;
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 307
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 308
    invoke-virtual {v4, v13}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 309
    const v19, 0x7f02028d

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 310
    invoke-virtual {v4}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public makeDirectPeninputLayout()Landroid/view/View;
    .locals 9

    .prologue
    const/16 v8, 0x8

    .line 317
    const/4 v3, 0x0

    .line 318
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings/FeatureFinishSettings;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04008f

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 319
    const v4, 0x7f0b01ad

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 321
    .local v1, helpContent:Landroid/widget/LinearLayout;
    const v4, 0x7f090036

    invoke-virtual {p0, v4}, Lcom/android/settings/FeatureFinishSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const v7, 0x7f090cd5

    invoke-virtual {p0, v7}, Lcom/android/settings/FeatureFinishSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, s:Ljava/lang/String;
    new-instance v0, Lcom/android/settings/HelpItem;

    iget-object v4, p0, Lcom/android/settings/FeatureFinishSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v4}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 324
    .local v0, first:Lcom/android/settings/HelpItem;
    invoke-virtual {v0, v8}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 325
    invoke-virtual {v0, v8}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 326
    invoke-virtual {v0, v2}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 327
    const v4, 0x7f020290

    invoke-virtual {v0, v4}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 328
    invoke-virtual {v0}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 330
    return-object v3
.end method

.method public makeMultiwindowLayout()Landroid/view/View;
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 371
    const/4 v3, 0x0

    .line 372
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings/FeatureFinishSettings;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04008f

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 373
    const v4, 0x7f0b01ad

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 375
    .local v1, helpContent:Landroid/widget/LinearLayout;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f090586

    invoke-virtual {p0, v4}, Lcom/android/settings/FeatureFinishSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v4, 0x7f09003e

    invoke-virtual {p0, v4}, Lcom/android/settings/FeatureFinishSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v4, 0x7f09003f

    invoke-virtual {p0, v4}, Lcom/android/settings/FeatureFinishSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, s:Ljava/lang/String;
    new-instance v0, Lcom/android/settings/HelpItem;

    iget-object v4, p0, Lcom/android/settings/FeatureFinishSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v4}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 380
    .local v0, first:Lcom/android/settings/HelpItem;
    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 381
    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 382
    invoke-virtual {v0, v2}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 383
    const v4, 0x7f020292

    invoke-virtual {v0, v4}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 384
    invoke-virtual {v0}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 386
    return-object v3
.end method

.method public makeMyMagazineLayout()Landroid/view/View;
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 207
    const/4 v3, 0x0

    .line 208
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings/FeatureFinishSettings;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04008f

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 209
    const v4, 0x7f0b01ad

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 211
    .local v1, helpContent:Landroid/widget/LinearLayout;
    const v4, 0x7f090035

    invoke-virtual {p0, v4}, Lcom/android/settings/FeatureFinishSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 213
    .local v2, s:Ljava/lang/String;
    new-instance v0, Lcom/android/settings/HelpItem;

    iget-object v4, p0, Lcom/android/settings/FeatureFinishSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v4}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 214
    .local v0, first:Lcom/android/settings/HelpItem;
    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 215
    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 216
    invoke-virtual {v0, v2}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 217
    const v4, 0x7f020291

    invoke-virtual {v0, v4}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 218
    invoke-virtual {v0}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 220
    return-object v3
.end method

.method public makeSFinderLayout()Landroid/view/View;
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 391
    const/4 v3, 0x0

    .line 392
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings/FeatureFinishSettings;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04008f

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 393
    const v4, 0x7f0b01ad

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 395
    .local v1, helpContent:Landroid/widget/LinearLayout;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f09002c

    invoke-virtual {p0, v4}, Lcom/android/settings/FeatureFinishSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v4, 0x7f09002d

    invoke-virtual {p0, v4}, Lcom/android/settings/FeatureFinishSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v4, 0x7f09002e

    invoke-virtual {p0, v4}, Lcom/android/settings/FeatureFinishSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, s:Ljava/lang/String;
    new-instance v0, Lcom/android/settings/HelpItem;

    iget-object v4, p0, Lcom/android/settings/FeatureFinishSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v4}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 400
    .local v0, first:Lcom/android/settings/HelpItem;
    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 401
    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 402
    invoke-virtual {v0, v2}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 403
    const v4, 0x7f020294

    invoke-virtual {v0, v4}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 404
    invoke-virtual {v0}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 406
    return-object v3
.end method

.method public makeScrapbookLayout()Landroid/view/View;
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 335
    const/4 v3, 0x0

    .line 336
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings/FeatureFinishSettings;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04008f

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 337
    const v4, 0x7f0b01ad

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 339
    .local v1, helpContent:Landroid/widget/LinearLayout;
    const v4, 0x7f090032

    invoke-virtual {p0, v4}, Lcom/android/settings/FeatureFinishSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 341
    .local v2, s:Ljava/lang/String;
    new-instance v0, Lcom/android/settings/HelpItem;

    iget-object v4, p0, Lcom/android/settings/FeatureFinishSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v4}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 342
    .local v0, first:Lcom/android/settings/HelpItem;
    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 343
    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 344
    invoke-virtual {v0, v2}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 345
    const v4, 0x7f020293

    invoke-virtual {v0, v4}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 346
    invoke-virtual {v0}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 348
    return-object v3
.end method

.method public makeSnoteLayout()Landroid/view/View;
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 353
    const/4 v3, 0x0

    .line 354
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings/FeatureFinishSettings;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04008f

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 355
    const v4, 0x7f0b01ad

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 357
    .local v1, helpContent:Landroid/widget/LinearLayout;
    const v4, 0x7f09003b

    invoke-virtual {p0, v4}, Lcom/android/settings/FeatureFinishSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 359
    .local v2, s:Ljava/lang/String;
    new-instance v0, Lcom/android/settings/HelpItem;

    iget-object v4, p0, Lcom/android/settings/FeatureFinishSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v4}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 360
    .local v0, first:Lcom/android/settings/HelpItem;
    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 361
    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 362
    invoke-virtual {v0, v2}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 363
    const v4, 0x7f020295

    invoke-virtual {v0, v4}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 364
    invoke-virtual {v0}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 366
    return-object v3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/FeatureFinishSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    const-string v1, "FeatureFinishSettings"

    const-string v2, "talkback is enabled, so samsung features are off"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/FeatureFinishSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackExclusiveOptionEnabled(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "option_flag"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 104
    .local v0, mDisableExclusiveOptionsFlag:I
    invoke-virtual {p0}, Lcom/android/settings/FeatureFinishSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    .line 107
    .end local v0           #mDisableExclusiveOptionsFlag:I
    :cond_0
    const v1, 0x7f070041

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureFinishSettings;->addPreferencesFromResource(I)V

    .line 109
    const-string v1, "mymagazine"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureFinishSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mMagazine:Landroid/preference/PreferenceScreen;

    .line 110
    const-string v1, "action_memo"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureFinishSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mActionMeo:Landroid/preference/PreferenceScreen;

    .line 111
    const-string v1, "air_command"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureFinishSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mAirCommand:Landroid/preference/PreferenceScreen;

    .line 112
    const-string v1, "direct_pen"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureFinishSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mDirectPen:Landroid/preference/PreferenceScreen;

    .line 113
    const-string v1, "scrapbook"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureFinishSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mScrapbook:Landroid/preference/PreferenceScreen;

    .line 114
    const-string v1, "sfinder"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureFinishSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mSfinder:Landroid/preference/PreferenceScreen;

    .line 115
    const-string v1, "snote"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureFinishSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mSnote:Landroid/preference/PreferenceScreen;

    .line 116
    const-string v1, "multi_window"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureFinishSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mMultiWindow:Landroid/preference/PreferenceScreen;

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/FeatureFinishSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/FeatureFinishSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->inflater:Landroid/view/LayoutInflater;

    .line 122
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 173
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 175
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 433
    iget-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mMagazine:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 434
    invoke-virtual {p0}, Lcom/android/settings/FeatureFinishSettings;->makeMyMagazineLayout()Landroid/view/View;

    move-result-object v0

    .line 435
    .local v0, layout:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/FeatureFinishSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureFinishSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    .line 458
    .end local v0           #layout:Landroid/view/View;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 436
    :cond_1
    iget-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mActionMeo:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 437
    invoke-virtual {p0}, Lcom/android/settings/FeatureFinishSettings;->makeActionMemoLayout()Landroid/view/View;

    move-result-object v0

    .line 438
    .restart local v0       #layout:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/FeatureFinishSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090ce4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureFinishSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 439
    .end local v0           #layout:Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mAirCommand:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 440
    invoke-virtual {p0}, Lcom/android/settings/FeatureFinishSettings;->makeAirCommandLayout()Landroid/view/View;

    move-result-object v0

    .line 441
    .restart local v0       #layout:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/FeatureFinishSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090ce5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureFinishSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 442
    .end local v0           #layout:Landroid/view/View;
    :cond_3
    iget-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mDirectPen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/FeatureFinishSettings;->makeDirectPeninputLayout()Landroid/view/View;

    move-result-object v0

    .line 444
    .restart local v0       #layout:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/FeatureFinishSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090cd5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureFinishSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 445
    .end local v0           #layout:Landroid/view/View;
    :cond_4
    iget-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mScrapbook:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 446
    invoke-virtual {p0}, Lcom/android/settings/FeatureFinishSettings;->makeScrapbookLayout()Landroid/view/View;

    move-result-object v0

    .line 447
    .restart local v0       #layout:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/FeatureFinishSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureFinishSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 448
    .end local v0           #layout:Landroid/view/View;
    :cond_5
    iget-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mSfinder:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 449
    invoke-virtual {p0}, Lcom/android/settings/FeatureFinishSettings;->makeSFinderLayout()Landroid/view/View;

    move-result-object v0

    .line 450
    .restart local v0       #layout:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/FeatureFinishSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureFinishSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 451
    .end local v0           #layout:Landroid/view/View;
    :cond_6
    iget-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mSnote:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 452
    invoke-virtual {p0}, Lcom/android/settings/FeatureFinishSettings;->makeSnoteLayout()Landroid/view/View;

    move-result-object v0

    .line 453
    .restart local v0       #layout:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/FeatureFinishSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090e31

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureFinishSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 454
    .end local v0           #layout:Landroid/view/View;
    :cond_7
    iget-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mMultiWindow:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    invoke-virtual {p0}, Lcom/android/settings/FeatureFinishSettings;->makeMultiwindowLayout()Landroid/view/View;

    move-result-object v0

    .line 456
    .restart local v0       #layout:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/FeatureFinishSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090585

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureFinishSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 166
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 168
    invoke-direct {p0}, Lcom/android/settings/FeatureFinishSettings;->initUI()V

    .line 169
    return-void
.end method

.method public showGuideDialog(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .parameter "layout"
    .parameter "title"

    .prologue
    const/4 v2, 0x0

    .line 180
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/FeatureFinishSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 182
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 184
    iput-object v2, p0, Lcom/android/settings/FeatureFinishSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 189
    iput-object v2, p0, Lcom/android/settings/FeatureFinishSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 192
    :cond_1
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 193
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 195
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/FeatureFinishSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/FeatureFinishSettings$1;-><init>(Lcom/android/settings/FeatureFinishSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 201
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 202
    iget-object v1, p0, Lcom/android/settings/FeatureFinishSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 203
    return-void
.end method
