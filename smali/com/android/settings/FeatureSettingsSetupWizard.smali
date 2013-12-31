.class public Lcom/android/settings/FeatureSettingsSetupWizard;
.super Landroid/app/Activity;
.source "FeatureSettingsSetupWizard.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/settings/FeatureSettingsSetupWizard;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/FeatureSettingsSetupWizard;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/FeatureSettingsSetupWizard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->setEasyMode()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/settings/FeatureSettingsSetupWizard;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private setEasyMode()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.android.app.easylauncher"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.android.app.launcher"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "easy_mode_switch"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 128
    .local v1, isEasy:I
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 129
    .local v3, mIntentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 130
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 149
    const/4 v4, 0x2

    new-array v0, v4, [Landroid/content/ComponentName;

    const/4 v4, 0x0

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.app.launcher"

    const-string v7, "com.android.launcher2.Launcher"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v0, v4

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.app.easylauncher"

    const-string v6, "com.sec.android.app.easylauncher.Launcher"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v8

    .line 151
    .local v0, components:[Landroid/content/ComponentName;
    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.app.launcher"

    const-string v5, "com.android.launcher2.Launcher"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .local v2, mDefaultCN:Landroid/content/ComponentName;
    if-nez v1, :cond_0

    .line 153
    new-instance v2, Landroid/content/ComponentName;

    .end local v2           #mDefaultCN:Landroid/content/ComponentName;
    const-string v4, "com.sec.android.app.easylauncher"

    const-string v5, "com.sec.android.app.easylauncher.Launcher"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .restart local v2       #mDefaultCN:Landroid/content/ComponentName;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x10

    invoke-virtual {v4, v3, v5, v0, v2}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 158
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f090985

    const v6, 0x7f090705

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->hide()V

    .line 50
    :cond_0
    const v4, 0x7f04008c

    invoke-virtual {p0, v4}, Lcom/android/settings/FeatureSettingsSetupWizard;->setContentView(I)V

    .line 57
    const v4, 0x7f0b007f

    invoke-virtual {p0, v4}, Lcom/android/settings/FeatureSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, button_next:Landroid/view/View;
    new-instance v4, Lcom/android/settings/FeatureSettingsSetupWizard$1;

    invoke-direct {v4, p0}, Lcom/android/settings/FeatureSettingsSetupWizard$1;-><init>(Lcom/android/settings/FeatureSettingsSetupWizard;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    instance-of v4, v0, Landroid/widget/Button;

    if-eqz v4, :cond_3

    .line 86
    sget-object v4, Lcom/android/settings/FeatureSettingsSetupWizard;->TAG:Ljava/lang/String;

    const-string v5, "Next is Button instance"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 87
    check-cast v1, Landroid/widget/Button;

    .line 88
    .local v1, nextBtn:Landroid/widget/Button;
    const-string v4, ""

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 90
    const-string v4, "jflteuc"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "jactivelteuc"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, original_str:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0203e5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v5, -0xa

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->makeStringWithImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .end local v1           #nextBtn:Landroid/widget/Button;
    .end local v3           #original_str:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 92
    .restart local v1       #nextBtn:Landroid/widget/Button;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettingsSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #original_str:Ljava/lang/String;
    goto :goto_0

    .line 99
    .end local v1           #nextBtn:Landroid/widget/Button;
    .end local v3           #original_str:Ljava/lang/String;
    :cond_3
    sget-object v4, Lcom/android/settings/FeatureSettingsSetupWizard;->TAG:Ljava/lang/String;

    const-string v5, "Next is LinearLayout instance"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const v4, 0x7f0b000e

    invoke-virtual {p0, v4}, Lcom/android/settings/FeatureSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 101
    .local v2, nextBtnText:Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 102
    const-string v4, "jflteuc"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "jactivelteuc"

    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 106
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 104
    :cond_4
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
