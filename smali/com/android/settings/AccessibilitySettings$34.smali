.class Lcom/android/settings/AccessibilitySettings$34;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccessibilitySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 2832
    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$34;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2834
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$34;->this$0:Lcom/android/settings/AccessibilitySettings;

    #getter for: Lcom/android/settings/AccessibilitySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;
    invoke-static {v0}, Lcom/android/settings/AccessibilitySettings;->access$1700(Lcom/android/settings/AccessibilitySettings;)Lcom/android/settings/FontSizeListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/FontSizeListPreference;->click()V

    .line 2835
    return-void
.end method
