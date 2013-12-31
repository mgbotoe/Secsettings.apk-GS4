.class public Lcom/android/settings/ContextualPageSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ContextualPageSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private car_cardle_state:I

.field private desk_cradle_state:I

.field private dock_state:I

.field private earphone_state:I

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mContextualPageEnabler:Lcom/android/settings/ContextualPageEnabler;

.field private mContextualPageObserver:Landroid/database/ContentObserver;

.field private mContextualPage_car_cradle:Landroid/preference/CheckBoxPreference;

.field private mContextualPage_desk_cradle:Landroid/preference/CheckBoxPreference;

.field private mContextualPage_dock:Landroid/preference/CheckBoxPreference;

.field private mContextualPage_earphone:Landroid/preference/CheckBoxPreference;

.field private mContextualPage_roaming:Landroid/preference/CheckBoxPreference;

.field private mContextualPage_s_pen:Landroid/preference/CheckBoxPreference;

.field private roaming_state:I

.field private s_pen_state:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 76
    new-instance v0, Lcom/android/settings/ContextualPageSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ContextualPageSettings$1;-><init>(Lcom/android/settings/ContextualPageSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPageObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ContextualPageSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/ContextualPageSettings;->updateContextualPageSaving()V

    return-void
.end method

.method private updateContextualPageSaving()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "contextual_page"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 204
    .local v0, State:I
    const-string v1, "ContextualPageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateContextualPageSaving : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    if-nez v0, :cond_0

    .line 206
    iget-object v1, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_s_pen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 207
    iget-object v1, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_earphone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 208
    iget-object v1, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_dock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 209
    iget-object v1, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_car_cradle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 210
    iget-object v1, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_desk_cradle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 211
    iget-object v1, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_roaming:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 221
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ContextualPageSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 214
    iget-object v1, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_s_pen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 215
    iget-object v1, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_earphone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 216
    iget-object v1, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_dock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 217
    iget-object v1, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_car_cradle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 218
    iget-object v1, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_desk_cradle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 219
    iget-object v1, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_roaming:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public isAllOptionDisabled()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "contextual_page_s_pen"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 255
    .local v5, SpenScreen:I
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "contextual_page_earphone"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 256
    .local v3, EarphoneScreen:I
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "contextual_page_audio_dock"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 257
    .local v2, DockScreen:I
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "contextual_page_car_cradle"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 258
    .local v0, CarCardleScreen:I
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "contextual_page_desk_cardle"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 259
    .local v1, DeskCradleScreen:I
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "contextual_page_roaming"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 262
    .local v4, RoamingScreen:I
    if-nez v3, :cond_0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v4, :cond_0

    move v6, v7

    .line 269
    .local v6, retVal:Z
    :goto_0
    if-eqz v6, :cond_1

    if-nez v2, :cond_1

    move v6, v7

    .line 272
    :goto_1
    const-string v7, "ContextualPageSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isAllOptionDisabled() : SpenScreen : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " EarphoneScreen : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " DockScreen : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " CarCardleScreen : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " DeskCradleScreen : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " RoamingScreen : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " retVal : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return v6

    .end local v6           #retVal:Z
    :cond_0
    move v6, v8

    .line 262
    goto :goto_0

    .restart local v6       #retVal:Z
    :cond_1
    move v6, v8

    .line 269
    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 225
    const-string v0, "ContextualPageSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "contextual_page"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 227
    invoke-direct {p0}, Lcom/android/settings/ContextualPageSettings;->updateContextualPageSaving()V

    .line 228
    return-void

    .line 226
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0x10

    const/4 v10, -0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 85
    const-string v4, "ContextualPageSettings"

    const-string v7, "onCreate() "

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v4, 0x7f070026

    invoke-virtual {p0, v4}, Lcom/android/settings/ContextualPageSettings;->addPreferencesFromResource(I)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 91
    .local v0, activity:Landroid/app/Activity;
    new-instance v4, Landroid/widget/Switch;

    invoke-direct {v4, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/ContextualPageSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 93
    instance-of v4, v0, Landroid/preference/PreferenceActivity;

    if-eqz v4, :cond_0

    move-object v2, v0

    .line 94
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 95
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0f001b

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 97
    .local v1, padding:I
    iget-object v4, p0, Lcom/android/settings/ContextualPageSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v6, v6, v1, v6}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 98
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 100
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/ContextualPageSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const/16 v9, 0x15

    invoke-direct {v8, v10, v10, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v7, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 104
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/ContextualPageSettings;->mActionBarLayout:Landroid/view/View;

    .line 105
    iget-object v4, p0, Lcom/android/settings/ContextualPageSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->requestFocus()Z

    .line 108
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_0
    new-instance v4, Lcom/android/settings/ContextualPageEnabler;

    iget-object v7, p0, Lcom/android/settings/ContextualPageSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v4, v0, v7}, Lcom/android/settings/ContextualPageEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v4, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPageEnabler:Lcom/android/settings/ContextualPageEnabler;

    .line 110
    const-string v4, "contextual_page_s_pen"

    invoke-virtual {p0, v4}, Lcom/android/settings/ContextualPageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_s_pen:Landroid/preference/CheckBoxPreference;

    .line 111
    iget-object v7, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_s_pen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "contextual_page_s_pen"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 112
    const-string v4, "contextual_page_earphone"

    invoke-virtual {p0, v4}, Lcom/android/settings/ContextualPageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_earphone:Landroid/preference/CheckBoxPreference;

    .line 113
    iget-object v7, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_earphone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "contextual_page_earphone"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 114
    const-string v4, "contextual_page_dock"

    invoke-virtual {p0, v4}, Lcom/android/settings/ContextualPageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_dock:Landroid/preference/CheckBoxPreference;

    .line 115
    iget-object v7, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_dock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "contextual_page_audio_dock"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 116
    const-string v4, "contextual_page_car_cradle"

    invoke-virtual {p0, v4}, Lcom/android/settings/ContextualPageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_car_cradle:Landroid/preference/CheckBoxPreference;

    .line 117
    iget-object v7, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_car_cradle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "contextual_page_car_cradle"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 118
    const-string v4, "contextual_page_desk_cradle"

    invoke-virtual {p0, v4}, Lcom/android/settings/ContextualPageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_desk_cradle:Landroid/preference/CheckBoxPreference;

    .line 119
    iget-object v7, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_desk_cradle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "contextual_page_desk_cardle"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    :goto_4
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 120
    const-string v4, "contextual_page_roaming"

    invoke-virtual {p0, v4}, Lcom/android/settings/ContextualPageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_roaming:Landroid/preference/CheckBoxPreference;

    .line 121
    iget-object v4, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_roaming:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "contextual_page_roaming"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_6

    :goto_5
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "contextual_page_s_pen"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/ContextualPageSettings;->s_pen_state:I

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "contextual_page_earphone"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/ContextualPageSettings;->earphone_state:I

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "contextual_page_audio_dock"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/ContextualPageSettings;->dock_state:I

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "contextual_page_car_cradle"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/ContextualPageSettings;->car_cardle_state:I

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "contextual_page_desk_cardle"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/ContextualPageSettings;->desk_cradle_state:I

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "contextual_page_roaming"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/ContextualPageSettings;->roaming_state:I

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 135
    .local v3, ps:Landroid/preference/PreferenceScreen;
    iget-object v4, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_s_pen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 141
    iget-object v4, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_car_cradle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 144
    iget-object v4, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_desk_cradle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 146
    return-void

    .end local v3           #ps:Landroid/preference/PreferenceScreen;
    :cond_1
    move v4, v6

    .line 111
    goto/16 :goto_0

    :cond_2
    move v4, v6

    .line 113
    goto/16 :goto_1

    :cond_3
    move v4, v6

    .line 115
    goto/16 :goto_2

    :cond_4
    move v4, v6

    .line 117
    goto/16 :goto_3

    :cond_5
    move v4, v6

    .line 119
    goto/16 :goto_4

    :cond_6
    move v5, v6

    .line 121
    goto :goto_5
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 166
    const-string v1, "ContextualPageSettings"

    const-string v2, "onPause() "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 169
    iget v1, p0, Lcom/android/settings/ContextualPageSettings;->s_pen_state:I

    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "contextual_page_s_pen"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/ContextualPageSettings;->earphone_state:I

    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "contextual_page_earphone"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/ContextualPageSettings;->dock_state:I

    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "contextual_page_audio_dock"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/ContextualPageSettings;->car_cardle_state:I

    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "contextual_page_car_cradle"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/ContextualPageSettings;->desk_cradle_state:I

    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "contextual_page_desk_cardle"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/ContextualPageSettings;->roaming_state:I

    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "contextual_page_roaming"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 175
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.CONTEXTUALPAGE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ContextualPageSettings"

    const-string v2, "onPause() CONTEXTUALPAGE_CHANGED"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 180
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->isAllOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "contextual_page"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 182
    iget-object v1, p0, Lcom/android/settings/ContextualPageSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 183
    iget-object v1, p0, Lcom/android/settings/ContextualPageSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 188
    :goto_0
    iget-object v1, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPageEnabler:Lcom/android/settings/ContextualPageEnabler;

    invoke-virtual {v1}, Lcom/android/settings/ContextualPageEnabler;->pause()V

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 190
    return-void

    .line 185
    :cond_2
    iget-object v1, p0, Lcom/android/settings/ContextualPageSettings;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 231
    iget-object v0, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_s_pen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "contextual_page_s_pen"

    iget-object v0, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_s_pen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 244
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 245
    iget-object v0, p0, Lcom/android/settings/ContextualPageSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 250
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    move v0, v2

    .line 232
    goto :goto_0

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_earphone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "contextual_page_earphone"

    iget-object v0, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_earphone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_3

    .line 235
    :cond_4
    iget-object v0, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_dock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "contextual_page_audio_dock"

    iget-object v0, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_dock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_4
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_4

    .line 237
    :cond_6
    iget-object v0, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_car_cradle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "contextual_page_car_cradle"

    iget-object v0, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_car_cradle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_5
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_5

    .line 239
    :cond_8
    iget-object v0, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_desk_cradle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "contextual_page_desk_cardle"

    iget-object v0, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_desk_cradle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_6
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_9
    move v0, v2

    goto :goto_6

    .line 241
    :cond_a
    iget-object v0, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_roaming:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "contextual_page_roaming"

    iget-object v0, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_roaming:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_7
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_b
    move v0, v2

    goto :goto_7

    .line 247
    :cond_c
    iget-object v0, p0, Lcom/android/settings/ContextualPageSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 149
    const-string v0, "ContextualPageSettings"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 152
    iget-object v0, p0, Lcom/android/settings/ContextualPageSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/settings/ContextualPageSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 158
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ContextualPageSettings;->updateContextualPageSaving()V

    .line 159
    iget-object v0, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPageEnabler:Lcom/android/settings/ContextualPageEnabler;

    invoke-virtual {v0}, Lcom/android/settings/ContextualPageEnabler;->resume()V

    .line 160
    iget-object v0, p0, Lcom/android/settings/ContextualPageSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "contextual_page"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 162
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 194
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 195
    const-string v0, "ContextualPageSettings"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/android/settings/ContextualPageSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/settings/ContextualPageSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 200
    :cond_0
    return-void
.end method
