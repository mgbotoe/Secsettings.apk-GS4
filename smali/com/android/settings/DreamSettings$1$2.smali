.class Lcom/android/settings/DreamSettings$1$2;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DreamSettings$1;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/DreamSettings$1;


# direct methods
.method constructor <init>(Lcom/android/settings/DreamSettings$1;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/settings/DreamSettings$1$2;->this$1:Lcom/android/settings/DreamSettings$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings/DreamSettings$1$2;->this$1:Lcom/android/settings/DreamSettings$1;

    iget-object v0, v0, Lcom/android/settings/DreamSettings$1;->this$0:Lcom/android/settings/DreamSettings;

    #calls: Lcom/android/settings/DreamSettings;->refreshFromBackend()V
    invoke-static {v0}, Lcom/android/settings/DreamSettings;->access$400(Lcom/android/settings/DreamSettings;)V

    .line 127
    return-void
.end method
