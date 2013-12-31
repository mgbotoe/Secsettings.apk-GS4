.class public Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;
.super Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToggleAccessControlPreferenceFragment"
.end annotation


# instance fields
.field private final mSettingsContentObserver:Lcom/android/settings/AccessibilitySettings$SettingsContentObserver;

.field private mShownDialogId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 3640
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;-><init>()V

    .line 3648
    new-instance v0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$1;-><init>(Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/AccessibilitySettings$SettingsContentObserver;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3781
    packed-switch p2, :pswitch_data_0

    .line 3837
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 3783
    :pswitch_0
    iget v5, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    if-ne v5, v3, :cond_2

    .line 3784
    iget v5, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    if-ne v5, v3, :cond_1

    move v2, v3

    .line 3785
    .local v2, checked:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v3, v4}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 3786
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "checked"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3787
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 3789
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "access_control_use"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3790
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3791
    .local v0, acIntent:Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.app.accesscontrol"

    const-string v5, "com.samsung.android.app.accesscontrol.AccessControlMainService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3793
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 3839
    .end local v0           #acIntent:Landroid/content/Intent;
    .end local v2           #checked:Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v4

    .line 3784
    goto :goto_0

    .line 3794
    :cond_2
    iget v5, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    if-ne v5, v7, :cond_4

    .line 3795
    iget v5, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    if-ne v5, v3, :cond_3

    move v2, v3

    .line 3796
    .restart local v2       #checked:Z
    :goto_2
    iget-object v5, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v5, v3}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 3797
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "checked"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3798
    iget-object v5, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v5, v3}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 3800
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3801
    .local v1, assistantMenu:Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.samsung.android.app.assistantmenu"

    const-string v7, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3803
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 3805
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "assistant_menu"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3806
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "access_control_use"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .end local v1           #assistantMenu:Landroid/content/Intent;
    .end local v2           #checked:Z
    :cond_3
    move v2, v4

    .line 3795
    goto :goto_2

    .line 3807
    :cond_4
    iget v5, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    if-ne v5, v6, :cond_0

    .line 3808
    iget v5, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    if-ne v5, v6, :cond_5

    move v2, v3

    .line 3809
    .restart local v2       #checked:Z
    :goto_3
    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v4, v3}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 3810
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "checked"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3811
    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v4, v3}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 3814
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 3815
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.settings.action.talkback_off"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 3816
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "access_control_use"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .end local v2           #checked:Z
    :cond_5
    move v2, v4

    .line 3808
    goto :goto_3

    .line 3820
    :pswitch_1
    iget v5, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    if-ne v5, v3, :cond_7

    .line 3821
    iget v5, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    if-ne v5, v3, :cond_6

    move v2, v3

    .line 3822
    .restart local v2       #checked:Z
    :goto_4
    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v4, v3}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 3823
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "checked"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3824
    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v4, v3}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 3826
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "access_control_use"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .end local v2           #checked:Z
    :cond_6
    move v2, v4

    .line 3821
    goto :goto_4

    .line 3827
    :cond_7
    iget v5, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    if-eq v5, v7, :cond_8

    iget v5, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    if-ne v5, v6, :cond_0

    .line 3828
    :cond_8
    iget v5, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    if-eq v5, v3, :cond_9

    iget v5, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    if-ne v5, v6, :cond_a

    :cond_9
    move v2, v3

    .line 3829
    .restart local v2       #checked:Z
    :goto_5
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v3, v4}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 3830
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "checked"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3831
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 3833
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "access_control_use"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .end local v2           #checked:Z
    :cond_a
    move v2, v4

    .line 3828
    goto :goto_5

    .line 3781
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "dialogId"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const v6, 0x104000a

    const/high16 v5, 0x104

    const/4 v4, 0x0

    .line 3719
    if-ne p1, v2, :cond_0

    .line 3720
    iput v2, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    .line 3721
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f09083a

    invoke-virtual {p0, v3}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3722
    .local v1, title:Ljava/lang/String;
    const v2, 0x7f09083b

    invoke-virtual {p0, v2}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3724
    .local v0, message:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 3775
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #title:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 3731
    :cond_0
    if-ne p1, v3, :cond_1

    .line 3732
    iput v3, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    .line 3733
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f09083c

    invoke-virtual {p0, v3}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3734
    .restart local v1       #title:Ljava/lang/String;
    const v2, 0x7f09083d

    invoke-virtual {p0, v2}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3735
    .restart local v0       #message:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$3;

    invoke-direct {v3, p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$3;-><init>(Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 3752
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #title:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 3753
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    .line 3754
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f09083c

    invoke-virtual {p0, v3}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3755
    .restart local v1       #title:Ljava/lang/String;
    const v2, 0x7f09083e

    invoke-virtual {p0, v2}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3756
    .restart local v0       #message:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$4;

    invoke-direct {v3, p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$4;-><init>(Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_0

    .line 3775
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #title:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method protected onInstallActionBarToggleSwitch()V
    .locals 2

    .prologue
    .line 3682
    invoke-super {p0}, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->onInstallActionBarToggleSwitch()V

    .line 3683
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    new-instance v1, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;-><init>(Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 3711
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 3670
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/AccessibilitySettings$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilitySettings$SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 3671
    invoke-super {p0}, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->onPause()V

    .line 3672
    return-void
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 3
    .parameter "preferenceKey"
    .parameter "enabled"

    .prologue
    .line 3676
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "access_control_use"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3678
    return-void

    .line 3676
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onProcessArguments(Landroid/os/Bundle;)V
    .locals 0
    .parameter "arguments"

    .prologue
    .line 3843
    invoke-super {p0, p1}, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->onProcessArguments(Landroid/os/Bundle;)V

    .line 3844
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 3664
    invoke-super {p0}, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->onResume()V

    .line 3665
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/AccessibilitySettings$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilitySettings$SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 3666
    return-void
.end method
