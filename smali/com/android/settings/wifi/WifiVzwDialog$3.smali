.class Lcom/android/settings/wifi/WifiVzwDialog$3;
.super Ljava/lang/Object;
.source "WifiVzwDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiVzwDialog;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiVzwDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiVzwDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/android/settings/wifi/WifiVzwDialog$3;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog$3;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiVzwDialog;->enableSubmitIfAppropriate()V

    .line 1136
    return-void
.end method
