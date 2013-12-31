.class Lcom/android/settings/myplace/SelectMapActivity$3;
.super Ljava/lang/Object;
.source "SelectMapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myplace/SelectMapActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myplace/SelectMapActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/myplace/SelectMapActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/settings/myplace/SelectMapActivity$3;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    .line 178
    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity$3;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-virtual {v3}, Lcom/android/settings/myplace/SelectMapActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gps"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 179
    .local v0, gpsEnabled:Z
    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity$3;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-virtual {v3}, Lcom/android/settings/myplace/SelectMapActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "network"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    .line 181
    .local v2, networkEnabled:Z
    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 182
    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity$3;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    #calls: Lcom/android/settings/myplace/SelectMapActivity;->showLocationDisabledDialog()V
    invoke-static {v3}, Lcom/android/settings/myplace/SelectMapActivity;->access$200(Lcom/android/settings/myplace/SelectMapActivity;)V

    .line 192
    :goto_0
    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity$3;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    #setter for: Lcom/android/settings/myplace/SelectMapActivity;->mResearch:Z
    invoke-static {v3, v5}, Lcom/android/settings/myplace/SelectMapActivity;->access$602(Lcom/android/settings/myplace/SelectMapActivity;Z)Z

    .line 194
    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity$3;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Lcom/android/settings/myplace/SelectMapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 195
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity$3;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/settings/myplace/SelectMapActivity;->access$300(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 196
    return-void

    .line 184
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity$3;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/settings/myplace/SelectMapActivity;->access$300(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/EditText;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity$3;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    const-string v4, ""

    #setter for: Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/settings/myplace/SelectMapActivity;->access$402(Lcom/android/settings/myplace/SelectMapActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity$3;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;
    invoke-static {v3}, Lcom/android/settings/myplace/SelectMapActivity;->access$100(Lcom/android/settings/myplace/SelectMapActivity;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 187
    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity$3;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;
    invoke-static {v3}, Lcom/android/settings/myplace/SelectMapActivity;->access$100(Lcom/android/settings/myplace/SelectMapActivity;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/MyLocationOverlay;->disableMyLocation()V

    .line 189
    :cond_1
    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity$3;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    #calls: Lcom/android/settings/myplace/SelectMapActivity;->setMyLocationOverlay()V
    invoke-static {v3}, Lcom/android/settings/myplace/SelectMapActivity;->access$500(Lcom/android/settings/myplace/SelectMapActivity;)V

    goto :goto_0
.end method
