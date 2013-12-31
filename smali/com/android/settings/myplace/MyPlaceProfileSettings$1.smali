.class Lcom/android/settings/myplace/MyPlaceProfileSettings$1;
.super Ljava/lang/Object;
.source "MyPlaceProfileSettings.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myplace/MyPlaceProfileSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$1;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$1;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 161
    .local v0, focused:Landroid/view/View;
    const/16 v1, 0x13

    if-ne p2, v1, :cond_1

    .line 162
    const v1, 0x7f0b024f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 163
    const-string v1, "MyPlaceSettings"

    const-string v2, "clearFocus"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 166
    :cond_0
    const/4 v1, 0x1

    .line 168
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
