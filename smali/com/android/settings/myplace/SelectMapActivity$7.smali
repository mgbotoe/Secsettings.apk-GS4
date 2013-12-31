.class Lcom/android/settings/myplace/SelectMapActivity$7;
.super Ljava/lang/Object;
.source "SelectMapActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myplace/SelectMapActivity;->setMyLocationOverlay()V
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
    .line 741
    iput-object p1, p0, Lcom/android/settings/myplace/SelectMapActivity$7;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 744
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity$7;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings/myplace/SelectMapActivity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/myplace/SelectMapActivity;->access$1900(Lcom/android/settings/myplace/SelectMapActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMyLocationOverlay.isMyLocationEnabled() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity$7;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;
    invoke-static {v4}, Lcom/android/settings/myplace/SelectMapActivity;->access$100(Lcom/android/settings/myplace/SelectMapActivity;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/maps/MyLocationOverlay;->isMyLocationEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity$7;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;
    invoke-static {v2}, Lcom/android/settings/myplace/SelectMapActivity;->access$100(Lcom/android/settings/myplace/SelectMapActivity;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/MyLocationOverlay;->isMyLocationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity$7;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;
    invoke-static {v2}, Lcom/android/settings/myplace/SelectMapActivity;->access$100(Lcom/android/settings/myplace/SelectMapActivity;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/MyLocationOverlay;->getMyLocation()Lcom/google/android/maps/GeoPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 748
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity$7;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    iget-object v2, v2, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity$7;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;
    invoke-static {v3}, Lcom/android/settings/myplace/SelectMapActivity;->access$100(Lcom/android/settings/myplace/SelectMapActivity;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/MyLocationOverlay;->getMyLocation()Lcom/google/android/maps/GeoPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 749
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity$7;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;
    invoke-static {v2}, Lcom/android/settings/myplace/SelectMapActivity;->access$100(Lcom/android/settings/myplace/SelectMapActivity;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/MyLocationOverlay;->getMyLocation()Lcom/google/android/maps/GeoPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    .line 750
    .local v0, lastLati:I
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity$7;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;
    invoke-static {v2}, Lcom/android/settings/myplace/SelectMapActivity;->access$100(Lcom/android/settings/myplace/SelectMapActivity;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/MyLocationOverlay;->getMyLocation()Lcom/google/android/maps/GeoPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v1

    .line 751
    .local v1, lastLong:I
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity$7;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    const-string v3, "here"

    #calls: Lcom/android/settings/myplace/SelectMapActivity;->addMarker(IILjava/lang/String;)Z
    invoke-static {v2, v0, v1, v3}, Lcom/android/settings/myplace/SelectMapActivity;->access$1100(Lcom/android/settings/myplace/SelectMapActivity;IILjava/lang/String;)Z

    .line 753
    .end local v0           #lastLati:I
    .end local v1           #lastLong:I
    :cond_0
    return-void
.end method
