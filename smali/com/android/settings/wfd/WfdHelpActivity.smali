.class public Lcom/android/settings/wfd/WfdHelpActivity;
.super Landroid/app/Activity;
.source "WfdHelpActivity.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mInSettingsMode:Z

.field private mIsReadOnlyChecked:Z

.field private mMenuItemLearnNfc:Landroid/view/MenuItem;

.field private mMenuItemStartLink:Landroid/view/MenuItem;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWriteTagMode:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    const-string v0, "WfdHelpActivity"

    iput-object v0, p0, Lcom/android/settings/wfd/WfdHelpActivity;->TAG:Ljava/lang/String;

    .line 66
    iput-object v2, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mMenuItemLearnNfc:Landroid/view/MenuItem;

    .line 67
    iput-object v2, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mMenuItemStartLink:Landroid/view/MenuItem;

    .line 69
    iput-boolean v1, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mInSettingsMode:Z

    .line 82
    iput-boolean v1, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mIsReadOnlyChecked:Z

    .line 83
    new-instance v0, Lcom/android/settings/wfd/WfdHelpActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WfdHelpActivity$1;-><init>(Lcom/android/settings/wfd/WfdHelpActivity;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 90
    new-instance v0, Lcom/android/settings/wfd/WfdHelpActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WfdHelpActivity$2;-><init>(Lcom/android/settings/wfd/WfdHelpActivity;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/wfd/WfdHelpActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mIsReadOnlyChecked:Z

    return p1
.end method

.method public static changeNfcEnabled(Landroid/content/Context;Z)Z
    .locals 6
    .parameter "context"
    .parameter "enabled"

    .prologue
    const/4 v5, 0x0

    .line 241
    move v1, p1

    .line 242
    .local v1, desiredState:Z
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    .line 243
    .local v2, nfcAdapter:Landroid/nfc/NfcAdapter;
    const-string v0, "WfdHelpActivity"

    .line 245
    .local v0, TAG:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 291
    :goto_0
    return v5

    .line 250
    :cond_0
    new-instance v3, Lcom/android/settings/wfd/WfdHelpActivity$5;

    const-string v4, "toggleNFC"

    invoke-direct {v3, v4, v1, v2}, Lcom/android/settings/wfd/WfdHelpActivity$5;-><init>(Ljava/lang/String;ZLandroid/nfc/NfcAdapter;)V

    invoke-virtual {v3}, Lcom/android/settings/wfd/WfdHelpActivity$5;->start()V

    goto :goto_0
.end method

.method private isWfdConnected()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 458
    const-string v2, "wfd"

    invoke-virtual {p0, v2}, Lcom/android/settings/wfd/WfdHelpActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdManager;

    .line 459
    .local v0, wfdManager:Lcom/samsung/wfd/WfdManager;
    if-eqz v0, :cond_1

    .line 460
    const-string v2, "WfdHelpActivity"

    const-string v3, "AllShare Cast is turned on..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdManager;->setWfdEnabledDialog(Z)Z

    .line 466
    :goto_0
    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 476
    :cond_0
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 463
    :cond_1
    const-string v2, "WfdHelpActivity"

    const-string v3, "mWfdManager is null !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 472
    :pswitch_0
    const-string v2, "WfdHelpActivity"

    const-string v3, "isWfdConnected >> true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 468
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private makeNdefMessage(Ljava/lang/String;)Landroid/nfc/NdefMessage;
    .locals 5
    .parameter "addr"

    .prologue
    .line 394
    const-string v2, "WfdHelpActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "make Ndef message - addr : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 398
    .local v0, addrBytes:[B
    const-string v2, "com.android.settings.wfd"

    const-string v3, "addr"

    invoke-static {v2, v3, v0}, Landroid/nfc/NdefRecord;->createExternal(Ljava/lang/String;Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 400
    .local v1, addrRecord:Landroid/nfc/NdefRecord;
    new-instance v2, Landroid/nfc/NdefMessage;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-direct {v2, v3}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    return-object v2
.end method

.method private setHelpText()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 227
    const v3, 0x7f0b0478

    invoke-virtual {p0, v3}, Lcom/android/settings/wfd/WfdHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/IndexedTextLayout;

    .line 228
    .local v0, idxTextLayout:Lcom/android/settings/wfd/IndexedTextLayout;
    const v3, 0x7f0904ea

    invoke-virtual {v0, v3}, Lcom/android/settings/wfd/IndexedTextLayout;->addContent(I)V

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0904eb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    const/16 v5, 0x1e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, result_msg2:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/android/settings/wfd/IndexedTextLayout;->addContent(Ljava/lang/String;)V

    .line 233
    const v3, 0x7f0904ec

    invoke-virtual {v0, v3}, Lcom/android/settings/wfd/IndexedTextLayout;->addContent(I)V

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0904ed

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, result_msg4:Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/android/settings/wfd/IndexedTextLayout;->addContent(Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method private setHelpText2()V
    .locals 2

    .prologue
    .line 204
    const v1, 0x7f0b0478

    invoke-virtual {p0, v1}, Lcom/android/settings/wfd/WfdHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/IndexedTextLayout;

    .line 205
    .local v0, idxTextLayout:Lcom/android/settings/wfd/IndexedTextLayout;
    const v1, 0x7f0904e7

    invoke-virtual {v0, v1}, Lcom/android/settings/wfd/IndexedTextLayout;->addContent(I)V

    .line 207
    const v1, 0x7f0904e8

    invoke-virtual {v0, v1}, Lcom/android/settings/wfd/IndexedTextLayout;->addContent(I)V

    .line 209
    const v1, 0x7f0904e9

    invoke-virtual {v0, v1}, Lcom/android/settings/wfd/IndexedTextLayout;->addContent(I)V

    .line 211
    return-void
.end method

.method private setIsSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "called_by_settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mInSettingsMode:Z

    .line 201
    :goto_0
    return-void

    .line 200
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mInSettingsMode:Z

    goto :goto_0
.end method

.method private setWriteText()V
    .locals 6

    .prologue
    const v5, 0x7f0b0478

    const v4, 0x7f0904ee

    .line 214
    const-string v1, "WfdHelpActivity"

    const-string v2, "setWriteText"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "called_by_nfc"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "called_by_nfc"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {p0, v5}, Lcom/android/settings/wfd/WfdHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/IndexedTextLayout;

    .line 218
    .local v0, idxTextLayout:Lcom/android/settings/wfd/IndexedTextLayout;
    invoke-virtual {v0, v4}, Lcom/android/settings/wfd/IndexedTextLayout;->addContent(I)V

    .line 219
    const v1, 0x7f0904ef

    invoke-virtual {v0, v1}, Lcom/android/settings/wfd/IndexedTextLayout;->addContent(I)V

    .line 224
    :goto_0
    return-void

    .line 221
    .end local v0           #idxTextLayout:Lcom/android/settings/wfd/IndexedTextLayout;
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/settings/wfd/WfdHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/IndexedTextLayout;

    .line 222
    .restart local v0       #idxTextLayout:Lcom/android/settings/wfd/IndexedTextLayout;
    invoke-virtual {v0, v4}, Lcom/android/settings/wfd/IndexedTextLayout;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    const/4 v4, 0x0

    .line 515
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 517
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 518
    .local v1, intentAction:Ljava/lang/String;
    const-string v3, "com.samsung.wfd.DP_HELP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 519
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    .line 520
    const v3, 0x7f0401aa

    invoke-virtual {p0, v3}, Lcom/android/settings/wfd/WfdHelpActivity;->setContentView(I)V

    .line 521
    const v3, 0x7f0b0477

    invoke-virtual {p0, v3}, Lcom/android/settings/wfd/WfdHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 525
    .local v0, helpImage:Landroid/widget/ImageView;
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->setHelpText()V

    .line 540
    .end local v0           #helpImage:Landroid/widget/ImageView;
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    const-string v3, "com.samsung.wfd.WRITE_NFC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 528
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    .line 529
    const v3, 0x7f0401b1

    invoke-virtual {p0, v3}, Lcom/android/settings/wfd/WfdHelpActivity;->setContentView(I)V

    .line 530
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->setWriteText()V

    .line 532
    const v3, 0x7f0b048c

    invoke-virtual {p0, v3}, Lcom/android/settings/wfd/WfdHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 533
    .local v2, isReadOnly:Landroid/widget/CheckBox;
    iget-boolean v3, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mIsReadOnlyChecked:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 534
    iget-object v3, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 535
    .end local v2           #isReadOnly:Landroid/widget/CheckBox;
    :cond_2
    const-string v3, "com.samsung.wfd.NFC_HELP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 536
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    .line 537
    const v3, 0x7f0401b2

    invoke-virtual {p0, v3}, Lcom/android/settings/wfd/WfdHelpActivity;->setContentView(I)V

    .line 538
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->setHelpText2()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .parameter "icicle"

    .prologue
    .line 107
    const-string v13, "WfdHelpActivity"

    const-string v14, "onCreate"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 111
    .local v7, intentFilter:Landroid/content/IntentFilter;
    const-string v13, "com.samsung.wfd.ALL_CLEAR"

    invoke-virtual {v7, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wfd/WfdHelpActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v7}, Lcom/android/settings/wfd/WfdHelpActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WfdHelpActivity;->setIsSettings()V

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WfdHelpActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 117
    .local v2, bar:Landroid/app/ActionBar;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wfd/WfdHelpActivity;->mInSettingsMode:Z

    if-eqz v13, :cond_0

    .line 118
    const/high16 v13, 0x7f03

    invoke-virtual {v2, v13}, Landroid/app/ActionBar;->setIcon(I)V

    .line 121
    :cond_0
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 122
    const v13, 0x7f0904a1

    invoke-virtual {v2, v13}, Landroid/app/ActionBar;->setTitle(I)V

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WfdHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 126
    .local v6, intentAction:Ljava/lang/String;
    const-string v13, "WfdHelpActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "received action is : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v13, "com.samsung.wfd.DP_HELP"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 128
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/settings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    .line 129
    const v13, 0x7f0401aa

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/wfd/WfdHelpActivity;->setContentView(I)V

    .line 130
    const v13, 0x7f0b0477

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/wfd/WfdHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 134
    .local v4, helpImage:Landroid/widget/ImageView;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WfdHelpActivity;->setHelpText()V

    .line 192
    .end local v4           #helpImage:Landroid/widget/ImageView;
    :cond_1
    :goto_0
    return-void

    .line 137
    :cond_2
    const-string v13, "com.samsung.wfd.WRITE_NFC"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 138
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/settings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    .line 140
    const v13, 0x7f0401b1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/wfd/WfdHelpActivity;->setContentView(I)V

    .line 141
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WfdHelpActivity;->setWriteText()V

    .line 143
    const v13, 0x7f0b048c

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/wfd/WfdHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 144
    .local v8, isReadOnly:Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wfd/WfdHelpActivity;->mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v8, v13}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 147
    const-string v13, "nfc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/wfd/WfdHelpActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/nfc/NfcManager;

    .line 148
    .local v9, manager:Landroid/nfc/NfcManager;
    invoke-virtual {v9}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 149
    .local v1, adapter:Landroid/nfc/NfcAdapter;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v13

    if-nez v13, :cond_1

    .line 150
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 152
    .local v3, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wfd/WfdHelpActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 153
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v13, 0x7f0401b0

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 154
    .local v12, vwTitleView:Landroid/view/View;
    const v13, 0x7f0b011c

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 155
    .local v11, txViewTitle:Landroid/widget/TextView;
    const v13, 0x7f0904c8

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(I)V

    .line 156
    invoke-virtual {v3, v12}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 158
    new-instance v10, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 159
    .local v10, tv:Landroid/widget/TextView;
    const/high16 v13, 0x41a0

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 161
    const v13, 0x7f0904e5

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(I)V

    .line 162
    const/16 v13, 0x16

    const/16 v14, 0x16

    const/16 v15, 0x16

    const/16 v16, 0x16

    move/from16 v0, v16

    invoke-virtual {v10, v13, v14, v15, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 164
    invoke-virtual {v3, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 165
    const v13, 0x7f0907da

    new-instance v14, Lcom/android/settings/wfd/WfdHelpActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/wfd/WfdHelpActivity$3;-><init>(Lcom/android/settings/wfd/WfdHelpActivity;)V

    invoke-virtual {v3, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 175
    const v13, 0x7f0907db

    new-instance v14, Lcom/android/settings/wfd/WfdHelpActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/wfd/WfdHelpActivity$4;-><init>(Lcom/android/settings/wfd/WfdHelpActivity;)V

    invoke-virtual {v3, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 182
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 186
    .end local v1           #adapter:Landroid/nfc/NfcAdapter;
    .end local v3           #builder:Landroid/app/AlertDialog$Builder;
    .end local v5           #inflater:Landroid/view/LayoutInflater;
    .end local v8           #isReadOnly:Landroid/widget/CheckBox;
    .end local v9           #manager:Landroid/nfc/NfcManager;
    .end local v10           #tv:Landroid/widget/TextView;
    .end local v11           #txViewTitle:Landroid/widget/TextView;
    .end local v12           #vwTitleView:Landroid/view/View;
    :cond_3
    const-string v13, "com.samsung.wfd.NFC_HELP"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 187
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/settings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    .line 188
    const v13, 0x7f0401b2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/wfd/WfdHelpActivity;->setContentView(I)V

    .line 189
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wfd/WfdHelpActivity;->setHelpText2()V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 482
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "called_by_nfc"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "called_by_nfc"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 483
    const v2, 0x7f0904e1

    invoke-interface {p1, v4, v5, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mMenuItemLearnNfc:Landroid/view/MenuItem;

    .line 489
    :goto_0
    const/4 v2, 0x2

    const v3, 0x7f0904e0

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mMenuItemStartLink:Landroid/view/MenuItem;

    .line 492
    const-string v2, "nfc"

    invoke-virtual {p0, v2}, Lcom/android/settings/wfd/WfdHelpActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NfcManager;

    .line 493
    .local v1, manager:Landroid/nfc/NfcManager;
    invoke-virtual {v1}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 494
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    if-nez v2, :cond_1

    .line 500
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.wfd.NFC_HELP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 501
    iget-object v2, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mMenuItemStartLink:Landroid/view/MenuItem;

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 503
    iget-object v2, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mMenuItemLearnNfc:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 510
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 486
    .end local v0           #adapter:Landroid/nfc/NfcAdapter;
    .end local v1           #manager:Landroid/nfc/NfcManager;
    :cond_0
    const v2, 0x7f0904df

    invoke-interface {p1, v4, v5, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mMenuItemLearnNfc:Landroid/view/MenuItem;

    goto :goto_0

    .line 495
    .restart local v0       #adapter:Landroid/nfc/NfcAdapter;
    .restart local v1       #manager:Landroid/nfc/NfcManager;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mMenuItemLearnNfc:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 496
    iget-object v2, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mMenuItemStartLink:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 505
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mMenuItemLearnNfc:Landroid/view/MenuItem;

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 507
    iget-object v2, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mMenuItemStartLink:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 103
    iget-object v0, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdHelpActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 104
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 319
    const-string v4, "WfdHelpActivity"

    const-string v5, "onNewIntent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const-string v4, "WfdHelpActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWriteTagMode ==> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-boolean v4, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mWriteTagMode:Z

    if-eqz v4, :cond_1

    .line 323
    const-string v4, "WfdPickerActivity"

    invoke-virtual {p0, v4, v7}, Lcom/android/settings/wfd/WfdHelpActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 325
    .local v3, pref_r:Landroid/content/SharedPreferences;
    const-string v4, "wlan.wfd.lastdeviceaddr"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, mLastDeviceAddr:Ljava/lang/String;
    const-string v4, "WfdHelpActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addr"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-direct {p0, v1}, Lcom/android/settings/wfd/WfdHelpActivity;->makeNdefMessage(Ljava/lang/String;)Landroid/nfc/NdefMessage;

    move-result-object v2

    .line 330
    .local v2, message:Landroid/nfc/NdefMessage;
    const-string v4, "android.nfc.extra.TAG"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/nfc/Tag;

    .line 332
    .local v0, detectedTag:Landroid/nfc/Tag;
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/wfd/WfdHelpActivity;->writeTag(Landroid/nfc/NdefMessage;Landroid/nfc/Tag;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 333
    const v4, 0x7f0904e3

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 338
    :goto_0
    iget-object v4, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mMenuItemLearnNfc:Landroid/view/MenuItem;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 343
    .end local v0           #detectedTag:Landroid/nfc/Tag;
    .end local v1           #mLastDeviceAddr:Ljava/lang/String;
    .end local v2           #message:Landroid/nfc/NdefMessage;
    .end local v3           #pref_r:Landroid/content/SharedPreferences;
    :goto_1
    return-void

    .line 335
    .restart local v0       #detectedTag:Landroid/nfc/Tag;
    .restart local v1       #mLastDeviceAddr:Ljava/lang/String;
    .restart local v2       #message:Landroid/nfc/NdefMessage;
    .restart local v3       #pref_r:Landroid/content/SharedPreferences;
    :cond_0
    const v4, 0x7f0904e4

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 341
    .end local v0           #detectedTag:Landroid/nfc/Tag;
    .end local v1           #mLastDeviceAddr:Ljava/lang/String;
    .end local v2           #message:Landroid/nfc/NdefMessage;
    .end local v3           #pref_r:Landroid/content/SharedPreferences;
    :cond_1
    const-string v4, "WfdHelpActivity"

    const-string v5, "Activity received other intent from NDEF_DISCOVER"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/high16 v6, 0x1080

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 408
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 454
    :goto_0
    return v2

    .line 410
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "called_by_nfc"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "called_by_nfc"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 411
    const-string v2, "wfd"

    invoke-virtual {p0, v2}, Lcom/android/settings/wfd/WfdHelpActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/wfd/WfdManager;

    .line 412
    .local v1, wfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-virtual {v1}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    .line 413
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 414
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "show_dialog_once"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 415
    const-string v2, "called_by_nfc"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 416
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 417
    iget-boolean v2, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mInSettingsMode:Z

    if-eqz v2, :cond_0

    .line 418
    const-string v2, "called_by_settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 420
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdHelpActivity;->startActivity(Landroid/content/Intent;)V

    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #wfdManager:Lcom/samsung/wfd/WfdManager;
    :goto_1
    move v2, v3

    .line 454
    goto :goto_0

    .line 422
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.NFC_HELP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 423
    .restart local v0       #intent:Landroid/content/Intent;
    iget-boolean v2, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mInSettingsMode:Z

    if-eqz v2, :cond_2

    .line 424
    const-string v2, "called_by_settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 426
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdHelpActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 430
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->isWfdConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 431
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.WRITE_NFC"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 432
    .restart local v0       #intent:Landroid/content/Intent;
    iget-boolean v2, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mInSettingsMode:Z

    if-eqz v2, :cond_3

    .line 433
    const-string v2, "called_by_settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 435
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdHelpActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 437
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "show_dialog_once"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 439
    const-string v2, "tag_write_if_success"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 440
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 441
    iget-boolean v2, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mInSettingsMode:Z

    if-eqz v2, :cond_5

    .line 442
    const-string v2, "called_by_settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 444
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdHelpActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 448
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_2
    const-string v2, "WfdHelpActivity"

    const-string v4, "back button tapped"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdHelpActivity;->finish()V

    goto :goto_1

    .line 408
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 309
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 310
    const-string v1, "WfdHelpActivity"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 313
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v0, p0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    .line 315
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 296
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 297
    const-string v2, "WfdHelpActivity"

    const-string v4, "onResume"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 300
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x2000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 302
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    move-object v2, v3

    .line 303
    check-cast v2, [[Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v3, v2}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 305
    :cond_0
    return-void
.end method

.method writeTag(Landroid/nfc/NdefMessage;Landroid/nfc/Tag;)Z
    .locals 8
    .parameter "message"
    .parameter "tag"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 346
    const-string v6, "WfdHelpActivity"

    const-string v7, "writeTag"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v6

    array-length v3, v6

    .line 350
    .local v3, size:I
    :try_start_0
    invoke-static {p2}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v2

    .line 351
    .local v2, ndef:Landroid/nfc/tech/Ndef;
    if-eqz v2, :cond_3

    .line 352
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->connect()V

    .line 354
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->isWritable()Z

    move-result v6

    if-nez v6, :cond_0

    .line 355
    const-string v5, "WfdHelpActivity"

    const-string v6, "Tag is read-only."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    .end local v2           #ndef:Landroid/nfc/tech/Ndef;
    :goto_0
    return v4

    .line 359
    .restart local v2       #ndef:Landroid/nfc/tech/Ndef;
    :cond_0
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result v6

    if-ge v6, v3, :cond_1

    .line 360
    const-string v5, "WfdHelpActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tag capacity is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes, message is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 385
    .end local v2           #ndef:Landroid/nfc/tech/Ndef;
    :catch_0
    move-exception v0

    .line 386
    .local v0, e:Ljava/io/IOException;
    const-string v5, "WfdHelpActivity"

    const-string v6, "Failed to write tag"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 365
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #ndef:Landroid/nfc/tech/Ndef;
    :cond_1
    :try_start_1
    invoke-virtual {v2, p1}, Landroid/nfc/tech/Ndef;->writeNdefMessage(Landroid/nfc/NdefMessage;)V

    .line 367
    iget-boolean v6, p0, Lcom/android/settings/wfd/WfdHelpActivity;->mIsReadOnlyChecked:Z

    if-eqz v6, :cond_2

    .line 368
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->makeReadOnly()Z

    .line 371
    :cond_2
    const-string v6, "WfdHelpActivity"

    const-string v7, "Wrote message to pre-formatted tag."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.wfd.ALL_CLEAR"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/android/settings/wfd/WfdHelpActivity;->sendBroadcast(Landroid/content/Intent;)V

    move v4, v5

    .line 373
    goto :goto_0

    .line 375
    :cond_3
    invoke-static {p2}, Landroid/nfc/tech/NdefFormatable;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NdefFormatable;

    move-result-object v1

    .line 376
    .local v1, format:Landroid/nfc/tech/NdefFormatable;
    if-eqz v1, :cond_4

    .line 377
    invoke-virtual {v1}, Landroid/nfc/tech/NdefFormatable;->connect()V

    .line 378
    invoke-virtual {v1, p1}, Landroid/nfc/tech/NdefFormatable;->format(Landroid/nfc/NdefMessage;)V

    .line 379
    const-string v6, "WfdHelpActivity"

    const-string v7, "Formatted tag and wrote message"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 380
    goto :goto_0

    .line 382
    :cond_4
    const-string v5, "WfdHelpActivity"

    const-string v6, "Tag doesn\'t support NDEF."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/nfc/FormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 387
    .end local v1           #format:Landroid/nfc/tech/NdefFormatable;
    .end local v2           #ndef:Landroid/nfc/tech/Ndef;
    :catch_1
    move-exception v0

    .line 388
    .local v0, e:Landroid/nfc/FormatException;
    const-string v5, "WfdHelpActivity"

    const-string v6, "Failed to write tag because of FormatException"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
