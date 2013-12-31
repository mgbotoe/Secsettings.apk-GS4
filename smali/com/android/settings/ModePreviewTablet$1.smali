.class Lcom/android/settings/ModePreviewTablet$1;
.super Ljava/lang/Object;
.source "ModePreviewTablet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ModePreviewTablet;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ModePreviewTablet;


# direct methods
.method constructor <init>(Lcom/android/settings/ModePreviewTablet;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/settings/ModePreviewTablet$1;->this$0:Lcom/android/settings/ModePreviewTablet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/ModePreviewTablet$1;->this$0:Lcom/android/settings/ModePreviewTablet;

    const/4 v1, 0x0

    #calls: Lcom/android/settings/ModePreviewTablet;->setEnabledItems(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/ModePreviewTablet;->access$000(Lcom/android/settings/ModePreviewTablet;Z)V

    .line 149
    return-void
.end method
