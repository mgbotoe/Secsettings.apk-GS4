.class public Lcom/android/settings/EasyDisplaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "EasyDisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final HUGE_FONT_INDEX:I

.field private static final LARGE_FONT_SCALE:F


# instance fields
.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDirect:I

.field mDirectUri:Landroid/net/Uri;

.field private mFontList:Lcom/android/settings/flipfont/FontListPreference;

.field private mFontSize:Lcom/android/settings/FontSizeListPreference;

.field private mFontSizePref:Landroid/preference/ListPreference;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsLargeFontScale()F

    move-result v0

    sput v0, Lcom/android/settings/EasyDisplaySettings;->LARGE_FONT_SCALE:F

    .line 96
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsHugeFontIndex()I

    move-result v0

    sput v0, Lcom/android/settings/EasyDisplaySettings;->HUGE_FONT_INDEX:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 98
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/EasyDisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/EasyDisplaySettings;->mDirect:I

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/EasyDisplaySettings;->mDirectUri:Landroid/net/Uri;

    .line 113
    new-instance v0, Lcom/android/settings/EasyDisplaySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/EasyDisplaySettings$1;-><init>(Lcom/android/settings/EasyDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/EasyDisplaySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private update7StepFontsizeList(Landroid/preference/ListPreference;)V
    .locals 5
    .parameter "fontSizePref"

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/android/settings/EasyDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 364
    .local v2, values:[Ljava/lang/CharSequence;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .local v1, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 366
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 371
    return-void
.end method

.method private updateState()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/settings/EasyDisplaySettings;->mFontSizePref:Landroid/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/EasyDisplaySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    .line 241
    return-void
.end method


# virtual methods
.method floatToIndex(F)I
    .locals 6
    .parameter "val"

    .prologue
    .line 165
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsFontSizeFeature()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/EasyDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0020

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, indices:[Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 171
    .local v2, lastVal:F
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_2

    .line 172
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 173
    .local v3, thisVal:F
    sub-float v4, v3, v2

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_1

    .line 174
    add-int/lit8 v4, v0, -0x1

    .line 178
    .end local v3           #thisVal:F
    :goto_2
    return v4

    .line 168
    .end local v0           #i:I
    .end local v1           #indices:[Ljava/lang/String;
    .end local v2           #lastVal:F
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/EasyDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a001e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .restart local v1       #indices:[Ljava/lang/String;
    goto :goto_0

    .line 176
    .restart local v0       #i:I
    .restart local v2       #lastVal:F
    .restart local v3       #thisVal:F
    :cond_1
    move v2, v3

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 178
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
    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/EasyDisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 251
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EasyDisplaySettings"

    const-string v2, "Unable to retrieve configuration"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/EasyDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 127
    .local v3, resolver:Landroid/content/ContentResolver;
    const v4, 0x7f07003d

    invoke-virtual {p0, v4}, Lcom/android/settings/EasyDisplaySettings;->addPreferencesFromResource(I)V

    .line 131
    new-instance v2, Lcom/android/settings/FontMenu;

    invoke-direct {v2}, Lcom/android/settings/FontMenu;-><init>()V

    .line 132
    .local v2, edsn:Lcom/android/settings/FontMenu;
    new-instance v1, Lcom/android/settings/DisplaySettings;

    invoke-direct {v1}, Lcom/android/settings/DisplaySettings;-><init>()V

    .line 134
    .local v1, eds:Lcom/android/settings/DisplaySettings;
    const-string v4, "font_size"

    invoke-virtual {p0, v4}, Lcom/android/settings/EasyDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/FontSizeListPreference;

    iput-object v4, p0, Lcom/android/settings/EasyDisplaySettings;->mFontSize:Lcom/android/settings/FontSizeListPreference;

    .line 136
    const-string v4, "MONOTYPE"

    invoke-virtual {p0, v4}, Lcom/android/settings/EasyDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/flipfont/FontListPreference;

    iput-object v4, p0, Lcom/android/settings/EasyDisplaySettings;->mFontList:Lcom/android/settings/flipfont/FontListPreference;

    .line 137
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 138
    iget-object v4, p0, Lcom/android/settings/EasyDisplaySettings;->mFontList:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v4, v2}, Lcom/android/settings/flipfont/FontListPreference;->setObject(Lcom/android/settings/FontMenu;)V

    .line 139
    iget-object v4, p0, Lcom/android/settings/EasyDisplaySettings;->mFontSize:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v4, v2}, Lcom/android/settings/FontSizeListPreference;->setObject(Lcom/android/settings/FontMenu;)V

    .line 144
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/EasyDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 145
    .local v0, activity:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/EasyDisplaySettings;->mDirectUri:Landroid/net/Uri;

    .line 146
    iget-object v4, p0, Lcom/android/settings/EasyDisplaySettings;->mDirectUri:Landroid/net/Uri;

    if-eqz v4, :cond_0

    .line 147
    iget-object v4, p0, Lcom/android/settings/EasyDisplaySettings;->mDirectUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/EasyDisplaySettings;->mDirect:I

    .line 148
    const-string v4, "Direct"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDirect : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/EasyDisplaySettings;->mDirect:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v4, "font_size"

    invoke-virtual {p0, v4}, Lcom/android/settings/EasyDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/EasyDisplaySettings;->mFontSizePref:Landroid/preference/ListPreference;

    .line 154
    iget-object v4, p0, Lcom/android/settings/EasyDisplaySettings;->mFontSizePref:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 157
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsFontSizeFeature()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 158
    iget-object v4, p0, Lcom/android/settings/EasyDisplaySettings;->mFontSize:Lcom/android/settings/FontSizeListPreference;

    invoke-direct {p0, v4}, Lcom/android/settings/EasyDisplaySettings;->update7StepFontsizeList(Landroid/preference/ListPreference;)V

    .line 160
    :cond_1
    return-void

    .line 141
    .end local v0           #activity:Landroid/content/Intent;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/EasyDisplaySettings;->mFontList:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v4, v1}, Lcom/android/settings/flipfont/FontListPreference;->setObject(Lcom/android/settings/DisplaySettings;)V

    .line 142
    iget-object v4, p0, Lcom/android/settings/EasyDisplaySettings;->mFontSize:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v4, v1}, Lcom/android/settings/FontSizeListPreference;->setObject(Lcom/android/settings/DisplaySettings;)V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "dialogId"

    .prologue
    const/4 v5, 0x0

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/EasyDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 256
    .local v3, mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/settings/EasyDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/android/settings/EasyDisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 257
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f040119

    invoke-virtual {v1, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 258
    .local v2, layout:Landroid/view/View;
    const v6, 0x7f0b0138

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 259
    .local v4, mcheck:Landroid/widget/CheckBox;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 261
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const/4 v6, 0x2

    if-ne p1, v6, :cond_0

    .line 262
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/EasyDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f090050

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/android/settings/EasyDisplaySettings$2;

    invoke-direct {v7, p0, v0, v4}, Lcom/android/settings/EasyDisplaySettings$2;-><init>(Lcom/android/settings/EasyDisplaySettings;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 275
    :cond_0
    return-object v5
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 233
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/EasyDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/EasyDisplaySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 237
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 313
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 314
    .local v3, key:Ljava/lang/String;
    const-string v6, "font_size"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, p2

    .line 316
    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/settings/EasyDisplaySettings;->floatToIndex(F)I

    move-result v1

    .line 317
    .local v1, fontIndex:I
    invoke-virtual {p0}, Lcom/android/settings/EasyDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "font_size"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 319
    .local v5, previousIndex:I
    invoke-virtual {p0}, Lcom/android/settings/EasyDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "font_size"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 320
    sget v6, Lcom/android/settings/EasyDisplaySettings;->HUGE_FONT_INDEX:I

    if-ge v5, v6, :cond_3

    sget v6, Lcom/android/settings/EasyDisplaySettings;->HUGE_FONT_INDEX:I

    if-ne v1, v6, :cond_3

    .line 321
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 322
    .local v2, i:Landroid/content/Intent;
    const-string v6, "large_font"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/EasyDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 325
    const-string v6, "EasyDisplaySettings"

    const-string v7, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 1"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .end local v2           #i:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/EasyDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 336
    .local v4, mSharedPreferences:Landroid/content/SharedPreferences;
    const-string v6, "pref_font_noti"

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 338
    .local v0, do_not_show_again:Ljava/lang/Boolean;
    sget v6, Lcom/android/settings/EasyDisplaySettings;->HUGE_FONT_INDEX:I

    if-ne v1, v6, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    .line 339
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/android/settings/EasyDisplaySettings;->showDialog(I)V

    .line 341
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/settings/EasyDisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 342
    iget-object v6, p0, Lcom/android/settings/EasyDisplaySettings;->mFontSizePref:Landroid/preference/ListPreference;

    invoke-virtual {p0, v6}, Lcom/android/settings/EasyDisplaySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    .line 345
    .end local v0           #do_not_show_again:Ljava/lang/Boolean;
    .end local v1           #fontIndex:I
    .end local v4           #mSharedPreferences:Landroid/content/SharedPreferences;
    .end local v5           #previousIndex:I
    :cond_2
    return v9

    .line 326
    .restart local v1       #fontIndex:I
    .restart local v5       #previousIndex:I
    :cond_3
    sget v6, Lcom/android/settings/EasyDisplaySettings;->HUGE_FONT_INDEX:I

    if-ne v5, v6, :cond_0

    sget v6, Lcom/android/settings/EasyDisplaySettings;->HUGE_FONT_INDEX:I

    if-ge v1, v6, :cond_0

    .line 327
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 328
    .restart local v2       #i:Landroid/content/Intent;
    const-string v6, "large_font"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/EasyDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 331
    const-string v6, "EasyDisplaySettings"

    const-string v7, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 358
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 309
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 214
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 216
    invoke-direct {p0}, Lcom/android/settings/EasyDisplaySettings;->updateState()V

    .line 218
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 220
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.android.settings.action.FONT_SIZE_CLOSE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/EasyDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/EasyDisplaySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/EasyDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 224
    .local v1, resolver:Landroid/content/ContentResolver;
    iget v2, p0, Lcom/android/settings/EasyDisplaySettings;->mDirect:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 225
    iget-object v2, p0, Lcom/android/settings/EasyDisplaySettings;->mFontSize:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v2}, Lcom/android/settings/FontSizeListPreference;->directFontsize()V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget v2, p0, Lcom/android/settings/EasyDisplaySettings;->mDirect:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    .line 227
    iget-object v2, p0, Lcom/android/settings/EasyDisplaySettings;->mFontList:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v2}, Lcom/android/settings/flipfont/FontListPreference;->directFontList()V

    goto :goto_0
