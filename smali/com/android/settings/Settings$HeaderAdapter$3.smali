.class Lcom/android/settings/Settings$HeaderAdapter$3;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings$HeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/Settings$HeaderAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/Settings$HeaderAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 2372
    iput-object p1, p0, Lcom/android/settings/Settings$HeaderAdapter$3;->this$0:Lcom/android/settings/Settings$HeaderAdapter;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 2

    .prologue
    .line 2376
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter$3;->this$0:Lcom/android/settings/Settings$HeaderAdapter;

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter$3;->this$0:Lcom/android/settings/Settings$HeaderAdapter;

    #getter for: Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/Settings$HeaderAdapter;->access$700(Lcom/android/settings/Settings$HeaderAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/Settings$HeaderAdapter;->updateCheckboxItem(Landroid/content/Context;)V

    .line 2377
    return-void
.end method
