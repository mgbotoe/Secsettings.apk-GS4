.class Lcom/android/settings/ModePreviewTablet$4;
.super Ljava/lang/Object;
.source "ModePreviewTablet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ModePreviewTablet;->showGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ModePreviewTablet;

.field final synthetic val$edit:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/ModePreviewTablet;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/settings/ModePreviewTablet$4;->this$0:Lcom/android/settings/ModePreviewTablet;

    iput-object p2, p0, Lcom/android/settings/ModePreviewTablet$4;->val$edit:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/android/settings/ModePreviewTablet$4;->val$mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/settings/ModePreviewTablet$4;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "adapt_noti"

    iget-object v2, p0, Lcom/android/settings/ModePreviewTablet$4;->val$mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 309
    iget-object v0, p0, Lcom/android/settings/ModePreviewTablet$4;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 310
    return-void
.end method