.end method

.method public readFontSizePreference(Landroid/preference/ListPreference;)V
    .locals 10
    .parameter "pref"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 183
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/EasyDisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    iget-object v5, p0, Lcom/android/settings/EasyDisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v5}, Lcom/android/settings/EasyDisplaySettings;->floatToIndex(F)I

    move-result v3

    .line 191
    .local v3, index:I
    const-string v5, "EasyDisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readFontSizePreference : font index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/EasyDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "font_size"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 193
    .local v1, fontIndex:I
    const-string v5, "EasyDisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readFontSizePreference : Settings.Global.FONT_SIZE : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    sget v5, Lcom/android/settings/EasyDisplaySettings;->HUGE_FONT_INDEX:I

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_0

    sget v5, Lcom/android/settings/EasyDisplaySettings;->HUGE_FONT_INDEX:I

    if-ne v1, v5, :cond_0

    .line 195
    sget v3, Lcom/android/settings/EasyDisplaySettings;->HUGE_FONT_INDEX:I

    .line 196
    const-string v5, "EasyDisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readFontSizePreference : Extra large font. index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    invoke-virtual {p1, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/EasyDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 204
    .local v4, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsFontSizeFeature()Z

    move-result v5

    if-ne v5, v9, :cond_1

    .line 205
    const v5, 0x7f0a001f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, fontSizeNames:[Ljava/lang/String;
    :goto_1
    const v5, 0x7f090583

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    aget-object v7, v2, v3

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 210
    return-void

    .line 184
    .end local v1           #fontIndex:I
    .end local v2           #fontSizeNames:[Ljava/lang/String;
    .end local v3           #index:I
    .end local v4           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "EasyDisplaySettings"

    const-string v6, "Unable to retrieve font size"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 207
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #fontIndex:I
    .restart local v3       #index:I
    .restart local v4       #res:Landroid/content/res/Resources;
    :cond_1
    const v5, 0x7f0a001d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .restart local v2       #fontSizeNames:[Ljava/lang/String;
    goto :goto_1
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 5
    .parameter "objValue"

    .prologue
    .line 281
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 282
    .local v1, fontScale:F
    const-string v2, "EasyDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeFontSizePreference : fontScale : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/high16 v2, 0x3fc0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 284
    sget v1, Lcom/android/settings/EasyDisplaySettings;->LARGE_FONT_SCALE:F

    .line 285
    const-string v2, "EasyDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeFontSizePreference : Extra large font. fontScale changed to : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_0
    iget-object v2, p0, Lcom/android/settings/EasyDisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iput v1, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 291
    iget v2, p0, Lcom/android/settings/EasyDisplaySettings;->mDirect:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 292
    const-string v2, "EasyDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeFontSizePreference1 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/EasyDisplaySettings;->mDirect:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/settings/EasyDisplaySettings;->mDirect:I

    .line 294
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/EasyDisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/EasyDisplaySettings;->finish()V

    .line 304
    .end local v1           #fontScale:F
    :goto_0
    return-void

    .line 297
    .restart local v1       #fontScale:F
    :cond_1
    const-string v2, "EasyDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeFontSizePreference2 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/EasyDisplaySettings;->mDirect:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/EasyDisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 301
    .end local v1           #fontScale:F
    :catch_0
    move-exception v0

    .line 302
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "EasyDisplaySettings"

    const-string v3, "Unable to save font size"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
