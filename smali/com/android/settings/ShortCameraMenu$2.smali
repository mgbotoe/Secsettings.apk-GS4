.class Lcom/android/settings/ShortCameraMenu$2;
.super Ljava/lang/Object;
.source "ShortCameraMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ShortCameraMenu;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ShortCameraMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/ShortCameraMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/settings/ShortCameraMenu$2;->this$0:Lcom/android/settings/ShortCameraMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/ShortCameraMenu$2;->this$0:Lcom/android/settings/ShortCameraMenu;

    invoke-virtual {v0}, Lcom/android/settings/ShortCameraMenu;->finish()V

    .line 76
    return-void
.end method
