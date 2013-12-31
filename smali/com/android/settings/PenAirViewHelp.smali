.class public Lcom/android/settings/PenAirViewHelp;
.super Landroid/app/Fragment;
.source "PenAirViewHelp.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mDBItem:Ljava/lang/String;

.field private mDisableAirCommandDialog:Landroid/app/AlertDialog;

.field private mHelpType:Ljava/lang/String;

.field private mTurnOnDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 83
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    .line 85
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/android/settings/PenAirViewHelp;->mTurnOnDialog:Landroid/app/AlertDialog;

    .line 89
    iput-object v1, p0, Lcom/android/settings/PenAirViewHelp;->mDisableAirCommandDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PenAirViewHelp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/PenAirViewHelp;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings/PenAirViewHelp;->showTurnOnDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/PenAirViewHelp;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private dismissAllDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 418
    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mTurnOnDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mTurnOnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 420
    iput-object v1, p0, Lcom/android/settings/PenAirViewHelp;->mTurnOnDialog:Landroid/app/AlertDialog;

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mDisableAirCommandDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mDisableAirCommandDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 424
    iput-object v1, p0, Lcom/android/settings/PenAirViewHelp;->mDisableAirCommandDialog:Landroid/app/AlertDialog;

    .line 426
    :cond_1
    return-void
.end method

