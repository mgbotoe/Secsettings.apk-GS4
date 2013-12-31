.class public Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;
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
    name = "ToggleScreenMagnificationPreferenceFragment"
.end annotation


# instance fields
.field private final mIcObserver:Landroid/database/ContentObserver;

.field private mShownDialogId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 3486
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;-><init>()V

    .line 3492
    new-instance v0, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$1;-><init>(Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->mIcObserver:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3602
    packed-switch p2, :pswitch_data_0

    .line 3635
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 3604
    :pswitch_0
    iget v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->mShownDialogId:I

    if-ne v1, v4, :cond_0

    .line 3605
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v1, v4}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 3606
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "checked"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3607
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 3609
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3610
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->context:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    .line 3616
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3620
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3621
    .local v0, finger_air_view_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3622
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 3637
    .end local v0           #finger_air_view_changed:Landroid/content/Intent;
    :cond_0
    :goto_2
    return-void

    .line 3612
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_air_view"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3613
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_air_view_highlight"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3617
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_writing_buddy"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 3626
    :pswitch_1
    iget v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->mShownDialogId:I

    if-ne v1, v4, :cond_0

    .line 3627
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v1, v3}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 3628
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "checked"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3629
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto :goto_2

    .line 3602
    nop

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
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3562
    if-ne p1, v5, :cond_1

    .line 3563
    iput v5, p0, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->mShownDialogId:I

    .line 3564
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f09083f

    invoke-virtual {p0, v4}, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3566
    .local v2, title:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3572
    const v3, 0x7f090840

    invoke-virtual {p0, v3}, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3575
    .local v0, message:Ljava/lang/String;
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$3;

    invoke-direct {v4, p0}, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$3;-><init>(Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 3596
    .end local v0           #message:Ljava/lang/String;
    .end local v2           #title:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 3567
    .restart local v2       #title:Ljava/lang/String;
    :cond_0
    const v3, 0x7f09081c

    invoke-virtual {p0, v3}, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3568
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090841

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3569
    .restart local v0       #message:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090e7b

    invoke-virtual {p0, v4}, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3570
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090cd5

    invoke-virtual {p0, v4}, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3571
    goto/16 :goto_0

    .line 3596
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #title:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected onInstallActionBarToggleSwitch()V
    .locals 2

    .prologue
    .line 3528
    invoke-super {p0}, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->onInstallActionBarToggleSwitch()V

    .line 3529
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    new-instance v1, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$2;-><init>(Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 3554
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 3516
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->mIcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3517
    invoke-super {p0}, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->onPause()V

    .line 3518
    return-void
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 3
    .parameter "preferenceKey"
    .parameter "enabled"

    .prologue
    .line 3522
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_magnification_enabled"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3524
    return-void

    .line 3522
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3505
    invoke-super {p0}, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->onResume()V

    .line 3506
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->mIcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3508
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3509
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v0, v3}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setEnabled(Z)V

    .line 3512
    :goto_0
    return-void

    .line 3511
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setEnabled(Z)V

    goto :goto_0
.end method
