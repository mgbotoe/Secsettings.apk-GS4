.class public Lcom/android/settings/MouseHoveringSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MouseHoveringSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mIconLabels:Landroid/preference/CheckBoxPreference;

.field private mInforamtionPreview:Landroid/preference/CheckBoxPreference;

.field private mListScroll:Landroid/preference/CheckBoxPreference;

.field private mMagneticUI:Landroid/preference/CheckBoxPreference;

.field private mMouseHoveringObserver:Landroid/database/ContentObserver;

.field private mProgressBarPreview:Landroid/preference/CheckBoxPreference;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 76
    new-instance v0, Lcom/android/settings/MouseHoveringSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/MouseHoveringSettings$1;-><init>(Lcom/android/settings/MouseHoveringSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/MouseHoveringSettings;->mMouseHoveringObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MouseHoveringSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings;->mInforamtionPreview:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/MouseHoveringSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings;->mIconLabels:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/MouseHoveringSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings;->mListScroll:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/MouseHoveringSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings;->mProgressBarPreview:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/MouseHoveringSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings;->mMagneticUI:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/MouseHoveringSettings;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/MouseHoveringSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/MouseHoveringSettings;->broadcastMouseHoveringChanged(Z)V

    return-void
.end method

.method private broadcastMouseHoveringChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 385
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 387
    .local v0, finger_air_view_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 388
    invoke-virtual {p0}, Lcom/android/settings/MouseHoveringSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 389
    return-void
.end method

.method private makeTalkBackDisablePopup()V
    .locals 3

    .prologue
    .line 311
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/MouseHoveringSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090cbd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090cbc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/MouseHoveringSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/MouseHoveringSettings$3;-><init>(Lcom/android/settings/MouseHoveringSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/MouseHoveringSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/MouseHoveringSettings$2;-><init>(Lcom/android/settings/MouseHoveringSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 359
    return-void
.end method


# virtual methods
.method public isAllOptionDisabled()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/MouseHoveringSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/MouseHoveringSettings;->mResolver:Landroid/content/ContentResolver;

    .line 364
    const/4 v5, 0x0

    .line 365
    .local v5, informationPreview:I
    iget-object v9, p0, Lcom/android/settings/MouseHoveringSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "mouse_hovering_information_preview"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 367
    iget-object v9, p0, Lcom/android/settings/MouseHoveringSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "mouse_hovering_icon_label"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 369
    .local v0, IconLabels:I
    iget-object v9, p0, Lcom/android/settings/MouseHoveringSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "mouse_hovering_list_scroll"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 371
    .local v1, ListScroll:I
    iget-object v9, p0, Lcom/android/settings/MouseHoveringSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "mouse_hovering_highlight"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 373
    .local v4, highlight:I
    iget-object v9, p0, Lcom/android/settings/MouseHoveringSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "mouse_hovering_full_text"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 375
    .local v3, fullText:I
    const/4 v6, 0x0

    .line 376
    .local v6, progressBarPreview:I
    iget-object v9, p0, Lcom/android/settings/MouseHoveringSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "mouse_hovering_progress_bar_preview"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 378
    iget-object v9, p0, Lcom/android/settings/MouseHoveringSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "mouse_hovering_magnetic_ui"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 380
    .local v2, MagneticUI:I
    or-int v9, v5, v0

    or-int/2addr v9, v4

    or-int/2addr v9, v4

    or-int/2addr v9, v3

    or-int/2addr v9, v6

    or-int/2addr v9, v2

    if-ge v9, v7, :cond_0

    :goto_0
    return v7

    :cond_0
    move v7, v8

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 230
    if-eqz p2, :cond_1

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/MouseHoveringSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/android/settings/MouseHoveringSettings;->makeTalkBackDisablePopup()V

    .line 272
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MouseHoveringSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_hovering"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/MouseHoveringSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_hovering_highlight"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 238
    invoke-static {p2}, Lcom/sec/android/hardware/SecHardwareInterface;->enableHoverEvent(Z)Z

    .line 240
    invoke-direct {p0, p2}, Lcom/android/settings/MouseHoveringSettings;->broadcastMouseHoveringChanged(Z)V

    .line 242
    const-string v0, "MouseHoveringSettings"

    const-string v1, "switch is on"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings;->mInforamtionPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 245
    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings;->mIconLabels:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 246
    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings;->mListScroll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 249
    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings;->mProgressBarPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 250
    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings;->mMagneticUI:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/MouseHoveringSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_hovering"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/MouseHoveringSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_hovering_highlight"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 258
    invoke-static {p2}, Lcom/sec/android/hardware/SecHardwareInterface;->enableHoverEvent(Z)Z

    .line 260
    invoke-direct {p0, p2}, Lcom/android/settings/MouseHoveringSettings;->broadcastMouseHoveringChanged(Z)V

    .line 262
    const-string v0, "MouseHoveringSettings"

    const-string v1, "switch is off"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings;->mInforamtionPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 265
    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings;->mIconLabels:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 266
    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings;->mListScroll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 269
    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings;->mProgressBarPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 270
    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings;->mMagneticUI:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v5, 0x10

    const/4 v6, -0x2

    const/4 v4, 0x0

    .line 100
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const v2, 0x7f07005e

    invoke-virtual {p0, v2}, Lcom/android/settings/MouseHoveringSettings;->addPreferencesFromResource(I)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/MouseHoveringSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/MouseHoveringSettings;->mActivity:Landroid/app/Activity;

    .line 105
    new-instance v2, Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings/MouseHoveringSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/MouseHoveringSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 107
    iget-object v2, p0, Lcom/android/settings/MouseHoveringSettings;->mActivity:Landroid/app/Activity;

    instance-of v2, v2, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/settings/MouseHoveringSettings;->mActivity:Landroid/app/Activity;

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 109
    .local v1, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    .end local v1           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings/MouseHoveringSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/MouseHoveringSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/MouseHoveringSettings;->mResolver:Landroid/content/ContentResolver;

    .line 129
    const-string v2, "information_preview"

    invoke-virtual {p0, v2}, Lcom/android/settings/MouseHoveringSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/MouseHoveringSettings;->mInforamtionPreview:Landroid/preference/CheckBoxPreference;

    .line 130
    const-string v2, "icon_labels"

    invoke-virtual {p0, v2}, Lcom/android/settings/MouseHoveringSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/MouseHoveringSettings;->mIconLabels:Landroid/preference/CheckBoxPreference;

    .line 131
    const-string v2, "list_scrolling"

    invoke-virtual {p0, v2}, Lcom/android/settings/MouseHoveringSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/MouseHoveringSettings;->mListScroll:Landroid/preference/CheckBoxPreference;

    .line 134
    const-string v2, "progress_bar_preview"

    invoke-virtual {p0, v2}, Lcom/android/settings/MouseHoveringSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/MouseHoveringSettings;->mProgressBarPreview:Landroid/preference/CheckBoxPreference;

    .line 135
    const-string v2, "magnetic_ui"

    invoke-virtual {p0, v2}, Lcom/android/settings/MouseHoveringSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/MouseHoveringSettings;->mMagneticUI:Landroid/preference/CheckBoxPreference;

    .line 137
    return-void

    .line 110
    .restart local v1       #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/MouseHoveringSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 112
    .local v0, padding:I
    iget-object v2, p0, Lcom/android/settings/MouseHoveringSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v0, v4}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 113
    iget-object v2, p0, Lcom/android/settings/MouseHoveringSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 116
    iget-object v2, p0, Lcom/android/settings/MouseHoveringSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/MouseHoveringSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 121
    iget-object v2, p0, Lcom/android/settings/MouseHoveringSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/MouseHoveringSettings;->mActionBarLayout:Landroid/view/View;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 203
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/MouseHoveringSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const/4 v0, 0x1

    const v1, 0x7f090e92

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020196

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 209
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 214
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 223
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 216
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "air_view"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/MouseHoveringSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 220
    const/4 v1, 0x1

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 177
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/MouseHoveringSettings;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/MouseHoveringSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_hovering"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/MouseHoveringSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090e7c

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/MouseHoveringSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_hovering"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/MouseHoveringSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_hovering_highlight"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 183
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->enableHoverEvent(Z)Z

    .line 184
    invoke-direct {p0, v2}, Lcom/android/settings/MouseHoveringSettings;->broadcastMouseHoveringChanged(Z)V

    .line 186
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 277
    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings;->mInforamtionPreview:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/MouseHoveringSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mouse_hovering_information_preview"

    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings;->mInforamtionPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 295
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/MouseHoveringSettings;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 303
    :cond_0
    :goto_2
    return v1

    :cond_1
    move v0, v2

    .line 278
    goto :goto_0

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings;->mIconLabels:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/MouseHoveringSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mouse_hovering_icon_label"

    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings;->mIconLabels:Landroid/preference/CheckBoxPreference;

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

    .line 281
    :cond_4
    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings;->mListScroll:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_6

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/MouseHoveringSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mouse_hovering_list_scroll"

    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings;->mListScroll:Landroid/preference/CheckBoxPreference;

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

    .line 287
    :cond_6
    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings;->mProgressBarPreview:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_8

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/MouseHoveringSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mouse_hovering_progress_bar_preview"

    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings;->mProgressBarPreview:Landroid/preference/CheckBoxPreference;

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

    .line 289
    :cond_8
    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings;->mMagneticUI:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_a

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/MouseHoveringSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mouse_hovering_magnetic_ui"

    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings;->mMagneticUI:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_6
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_9
    move v0, v2

    goto :goto_6

    .line 292
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_2
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 141
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 142
    const-string v3, "MouseHoveringSettings"

    const-string v4, "onResume()"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v3, p0, Lcom/android/settings/MouseHoveringSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 145
    iget-object v3, p0, Lcom/android/settings/MouseHoveringSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/MouseHoveringSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MouseHoveringSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/MouseHoveringSettings;->mResolver:Landroid/content/ContentResolver;

    .line 151
    iget-object v3, p0, Lcom/android/settings/MouseHoveringSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "mouse_hovering"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 153
    .local v0, MouseHoveringViewState:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/MouseHoveringSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 155
    iget-object v3, p0, Lcom/android/settings/MouseHoveringSettings;->mInforamtionPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 156
    iget-object v3, p0, Lcom/android/settings/MouseHoveringSettings;->mIconLabels:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 157
    iget-object v3, p0, Lcom/android/settings/MouseHoveringSettings;->mListScroll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 160
    iget-object v3, p0, Lcom/android/settings/MouseHoveringSettings;->mProgressBarPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 161
    iget-object v3, p0, Lcom/android/settings/MouseHoveringSettings;->mMagneticUI:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 163
    iget-object v4, p0, Lcom/android/settings/MouseHoveringSettings;->mInforamtionPreview:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/MouseHoveringSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "mouse_hovering_information_preview"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 164
    iget-object v4, p0, Lcom/android/settings/MouseHoveringSettings;->mIconLabels:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/MouseHoveringSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "mouse_hovering_icon_label"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 165
    iget-object v4, p0, Lcom/android/settings/MouseHoveringSettings;->mListScroll:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/MouseHoveringSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "mouse_hovering_list_scroll"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 168
    iget-object v4, p0, Lcom/android/settings/MouseHoveringSettings;->mProgressBarPreview:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/MouseHoveringSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "mouse_hovering_progress_bar_preview"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    move v3, v1

    :goto_4
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 169
    iget-object v3, p0, Lcom/android/settings/MouseHoveringSettings;->mMagneticUI:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/MouseHoveringSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "mouse_hovering_magnetic_ui"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 171
    iget-object v2, p0, Lcom/android/settings/MouseHoveringSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "mouse_hovering"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/MouseHoveringSettings;->mMouseHoveringObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 173
    return-void

    .end local v0           #MouseHoveringViewState:Z
    :cond_2
    move v0, v2

    .line 151
    goto :goto_0

    .restart local v0       #MouseHoveringViewState:Z
    :cond_3
    move v3, v2

    .line 163
    goto :goto_1

    :cond_4
    move v3, v2

    .line 164
    goto :goto_2

    :cond_5
    move v3, v2

    .line 165
    goto :goto_3

    :cond_6
    move v3, v2

    .line 168
    goto :goto_4
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 192
    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/MouseHoveringSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MouseHoveringSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MouseHoveringSettings;->mMouseHoveringObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 198
    return-void
.end method
