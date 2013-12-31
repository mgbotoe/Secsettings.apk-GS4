.class public Lcom/android/settings/FontMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FontMenu.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final HUGE_FONT_INDEX:I

.field private static final LARGE_FONT_SCALE:F


# instance fields
.field private mClearfont:Landroid/preference/CheckBoxPreference;

.field private mContext:Landroid/content/Context;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDirect:I

.field mDirectUri:Landroid/net/Uri;

.field private mFontList:Lcom/android/settings/flipfont/FontListPreference;

.field private mFontSizePref:Lcom/android/settings/FontSizeListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsLargeFontScale()F

    move-result v0

    sput v0, Lcom/android/settings/FontMenu;->LARGE_FONT_SCALE:F

    .line 69
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsHugeFontIndex()I

    move-result v0

    sput v0, Lcom/android/settings/FontMenu;->HUGE_FONT_INDEX:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 71
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/FontMenu;->mCurConfig:Landroid/content/res/Configuration;

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/FontMenu;->mDirect:I

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/FontMenu;->mDirectUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/FontMenu;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/FontMenu;->mClearfont:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/FontMenu;)Lcom/android/settings/FontSizeListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/FontMenu;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    return-object v0
.end method

.method private update7StepFontsizeList(Landroid/preference/ListPreference;)V
    .locals 5
    .parameter "fontSizePref"

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 423
    .local v2, values:[Ljava/lang/CharSequence;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v1, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 425
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 428
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 430
    return-void
.end method

.method private updateState()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/settings/FontMenu;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/FontMenu;->readFontSizePreference(Landroid/preference/ListPreference;)V

    .line 278
    return-void
.end method


# virtual methods
.method floatToIndex(F)I
    .locals 6
    .parameter "val"

    .prologue
    .line 283
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsFontSizeFeature()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0020

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, indices:[Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 289
    .local v2, lastVal:F
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_2

    .line 290
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 291
    .local v3, thisVal:F
    sub-float v4, v3, v2

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_1

    .line 292
    add-int/lit8 v4, v0, -0x1

    .line 296
    .end local v3           #thisVal:F
    :goto_2
    return v4

    .line 286
    .end local v0           #i:I
    .end local v1           #indices:[Ljava/lang/String;
    .end local v2           #lastVal:F
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a001e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .restart local v1       #indices:[Ljava/lang/String;
    goto :goto_0

    .line 294
    .restart local v0       #i:I
    .restart local v2       #lastVal:F
    .restart local v3       #thisVal:F
    :cond_1
    move v2, v3

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 296
    .end local v3           #thisVal:F
    :cond_2
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/FontMenu;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 192
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FontMenu"

    const-string v2, "Unable to retrieve configuration"

    invoke-static {v1, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/FontMenu;->mContext:Landroid/content/Context;

    .line 94
    const v3, 0x7f070045

    invoke-virtual {p0, v3}, Lcom/android/settings/FontMenu;->addPreferencesFromResource(I)V

    .line 95
    const-string v3, "clear_font"

    invoke-virtual {p0, v3}, Lcom/android/settings/FontMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/FontMenu;->mClearfont:Landroid/preference/CheckBoxPreference;

    .line 96
    const-string v3, "persist.sys.font_clarity"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, Cfont:Ljava/lang/String;
    const-string v3, "FontMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mClearfont_check_status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "persist.sys.font_clarity"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    iget-object v3, p0, Lcom/android/settings/FontMenu;->mClearfont:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 105
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 106
    .local v2, ps:Landroid/preference/PreferenceScreen;
    iget-object v3, p0, Lcom/android/settings/FontMenu;->mClearfont:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 109
    const-string v3, "MONOTYPE"

    invoke-virtual {p0, v3}, Lcom/android/settings/FontMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/flipfont/FontListPreference;

    iput-object v3, p0, Lcom/android/settings/FontMenu;->mFontList:Lcom/android/settings/flipfont/FontListPreference;

    .line 110
    iget-object v3, p0, Lcom/android/settings/FontMenu;->mFontList:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v3, p0}, Lcom/android/settings/flipfont/FontListPreference;->setObject(Lcom/android/settings/FontMenu;)V

    .line 111
    const-string v3, "font_size"

    invoke-virtual {p0, v3}, Lcom/android/settings/FontMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/FontSizeListPreference;

    iput-object v3, p0, Lcom/android/settings/FontMenu;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    .line 112
    iget-object v3, p0, Lcom/android/settings/FontMenu;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v3, p0}, Lcom/android/settings/FontSizeListPreference;->setObject(Lcom/android/settings/FontMenu;)V

    .line 113
    iget-object v3, p0, Lcom/android/settings/FontMenu;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v3, p0}, Lcom/android/settings/FontSizeListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 114
    iget-object v3, p0, Lcom/android/settings/FontMenu;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v3, p0}, Lcom/android/settings/FontSizeListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 115
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsFontSizeFeature()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    iget-object v3, p0, Lcom/android/settings/FontMenu;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-direct {p0, v3}, Lcom/android/settings/FontMenu;->update7StepFontsizeList(Landroid/preference/ListPreference;)V

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 120
    .local v1, activity:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/FontMenu;->mDirectUri:Landroid/net/Uri;

    .line 121
    iget-object v3, p0, Lcom/android/settings/FontMenu;->mDirectUri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 122
    iget-object v3, p0, Lcom/android/settings/FontMenu;->mDirectUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/FontMenu;->mDirect:I

    .line 123
    const-string v3, "Direct"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDirect : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/FontMenu;->mDirect:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    return-void

    .line 102
    .end local v1           #activity:Landroid/content/Intent;
    .end local v2           #ps:Landroid/preference/PreferenceScreen;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/FontMenu;->mClearfont:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter "dialogId"

    .prologue
    const/4 v5, 0x0

    const v8, 0x104000a

    const/4 v7, 0x0

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 303
    .local v3, mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/android/settings/FontMenu;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 305
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f040119

    invoke-virtual {v1, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 306
    .local v2, layout:Landroid/view/View;
    const v6, 0x7f0b0138

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 307
    .local v4, mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 309
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const/4 v6, 0x2

    if-ne p1, v6, :cond_1

    .line 310
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f090050

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/FontMenu$1;

    invoke-direct {v6, p0, v0, v4}, Lcom/android/settings/FontMenu$1;-><init>(Lcom/android/settings/FontMenu;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v5, v8, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 358
    :cond_0
    :goto_0
    return-object v5

    .line 321
    :cond_1
    const/4 v6, 0x3

    if-ne p1, v6, :cond_2

    .line 322
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0900a9

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0900a8

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/FontMenu$3;

    invoke-direct {v6, p0}, Lcom/android/settings/FontMenu$3;-><init>(Lcom/android/settings/FontMenu;)V

    invoke-virtual {v5, v8, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    new-instance v7, Lcom/android/settings/FontMenu$2;

    invoke-direct {v7, p0}, Lcom/android/settings/FontMenu$2;-><init>(Lcom/android/settings/FontMenu;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_0

    .line 349
    :cond_2
    const/4 v6, 0x1

    if-ne p1, v6, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f090b0f

    new-instance v7, Lcom/android/settings/FontMenu$4;

    invoke-direct {v7, p0}, Lcom/android/settings/FontMenu$4;-><init>(Lcom/android/settings/FontMenu;)V

    invoke-static {v5, v6, v7}, Lcom/android/settings/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v5

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 157
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 158
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v8, 0x0

    .line 236
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, key:Ljava/lang/String;
    const-string v6, "font_size"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, p2

    .line 241
    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/settings/FontMenu;->floatToIndex(F)I

    move-result v1

    .line 242
    .local v1, fontIndex:I
    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "font_size"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 245
    .local v5, previousIndex:I
    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "font_size"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 246
    sget v6, Lcom/android/settings/FontMenu;->HUGE_FONT_INDEX:I

    if-ge v5, v6, :cond_3

    sget v6, Lcom/android/settings/FontMenu;->HUGE_FONT_INDEX:I

    if-ne v1, v6, :cond_3

    .line 247
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    .local v2, i:Landroid/content/Intent;
    const-string v6, "large_font"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 251
    const-string v6, "FontMenu"

    const-string v7, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 1"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .end local v2           #i:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 265
    .local v4, mSharedPreferences:Landroid/content/SharedPreferences;
    const-string v6, "pref_font_noti"

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 267
    .local v0, do_not_show_again:Ljava/lang/Boolean;
    sget v6, Lcom/android/settings/FontMenu;->HUGE_FONT_INDEX:I

    if-ne v1, v6, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    .line 268
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/android/settings/FontMenu;->showDialog(I)V

    .line 270
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/settings/FontMenu;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 271
    iget-object v6, p0, Lcom/android/settings/FontMenu;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {p0, v6}, Lcom/android/settings/FontMenu;->readFontSizePreference(Landroid/preference/ListPreference;)V

    .line 273
    .end local v0           #do_not_show_again:Ljava/lang/Boolean;
    .end local v1           #fontIndex:I
    .end local v4           #mSharedPreferences:Landroid/content/SharedPreferences;
    .end local v5           #previousIndex:I
    :cond_2
    return v8

    .line 253
    .restart local v1       #fontIndex:I
    .restart local v5       #previousIndex:I
    :cond_3
    sget v6, Lcom/android/settings/FontMenu;->HUGE_FONT_INDEX:I

    if-ne v5, v6, :cond_0

    sget v6, Lcom/android/settings/FontMenu;->HUGE_FONT_INDEX:I

    if-ge v1, v6, :cond_0

    .line 254
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .restart local v2       #i:Landroid/content/Intent;
    const-string v6, "large_font"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 258
    const-string v6, "FontMenu"

    const-string v7, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 452
    iget-object v1, p0, Lcom/android/settings/FontMenu;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    if-ne p1, v1, :cond_1

    .line 453
    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    invoke-virtual {p0, v0}, Lcom/android/settings/FontMenu;->showDialog(I)V

    .line 460
    :goto_0
    return v0

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/android/settings/FontMenu;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v0}, Lcom/android/settings/FontSizeListPreference;->click()V

    .line 460
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 162
    iget-object v1, p0, Lcom/android/settings/FontMenu;->mClearfont:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/android/settings/FontMenu;->mClearfont:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 164
    .local v0, isClearfont:Z
    if-eqz v0, :cond_1

    .line 165
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/settings/FontMenu;->showDialog(I)V

    .line 179
    .end local v0           #isClearfont:Z
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 170
    .restart local v0       #isClearfont:Z
    :cond_1
    const-string v1, "persist.sys.font_clarity"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v1, "FontMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mClearfont_check_off: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "persist.sys.font_clarity"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->restartSettings()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, super_mOpenDetailMenu:Z
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 134
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 138
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 140
    invoke-direct {p0}, Lcom/android/settings/FontMenu;->updateState()V

    .line 141
    iget v1, p0, Lcom/android/settings/FontMenu;->mDirect:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 142
    iget-object v1, p0, Lcom/android/settings/FontMenu;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v1}, Lcom/android/settings/FontSizeListPreference;->directFontsize()V

    .line 148
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 149
    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 150
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 153
    :cond_2
    return-void

    .line 143
    :cond_3
    iget v1, p0, Lcom/android/settings/FontMenu;->mDirect:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    .line 144
    iget-object v1, p0, Lcom/android/settings/FontMenu;->mFontList:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v1}, Lcom/android/settings/flipfont/FontListPreference;->directFontList()V

    goto :goto_0
.end method

.method public readFontSizePreference(Landroid/preference/ListPreference;)V
    .locals 11
    .parameter "pref"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 385
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/FontMenu;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :goto_0
    iget-object v6, p0, Lcom/android/settings/FontMenu;->mCurConfig:Landroid/content/res/Configuration;

    iget v6, v6, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v6}, Lcom/android/settings/FontMenu;->floatToIndex(F)I

    move-result v3

    .line 394
    .local v3, index:I
    const-string v6, "FontMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readFontSizePreference : font index : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "font_size"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 396
    .local v1, fontIndex:I
    const-string v6, "FontMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readFontSizePreference : Settings.Global.FONT_SIZE : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    sget v6, Lcom/android/settings/FontMenu;->HUGE_FONT_INDEX:I

    add-int/lit8 v6, v6, -0x1

    if-ne v3, v6, :cond_0

    sget v6, Lcom/android/settings/FontMenu;->HUGE_FONT_INDEX:I

    if-ne v1, v6, :cond_0

    .line 398
    sget v3, Lcom/android/settings/FontMenu;->HUGE_FONT_INDEX:I

    .line 399
    const-string v6, "FontMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readFontSizePreference : Extra large font. index : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    invoke-virtual {p1, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 406
    invoke-virtual {p0}, Lcom/android/settings/FontMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 408
    .local v4, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsFontSizeFeature()Z

    move-result v6

    if-ne v6, v10, :cond_1

    .line 409
    const v6, 0x7f0a001f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 412
    .local v2, fontSizeNames:[Ljava/lang/String;
    :goto_1
    const/4 v5, 0x0

    .line 414
    .local v5, summary:Ljava/lang/String;
    const v6, 0x7f090583

    :try_start_1
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aget-object v9, v2, v3

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 417
    invoke-virtual {p1, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 419
    :goto_2
    return-void

    .line 386
    .end local v1           #fontIndex:I
    .end local v2           #fontSizeNames:[Ljava/lang/String;
    .end local v3           #index:I
    .end local v4           #res:Landroid/content/res/Resources;
    .end local v5           #summary:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 387
    .local v0, e:Landroid/os/RemoteException;
    const-string v6, "FontMenu"

    const-string v7, "Unable to retrieve font size"

    invoke-static {v6, v7}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 411
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #fontIndex:I
    .restart local v3       #index:I
    .restart local v4       #res:Landroid/content/res/Resources;
    :cond_1
    const v6, 0x7f0a001d

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .restart local v2       #fontSizeNames:[Ljava/lang/String;
    goto :goto_1

    .line 415
    .restart local v5       #summary:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 417
    invoke-virtual {p1, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :catchall_0
    move-exception v6

    invoke-virtual {p1, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    throw v6
.end method

.method public restartSettings()V
    .locals 8

    .prologue
    .line 199
    const-string v5, "FontSolution"

    const-string v6, "To Restart = true "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v5, p0, Lcom/android/settings/FontMenu;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings/FontMenu;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 204
    .local v1, activityManager:Landroid/app/ActivityManager;
    const v5, 0x7fffffff

    invoke-virtual {v1, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 207
    .local v2, allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 208
    .local v0, aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v5, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 209
    .local v4, s:Ljava/lang/String;
    const-string v5, "com.android.settings"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "com.samsung.music"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "com.sec.android.app.music"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 211
    const-string v5, "com.infraware.polarisoffice"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "com.infraware.polarisoffice4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "com.infraware.polarisviewer4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "com.infraware.PolarisOfficeStdForTablet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "com.infraware.polarisviewer5tablet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "com.infraware.polarisoffice5tablet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "com.infraware.polarisoffice4.document"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "com.infraware.polarisoffice5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "com.infraware.polarisoffice5.document"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "com.infraware.polarisviewer5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "com.infraware.polarisviewer5.document"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 217
    :cond_1
    const-string v5, "FontSolution"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    FSN package forceStopPackage to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 220
    :cond_2
    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 221
    const-string v5, "FontSolution"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    FSN Package restart : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 226
    .end local v0           #aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v4           #s:Ljava/lang/String;
    :cond_3
    const-string v5, "FontSolution"

    const-string v6, "kill this package : com.android.settings"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v5, "com.android.settings"

    invoke-virtual {v1, v5}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 229
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 231
    return-void
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 5
    .parameter "objValue"

    .prologue
    .line 365
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 366
    .local v1, fontScale:F
    const-string v2, "FontMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeFontSizePreference : fontScale : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/high16 v2, 0x3fc0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 368
    sget v1, Lcom/android/settings/FontMenu;->LARGE_FONT_SCALE:F

    .line 369
    const-string v2, "FontMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeFontSizePreference : Extra large font. fontScale changed to : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    iget-object v2, p0, Lcom/android/settings/FontMenu;->mCurConfig:Landroid/content/res/Configuration;

    iput v1, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 377
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/FontMenu;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    .end local v1           #fontScale:F
    :goto_0
    return-void

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "FontMenu"

    const-string v3, "Unable to save font size"

    invoke-static {v2, v3}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