.method private showInforPreviewDisableDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "type"

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/android/settings/PenAirViewHelp;->dismissAllDialog()V

    .line 270
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090e78

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090e4c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09074d

    new-instance v2, Lcom/android/settings/PenAirViewHelp$7;

    invoke-direct {v2, p0}, Lcom/android/settings/PenAirViewHelp$7;-><init>(Lcom/android/settings/PenAirViewHelp;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090173

    new-instance v2, Lcom/android/settings/PenAirViewHelp$6;

    invoke-direct {v2, p0}, Lcom/android/settings/PenAirViewHelp$6;-><init>(Lcom/android/settings/PenAirViewHelp;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mDisableAirCommandDialog:Landroid/app/AlertDialog;

    .line 284
    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mDisableAirCommandDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/PenAirViewHelp$8;

    invoke-direct {v1, p0}, Lcom/android/settings/PenAirViewHelp$8;-><init>(Lcom/android/settings/PenAirViewHelp;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 290
    return-void
.end method

.method private showTurnOnDialog(Ljava/lang/String;)V
    .locals 11
    .parameter "type"

    .prologue
    const v10, 0x7f090cc3

    const v9, 0x7f090cc1

    const v8, 0x7f090e74

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 293
    invoke-direct {p0}, Lcom/android/settings/PenAirViewHelp;->dismissAllDialog()V

    .line 294
    move-object v3, p1

    .line 295
    .local v3, tutorial_type:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 296
    .local v1, res:Landroid/content/res/Resources;
    const v4, 0x7f090e9f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, title:Ljava/lang/String;
    const v4, 0x7f090ea0

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, message:Ljava/lang/String;
    const-string v4, "pointer"

    iget-object v5, p0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 300
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 331
    :cond_0
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f09074d

    new-instance v6, Lcom/android/settings/PenAirViewHelp$9;

    invoke-direct {v6, p0, v3}, Lcom/android/settings/PenAirViewHelp$9;-><init>(Lcom/android/settings/PenAirViewHelp;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090173

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/PenAirViewHelp;->mTurnOnDialog:Landroid/app/AlertDialog;

    .line 339
    return-void

    .line 304
    :cond_1
    const-string v4, "information_preview"

    iget-object v5, p0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 305
    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 309
    :cond_2
    const-string v4, "progress_preview"

    iget-object v5, p0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 310
    const v4, 0x7f090e43

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 311
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const v6, 0x7f090e43

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 314
    :cond_3
    const-string v4, "speed_dial_preview"

    iget-object v5, p0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 315
    const v4, 0x7f090e45

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 316
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const v6, 0x7f090e45

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 319
    :cond_4
    const-string v4, "icon_label"

    iget-object v5, p0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 320
    const v4, 0x7f090cc5

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const v6, 0x7f090cc5

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 324
    :cond_5
    const-string v4, "list_scroll"

    iget-object v5, p0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 325
    const v4, 0x7f090cc7

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 326
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const v6, 0x7f090cc7

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 256
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v4, "default"

    iget-object v5, p0, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 257
    if-nez p2, :cond_1

    iget-object v4, p0, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    const-string v5, "pen_hovering_information_preview"

    if-ne v4, v5, :cond_1

    .line 258
    const-string v4, "air_button_onoff"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 259
    .local v1, status:I
    if-ne v1, v2, :cond_1

    .line 260
    const-string v2, "information_preview"

    invoke-direct {p0, v2}, Lcom/android/settings/PenAirViewHelp;->showInforPreviewDisableDialog(Ljava/lang/String;)V

    .line 266
    .end local v1           #status:I
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v4, p0, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    if-eqz p2, :cond_2

    :goto_1
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 94
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 96
    .local v0, arguments:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 97
    const-string v3, "type"

    const-string v4, "default"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 100
    .local v1, mActivity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/PenAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    .line 101
    instance-of v3, v1, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    .line 102
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 104
    .local v2, padding:I
    iget-object v3, p0, Lcom/android/settings/PenAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v2, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 105
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 107
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/PenAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 112
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/PenAirViewHelp;->mActionBarLayout:Landroid/view/View;

    .line 114
    .end local v2           #padding:I
    :cond_1
    iget-object v3, p0, Lcom/android/settings/PenAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 120
    const/4 v9, 0x0

    .line 121
    .local v9, view:Landroid/view/View;
    const v10, 0x7f04008f

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 122
    const v10, 0x7f0b01ad

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 124
    .local v1, helpContent:Landroid/widget/LinearLayout;
    const-string v10, "pointer"

    iget-object v11, p0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 125
    const-string v10, "pen_hovering_pointer"

    iput-object v10, p0, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 126
    new-instance v5, Lcom/android/settings/HelpItem;

    invoke-direct {v5, p1}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 127
    .local v5, pointer:Lcom/android/settings/HelpItem;
    const/16 v10, 0x8

    invoke-virtual {v5, v10}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 128
    const v10, 0x7f090e6d

    invoke-virtual {v5, v10}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 129
    const v10, 0x7f020121

    invoke-virtual {v5, v10}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 130
    invoke-virtual {v5}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 228
    .end local v5           #pointer:Lcom/android/settings/HelpItem;
    :cond_0
    :goto_0
    return-object v9

    .line 131
    :cond_1
    const-string v10, "information_preview"

    iget-object v11, p0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 132
    const-string v10, "pen_hovering_information_preview"

    iput-object v10, p0, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 133
    new-instance v3, Lcom/android/settings/HelpItem;

    invoke-direct {v3, p1}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 134
    .local v3, informatoin_preview:Lcom/android/settings/HelpItem;
    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 135
    const v10, 0x7f090e6e

    invoke-virtual {v3, v10}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 136
    const v10, 0x7f02035d

    invoke-virtual {v3, v10}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 138
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 139
    new-instance v10, Lcom/android/settings/PenAirViewHelp$1;

    invoke-direct {v10, p0}, Lcom/android/settings/PenAirViewHelp$1;-><init>(Lcom/android/settings/PenAirViewHelp;)V

    invoke-virtual {v3, v10}, Lcom/android/settings/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 149
    .end local v3           #informatoin_preview:Lcom/android/settings/HelpItem;
    :cond_2
    const-string v10, "progress_preview"

    iget-object v11, p0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 150
    const-string v10, "pen_hovering_progress_preview"

    iput-object v10, p0, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 151
    new-instance v6, Lcom/android/settings/HelpItem;

    invoke-direct {v6, p1}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 152
    .local v6, progress_bar_preview:Lcom/android/settings/HelpItem;
    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 153
    const v10, 0x7f090e6f

    invoke-virtual {v6, v10}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 154
    const v10, 0x7f02035f

    invoke-virtual {v6, v10}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 155
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 156
    new-instance v10, Lcom/android/settings/PenAirViewHelp$2;

    invoke-direct {v10, p0}, Lcom/android/settings/PenAirViewHelp$2;-><init>(Lcom/android/settings/PenAirViewHelp;)V

    invoke-virtual {v6, v10}, Lcom/android/settings/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    invoke-virtual {v6}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 166
    .end local v6           #progress_bar_preview:Lcom/android/settings/HelpItem;
    :cond_3
    const-string v10, "speed_dial_preview"

    iget-object v11, p0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 167
    const-string v10, "pen_hovering_speed_dial_preview"

    iput-object v10, p0, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 168
    new-instance v8, Lcom/android/settings/HelpItem;

    invoke-direct {v8, p1}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 169
    .local v8, speed_dial_preview:Lcom/android/settings/HelpItem;
    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 170
    const v10, 0x7f090e70

    invoke-virtual {v8, v10}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 171
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    .line 172
    .local v7, salesCode:Ljava/lang/String;
    const-string v10, "ATT"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "SPR"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "VZW"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "TMB"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "USC"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "VMU"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "BST"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "XAS"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 174
    :cond_4
    const v10, 0x7f020361

    invoke-virtual {v8, v10}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 178
    :goto_1
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 179
    new-instance v10, Lcom/android/settings/PenAirViewHelp$3;

    invoke-direct {v10, p0}, Lcom/android/settings/PenAirViewHelp$3;-><init>(Lcom/android/settings/PenAirViewHelp;)V

    invoke-virtual {v8, v10}, Lcom/android/settings/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    invoke-virtual {v8}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 176
    :cond_5
    const v10, 0x7f020360

    invoke-virtual {v8, v10}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    goto :goto_1

    .line 189
    .end local v7           #salesCode:Ljava/lang/String;
    .end local v8           #speed_dial_preview:Lcom/android/settings/HelpItem;
    :cond_6
    const-string v10, "icon_label"

    iget-object v11, p0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 190
    const-string v10, "pen_hovering_icon_label"

    iput-object v10, p0, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 191
    new-instance v2, Lcom/android/settings/HelpItem;

    invoke-direct {v2, p1}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 192
    .local v2, icon_label:Lcom/android/settings/HelpItem;
    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090e71

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, contents:Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 195
    const v10, 0x7f02035c

    invoke-virtual {v2, v10}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 196
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 197
    new-instance v10, Lcom/android/settings/PenAirViewHelp$4;

    invoke-direct {v10, p0}, Lcom/android/settings/PenAirViewHelp$4;-><init>(Lcom/android/settings/PenAirViewHelp;)V

    invoke-virtual {v2, v10}, Lcom/android/settings/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    invoke-virtual {v2}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 207
    .end local v0           #contents:Ljava/lang/String;
    .end local v2           #icon_label:Lcom/android/settings/HelpItem;
    :cond_7
    const-string v10, "list_scroll"

    iget-object v11, p0, Lcom/android/settings/PenAirViewHelp;->mHelpType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 208
    const-string v10, "pen_hovering_list_scroll"

    iput-object v10, p0, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    .line 209
    new-instance v4, Lcom/android/settings/HelpItem;

    invoke-direct {v4, p1}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 210
    .local v4, list_scroll:Lcom/android/settings/HelpItem;
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090e72

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    .restart local v0       #contents:Ljava/lang/String;
    invoke-virtual {v4, v0}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 214
    const v10, 0x7f02035e

    invoke-virtual {v4, v10}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 215
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 216
    new-instance v10, Lcom/android/settings/PenAirViewHelp$5;

    invoke-direct {v10, p0}, Lcom/android/settings/PenAirViewHelp$5;-><init>(Lcom/android/settings/PenAirViewHelp;)V

    invoke-virtual {v4, v10}, Lcom/android/settings/HelpItem;->setOnTryBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    invoke-virtual {v4}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 232
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 233
    iget-object v3, p0, Lcom/android/settings/PenAirViewHelp;->mActionBarLayout:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 234
    iget-object v3, p0, Lcom/android/settings/PenAirViewHelp;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 238
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "default"

    iget-object v4, p0, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 239
    iget-object v3, p0, Lcom/android/settings/PenAirViewHelp;->mDBItem:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    .line 240
    .local v1, status:Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/PenAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 242
    .end local v1           #status:Z
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 239
    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 246
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 247
    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 251
    :cond_0
    return-void
.end method

.method public startTryActually(Ljava/lang/String;)V
    .locals 7
    .parameter "type"

    .prologue
    const/4 v5, 0x1

    .line 342
    const-string v3, "pointer"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    const-string v3, "information_preview"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 344
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.samsung.helpplugin"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 346
    const-string v3, "information_preview"

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 349
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 350
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "image/jpg"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    const-string v3, "com.sec.android.gallery3d"

    const-string v4, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    const-string v3, "IsHelpMode"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 354
    const-string v3, "HelpMode"

    const-string v4, "INFORMATION_PREVIEW"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewHelp;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 356
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    const-string v3, "progress_preview"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 357
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 358
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.samsung.helpplugin"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 359
    const-string v3, "progress_preview"

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 361
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "video_help"

    const-string v5, "raw"

    const-string v6, "com.samsung.helpplugin"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/Utils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 363
    .local v2, resId:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 364
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.START_HELP_VIDEO_PROGRESS_BAR_PREVIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 366
    .restart local v0       #intent:Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.resource://com.samsung.helpplugin/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "video/mp4"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const-string v3, "type"

    const-string v4, "pen"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewHelp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 372
    .end local v0           #intent:Landroid/content/Intent;
    :cond_5
    const-string v3, "PenAirViewHelp"

    const-string v4, "The Video resource not downloaded yet"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 376
    .end local v2           #resId:I
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.START_HELP_VIDEO_PROGRESS_BAR_PREVIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 378
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v3, "file:///system/media/video/video_help.mp4"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "video/mp4"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    const-string v3, "type"

    const-string v4, "pen"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewHelp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 383
    .end local v0           #intent:Landroid/content/Intent;
    :cond_7
    const-string v3, "speed_dial_preview"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 385
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.jcontacts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 388
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.jcontacts.action.DialerHelpActivity"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 392
    .local v1, mIntent:Landroid/content/Intent;
    :goto_1
    const-string v3, "DialerGuideMode"

    const-string v4, "SPEED_DIAL_TIP_TUTORIAL"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    invoke-virtual {p0, v1}, Lcom/android/settings/PenAirViewHelp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 390
    .end local v1           #mIntent:Landroid/content/Intent;
    :cond_8
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.contacts.action.DialerHelpActivity"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1       #mIntent:Landroid/content/Intent;
    goto :goto_1

    .line 394
    .end local v1           #mIntent:Landroid/content/Intent;
    :cond_9
    const-string v3, "icon_label"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 395
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 396
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v3, "com.sec.android.gallery3d"

    const-string v4, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    const-string v3, "IsHelpMode"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 399
    const-string v3, "HelpMode"

    const-string v4, "ICON_LABELS"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewHelp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 401
    .end local v0           #intent:Landroid/content/Intent;
    :cond_a
    const-string v3, "list_scroll"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 402
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.samsung.helpplugin"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 404
    const-string v3, "list_scroll"

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 407
    :cond_b
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 408
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v3, "image/jpg"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    const-string v3, "com.sec.android.gallery3d"

    const-string v4, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    const-string v3, "IsHelpMode"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 412
    const-string v3, "HelpMode"

    const-string v4, "AIR_VIEW_LIST_SCROLLING"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewHelp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
