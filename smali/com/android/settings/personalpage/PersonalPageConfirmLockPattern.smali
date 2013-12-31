.class public Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern;
.super Landroid/preference/PreferenceActivity;
.source "PersonalPageConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$1;,
        Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;,
        Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 92
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 87
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v2, 0x7f0906de

    invoke-virtual {p0, v2}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 76
    .local v0, msg:Ljava/lang/CharSequence;
    invoke-virtual {p0, v0, v0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 78
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    const v2, 0x1020443

    invoke-virtual {p0, v2}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 80
    .local v1, view:Landroid/widget/LinearLayout;
    const v2, 0x7f0202b1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 82
    .end local v1           #view:Landroid/widget/LinearLayout;
    :cond_0
    return-void
.end method
