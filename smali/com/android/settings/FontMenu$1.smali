.class Lcom/android/settings/FontMenu$1;
.super Ljava/lang/Object;
.source "FontMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FontMenu;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FontMenu;

.field final synthetic val$edit:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/FontMenu;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/settings/FontMenu$1;->this$0:Lcom/android/settings/FontMenu;

    iput-object p2, p0, Lcom/android/settings/FontMenu$1;->val$edit:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/android/settings/FontMenu$1;->val$mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/settings/FontMenu$1;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_font_noti"

    iget-object v2, p0, Lcom/android/settings/FontMenu$1;->val$mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 315
    iget-object v0, p0, Lcom/android/settings/FontMenu$1;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 316
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 317
    return-void
.end method
