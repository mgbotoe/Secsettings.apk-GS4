.class Lcom/android/settings/OneHandSettings$5;
.super Ljava/lang/Object;
.source "OneHandSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/OneHandSettings;->showGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OneHandSettings;

.field final synthetic val$edit:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/OneHandSettings;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/settings/OneHandSettings$5;->this$0:Lcom/android/settings/OneHandSettings;

    iput-object p2, p0, Lcom/android/settings/OneHandSettings$5;->val$edit:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/android/settings/OneHandSettings$5;->val$mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v2, 0x1

    .line 313
    iget-object v0, p0, Lcom/android/settings/OneHandSettings$5;->this$0:Lcom/android/settings/OneHandSettings;

    #getter for: Lcom/android/settings/OneHandSettings;->mAnyScreen:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/OneHandSettings;->access$000(Lcom/android/settings/OneHandSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 314
    iget-object v0, p0, Lcom/android/settings/OneHandSettings$5;->this$0:Lcom/android/settings/OneHandSettings;

    invoke-virtual {v0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "any_screen_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 315
    iget-object v0, p0, Lcom/android/settings/OneHandSettings$5;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "onehand_noti"

    iget-object v2, p0, Lcom/android/settings/OneHandSettings$5;->val$mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 316
    iget-object v0, p0, Lcom/android/settings/OneHandSettings$5;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 317
    return-void
.end method
