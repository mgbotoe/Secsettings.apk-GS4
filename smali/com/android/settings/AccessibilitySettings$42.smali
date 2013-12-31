.class Lcom/android/settings/AccessibilitySettings$42;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


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

.field final synthetic val$checkShortcut:[Z


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilitySettings;[Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2881
    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$42;->this$0:Lcom/android/settings/AccessibilitySettings;

    iput-object p2, p0, Lcom/android/settings/AccessibilitySettings$42;->val$checkShortcut:[Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2883
    if-nez p2, :cond_2

    .line 2884
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$42;->val$checkShortcut:[Z

    if-eqz p3, :cond_1

    :goto_0
    aput-boolean v0, v2, v1

    .line 2888
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 2884
    goto :goto_0

    .line 2885
    :cond_2
    if-ne p2, v0, :cond_0

    .line 2886
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$42;->val$checkShortcut:[Z

    if-eqz p3, :cond_3

    move v1, v0

    :cond_3
    aput-boolean v1, v2, v0

    goto :goto_1
.end method
