.class public Lcom/android/settings/myplace/SelectMapActivity;
.super Lcom/google/android/maps/MapActivity;
.source "SelectMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;,
        Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;,
        Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCaptureHeight:I

.field private mCaptureWidth:I

.field private mCurrentLocation:Landroid/widget/ImageButton;

.field private mEditText:Landroid/widget/EditText;

.field private mGeo:Landroid/location/Geocoder;

.field private mIsTabletConfig:Z

.field private mLatitude:I

.field private mLocation:Ljava/lang/String;

.field private mLocationDisabledDialog:Landroid/app/AlertDialog;

.field private mLongitude:I

.field private mMapMode:I

.field protected mMapView:Lcom/google/android/maps/MapView;

.field private mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

.field private mResearch:Z

.field private mSearchButton:Landroid/widget/ImageButton;

.field mSearchRunnable:Ljava/lang/Runnable;

.field private mSnippet:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 74
    const-string v0, "SelectMapActivity"

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->TAG:Ljava/lang/String;

    .line 82
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapMode:I

    .line 96
    iput v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    .line 97
    iput v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSnippet:Ljava/lang/String;

    .line 100
    iput-boolean v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mResearch:Z

    .line 358
    new-instance v0, Lcom/android/settings/myplace/SelectMapActivity$6;

    invoke-direct {v0, p0}, Lcom/android/settings/myplace/SelectMapActivity$6;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchRunnable:Ljava/lang/Runnable;

    .line 588
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/myplace/SelectMapActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/myplace/SelectMapActivity;->searchLocation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/myplace/SelectMapActivity;)Lcom/google/android/maps/MyLocationOverlay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/myplace/SelectMapActivity;D)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/settings/myplace/SelectMapActivity;->convToInt(D)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/settings/myplace/SelectMapActivity;IILjava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/myplace/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings/myplace/SelectMapActivity;IIII)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/myplace/SelectMapActivity;->moveToMarker(IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/settings/myplace/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings/myplace/SelectMapActivity;->updateLocation(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/myplace/SelectMapActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mIsTabletConfig:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/settings/myplace/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings/myplace/SelectMapActivity;->moveToMarker(Lcom/google/android/maps/GeoPoint;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/settings/myplace/SelectMapActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapMode:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/settings/myplace/SelectMapActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/myplace/SelectMapActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/myplace/SelectMapActivity;->showLocationDisabledDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/myplace/SelectMapActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/myplace/SelectMapActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/myplace/SelectMapActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/myplace/SelectMapActivity;->setMyLocationOverlay()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/settings/myplace/SelectMapActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mResearch:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/myplace/SelectMapActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings/myplace/SelectMapActivity;->getFromLocationName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/location/Geocoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mGeo:Landroid/location/Geocoder;

    return-object v0
.end method

.method private addMarker(IILjava/lang/String;)Z
    .locals 7
    .parameter "lat"
    .parameter "lon"
    .parameter "snippet"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 430
    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    .line 431
    .local v1, mapOverlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;

    .line 432
    .local v0, itemizedOverlay:Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;
    invoke-direct {p0, p1, p2, v4, p3}, Lcom/android/settings/myplace/SelectMapActivity;->getOverlay(IILandroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/google/android/maps/OverlayItem;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->addOverlay(Lcom/google/android/maps/OverlayItem;)V

    .line 434
    iput p1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    .line 435
    iput p2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    .line 436
    iput-object p3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSnippet:Ljava/lang/String;

    .line 439
    new-instance v2, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v2, p1, p2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 440
    .local v2, point:Lcom/google/android/maps/GeoPoint;
    new-instance v3, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;

    invoke-direct {v3, p0, v4}, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;-><init>(Lcom/android/settings/myplace/SelectMapActivity;Lcom/android/settings/myplace/SelectMapActivity$1;)V

    new-array v4, v6, [Lcom/google/android/maps/GeoPoint;

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 442
    return v6
.end method

.method private convToDouble(I)D
    .locals 4
    .parameter "i"

    .prologue
    .line 417
    int-to-double v0, p1

    const-wide v2, 0x412e848000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private convToInt(D)I
    .locals 2
    .parameter "d"

    .prologue
    .line 413
    const-wide v0, 0x412e848000000000L

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    return v0
.end method

.method private getFromLocationName(Ljava/lang/String;)Z
    .locals 17
    .parameter "location"

    .prologue
    .line 317
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_1

    .line 318
    :cond_0
    const/4 v14, 0x0

    .line 355
    :goto_0
    return v14

    .line 321
    :cond_1
    new-instance v3, Landroid/location/Geocoder;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 322
    .local v3, geo:Landroid/location/Geocoder;
    const v12, 0x55d4a80

    .local v12, minLat:I
    const v10, -0x55d4a80

    .line 323
    .local v10, maxLat:I
    const v13, 0xaba9500

    .local v13, minLon:I
    const v11, -0xaba9500

    .line 326
    .local v11, maxLon:I
    const/4 v14, 0x5

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v14}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    .line 328
    .local v7, loc:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_4

    .line 330
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v14}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v9

    .line 331
    .local v9, mapOverlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    const/4 v14, 0x0

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;

    .line 332
    .local v5, itemizedOverlay:Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;
    invoke-virtual {v5}, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->clearOverlay()V

    .line 334
    const/4 v1, 0x0

    .line 335
    .local v1, addr:Landroid/location/Address;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    if-ge v4, v14, :cond_2

    .line 336
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #addr:Landroid/location/Address;
    check-cast v1, Landroid/location/Address;

    .line 337
    .restart local v1       #addr:Landroid/location/Address;
    invoke-virtual {v1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings/myplace/SelectMapActivity;->convToInt(D)I

    move-result v6

    .line 338
    .local v6, lat:I
    invoke-virtual {v1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings/myplace/SelectMapActivity;->convToInt(D)I

    move-result v8

    .line 339
    .local v8, lon:I
    invoke-virtual {v1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v8, v14}, Lcom/android/settings/myplace/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    .line 340
    invoke-static {v12, v6}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 341
    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 342
    invoke-static {v13, v8}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 343
    invoke-static {v11, v8}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 335
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 345
    .end local v6           #lat:I
    .end local v8           #lon:I
    :cond_2
    if-eqz v1, :cond_3

    .line 346
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10, v13, v11}, Lcom/android/settings/myplace/SelectMapActivity;->moveToMarker(IIII)Z

    .line 355
    .end local v1           #addr:Landroid/location/Address;
    .end local v4           #i:I
    .end local v5           #itemizedOverlay:Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;
    .end local v7           #loc:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v9           #mapOverlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    :cond_3
    :goto_2
    const/4 v14, 0x1

    goto :goto_0

    .line 349
    .restart local v7       #loc:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :cond_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myplace/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0913e5

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 352
    .end local v7           #loc:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v2

    .line 353
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private getOverlay(IILandroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/google/android/maps/OverlayItem;
    .locals 3
    .parameter "latitude"
    .parameter "longitude"
    .parameter "drawable"
    .parameter "snippet"

    .prologue
    .line 446
    new-instance v1, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v1, p1, p2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 447
    .local v1, point:Lcom/google/android/maps/GeoPoint;
    new-instance v0, Lcom/google/android/maps/OverlayItem;

    const-string v2, ""

    invoke-direct {v0, v1, v2, p4}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    .local v0, overlay:Lcom/google/android/maps/OverlayItem;
    invoke-virtual {v0, p3}, Lcom/google/android/maps/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    .line 449
    return-object v0
.end method

.method private initMarker()Z
    .locals 5

    .prologue
    .line 420
    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v2

    .line 422
    .local v2, mapOverlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 423
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;

    invoke-direct {v1, p0, p0, v0}, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;-><init>(Lcom/android/settings/myplace/SelectMapActivity;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 424
    .local v1, itemizedOverlay:Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    const/4 v3, 0x1

    return v3
.end method

.method private moveToMarker(II)Z
    .locals 5
    .parameter "lat"
    .parameter "lon"

    .prologue
    const/4 v4, 0x1

    .line 462
    new-instance v0, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v0, p1, p2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 463
    .local v0, point:Lcom/google/android/maps/GeoPoint;
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 464
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 465
    new-instance v1, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;-><init>(Lcom/android/settings/myplace/SelectMapActivity;Lcom/android/settings/myplace/SelectMapActivity$1;)V

    new-array v2, v4, [Lcom/google/android/maps/GeoPoint;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 466
    iput p1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    .line 467
    iput p2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    .line 468
    return v4
.end method

.method private moveToMarker(IIII)Z
    .locals 7
    .parameter "minLat"
    .parameter "maxLat"
    .parameter "minLon"
    .parameter "maxLon"

    .prologue
    const/4 v6, 0x1

    .line 472
    sub-int v0, p2, p1

    .line 473
    .local v0, lat_span:I
    sub-int v1, p4, p3

    .line 474
    .local v1, lon_span:I
    new-instance v2, Lcom/google/android/maps/GeoPoint;

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v3, p1

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, p3

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 475
    .local v2, point:Lcom/google/android/maps/GeoPoint;
    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v4}, Lcom/google/android/maps/MapView;->getMaxZoomLevel()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 476
    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 477
    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 478
    new-instance v3, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;-><init>(Lcom/android/settings/myplace/SelectMapActivity;Lcom/android/settings/myplace/SelectMapActivity$1;)V

    new-array v4, v6, [Lcom/google/android/maps/GeoPoint;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 479
    invoke-virtual {v2}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v3

    iput v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    .line 480
    invoke-virtual {v2}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    iput v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    .line 481
    return v6
.end method

.method private moveToMarker(Lcom/google/android/maps/GeoPoint;)Z
    .locals 4
    .parameter "point"

    .prologue
    const/4 v3, 0x1

    .line 453
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 454
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 455
    new-instance v0, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;-><init>(Lcom/android/settings/myplace/SelectMapActivity;Lcom/android/settings/myplace/SelectMapActivity$1;)V

    new-array v1, v3, [Lcom/google/android/maps/GeoPoint;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/myplace/SelectMapActivity$UpdateLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 456
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    iput v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    .line 457
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v0

    iput v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    .line 458
    return v3
.end method

.method private searchLocation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 296
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, location:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mResearch:Z

    if-eqz v2, :cond_0

    .line 306
    :cond_2
    iput-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 307
    iput-boolean v5, p0, Lcom/android/settings/myplace/SelectMapActivity;->mResearch:Z

    .line 310
    new-instance v2, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;-><init>(Lcom/android/settings/myplace/SelectMapActivity;Lcom/android/settings/myplace/SelectMapActivity$1;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/android/settings/myplace/SelectMapActivity$SearchLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 312
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/settings/myplace/SelectMapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 313
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private setMyLocationOverlay()V
    .locals 4

    .prologue
    .line 727
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    if-nez v2, :cond_0

    .line 728
    new-instance v2, Lcom/google/android/maps/MyLocationOverlay;

    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-direct {v2, p0, v3}, Lcom/google/android/maps/MyLocationOverlay;-><init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V

    iput-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    .line 730
    :cond_0
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v2}, Lcom/google/android/maps/MyLocationOverlay;->enableMyLocation()Z

    .line 733
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    .line 734
    .local v1, mapOverlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    if-eqz v1, :cond_1

    .line 735
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;

    .line 736
    .local v0, itemizedOverlay:Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;
    if-eqz v0, :cond_1

    .line 737
    invoke-virtual {v0}, Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;->clearOverlay()V

    .line 741
    .end local v0           #itemizedOverlay:Lcom/android/settings/myplace/SelectMapActivity$SelectMapOverlay;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    new-instance v3, Lcom/android/settings/myplace/SelectMapActivity$7;

    invoke-direct {v3, p0}, Lcom/android/settings/myplace/SelectMapActivity$7;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v2, v3}, Lcom/google/android/maps/MyLocationOverlay;->runOnFirstFix(Ljava/lang/Runnable;)Z

    .line 755
    return-void
.end method

.method private showLocationDisabledDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 817
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocationDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocationDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 819
    iput-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocationDisabledDialog:Landroid/app/AlertDialog;

    .line 822
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0913e7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0913e8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090865

    new-instance v2, Lcom/android/settings/myplace/SelectMapActivity$8;

    invoke-direct {v2, p0}, Lcom/android/settings/myplace/SelectMapActivity$8;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090173

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocationDisabledDialog:Landroid/app/AlertDialog;

    .line 834
    return-void
.end method

.method private updateLocation(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .locals 13
    .parameter "point"

    .prologue
    .line 551
    const-string v12, ""

    .line 552
    .local v12, location:Ljava/lang/String;
    const/4 v9, 0x0

    .line 555
    .local v9, data:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fa_FA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    new-instance v1, Ljava/util/Locale;

    const-string v2, "fa_IR"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 562
    :cond_0
    :try_start_0
    new-instance v0, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 563
    .local v0, geoCoder:Landroid/location/Geocoder;
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/myplace/SelectMapActivity;->convToDouble(I)D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/myplace/SelectMapActivity;->convToDouble(I)D

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v9

    .line 565
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 566
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    .line 568
    .local v6, address:Landroid/location/Address;
    invoke-virtual {v6}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v8

    .line 569
    .local v8, addressLines:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-gt v11, v8, :cond_3

    .line 570
    invoke-virtual {v6, v11}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v7

    .line 571
    .local v7, addressLine:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 572
    if-nez v11, :cond_2

    .line 573
    move-object v12, v7

    .line 569
    :cond_1
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 575
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    goto :goto_1

    .line 581
    .end local v0           #geoCoder:Landroid/location/Geocoder;
    .end local v6           #address:Landroid/location/Address;
    .end local v7           #addressLine:Ljava/lang/String;
    .end local v8           #addressLines:I
    .end local v11           #i:I
    :catch_0
    move-exception v10

    .line 582
    .local v10, e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 585
    .end local v10           #e:Ljava/io/IOException;
    :cond_3
    return-object v12
.end method


# virtual methods
.method protected captureMap()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 485
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v4, v3}, Lcom/google/android/maps/MapView;->setDrawingCacheEnabled(Z)V

    .line 486
    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v4}, Lcom/google/android/maps/MapView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 488
    .local v0, saved:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCaptureWidth:I

    sub-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 489
    .local v1, x:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCaptureHeight:I

    sub-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x2

    .line 490
    .local v2, y:I
    if-gez v2, :cond_0

    .line 491
    const/4 v2, 0x0

    .line 497
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCaptureHeight:I

    add-int/2addr v5, v2

    if-ge v4, v5, :cond_2

    .line 498
    :cond_1
    const/4 v3, 0x0

    .line 500
    :goto_0
    return v3

    .line 499
    :cond_2
    iget v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCaptureWidth:I

    iget v5, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCaptureHeight:I

    invoke-static {v0, v1, v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected doFinish()V
    .locals 5

    .prologue
    .line 504
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 505
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 508
    .local v1, result:Landroid/content/Intent;
    const-string v2, "latitude"

    iget v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 509
    const-string v2, "longitude"

    iget v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 510
    const-string v2, "location"

    iget-object v3, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->captureMap()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 519
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 520
    .local v0, os:Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 521
    const-string v2, "map"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 524
    .end local v0           #os:Ljava/io/ByteArrayOutputStream;
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/myplace/SelectMapActivity;->setResult(ILandroid/content/Intent;)V

    .line 525
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->finish()V

    .line 526
    return-void
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 530
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 785
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 786
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->invalidateOptionsMenu()V

    .line 787
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "bundle"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 117
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    :try_start_0
    const-string v2, "android.os.AsyncTask"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const v4, 0x7f0907a2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/16 v4, 0xe

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 128
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 129
    const-string v2, "mode"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapMode:I

    .line 130
    const-string v2, "map_latitude"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    .line 131
    const-string v2, "map_longtitude"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    .line 132
    const v2, 0x7f040165

    invoke-virtual {p0, v2}, Lcom/android/settings/myplace/SelectMapActivity;->setContentView(I)V

    .line 134
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mIsTabletConfig:Z

    .line 136
    new-instance v2, Landroid/location/Geocoder;

    invoke-direct {v2, p0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mGeo:Landroid/location/Geocoder;

    .line 138
    const v2, 0x7f0b03d4

    invoke-virtual {p0, v2}, Lcom/android/settings/myplace/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/maps/MapView;

    iput-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    .line 139
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2, v5}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    .line 142
    const v2, 0x7f0b0384

    invoke-virtual {p0, v2}, Lcom/android/settings/myplace/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    .line 143
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    const v4, 0x10000003

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 144
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    new-instance v4, Lcom/android/settings/myplace/SelectMapActivity$1;

    invoke-direct {v4, p0}, Lcom/android/settings/myplace/SelectMapActivity$1;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 152
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    const-string v4, "My_Location"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 155
    .local v1, length:I
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    if-lez v1, :cond_3

    .end local v1           #length:I
    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 158
    :cond_0
    const v2, 0x7f0b03d2

    invoke-virtual {p0, v2}, Lcom/android/settings/myplace/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchButton:Landroid/widget/ImageButton;

    .line 161
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSearchButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/settings/myplace/SelectMapActivity$2;

    invoke-direct {v3, p0}, Lcom/android/settings/myplace/SelectMapActivity$2;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    const v2, 0x7f0b03d3

    invoke-virtual {p0, v2}, Lcom/android/settings/myplace/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCurrentLocation:Landroid/widget/ImageButton;

    .line 173
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCurrentLocation:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/settings/myplace/SelectMapActivity$3;

    invoke-direct {v3, p0}, Lcom/android/settings/myplace/SelectMapActivity$3;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/android/settings/myplace/SelectMapActivity$4;

    invoke-direct {v3, p0}, Lcom/android/settings/myplace/SelectMapActivity$4;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0102

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCaptureHeight:I

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0101

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mCaptureWidth:I

    .line 217
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 218
    const-string v2, ""

    iput-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 221
    :cond_1
    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    const-string v3, "My_Location"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 222
    invoke-direct {p0}, Lcom/android/settings/myplace/SelectMapActivity;->setMyLocationOverlay()V

    .line 224
    :cond_2
    return-void

    .restart local v1       #length:I
    :cond_3
    move v1, v3

    .line 155
    goto :goto_1

    .line 121
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #length:I
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 761
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 763
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 764
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 765
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f120005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 776
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :goto_0
    iget v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapMode:I

    if-nez v1, :cond_0

    .line 777
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 778
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 780
    :cond_0
    return v4

    .line 767
    :cond_1
    const v1, 0x7f090173

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 769
    const v1, 0x7f090d67

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 772
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200dd

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 773
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200e1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 286
    const/16 v1, 0x52

    if-ne p1, v1, :cond_0

    .line 292
    :goto_0
    return v0

    .line 288
    :cond_0
    const/16 v1, 0x54

    if-ne p1, v1, :cond_1

    .line 289
    invoke-direct {p0}, Lcom/android/settings/myplace/SelectMapActivity;->searchLocation()V

    goto :goto_0

    .line 292
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/MapActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 791
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 812
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 793
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->finish()V

    goto :goto_0

    .line 797
    :sswitch_1
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    if-eqz v1, :cond_0

    .line 798
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v1}, Lcom/google/android/maps/MyLocationOverlay;->disableMyLocation()V

    .line 800
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->captureMap()Z

    .line 801
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->doFinish()V

    goto :goto_0

    .line 805
    :sswitch_2
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    if-eqz v1, :cond_1

    .line 806
    const-string v1, ""

    iput-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 807
    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v1}, Lcom/google/android/maps/MyLocationOverlay;->disableMyLocation()V

    .line 809
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/myplace/SelectMapActivity;->finish()V

    goto :goto_0

    .line 791
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_0
        0x7f0b05fa -> :sswitch_2
        0x7f0b05fc -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 259
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onPause()V

    .line 260
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->disableMyLocation()V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getZoomButtonsController()Landroid/widget/ZoomButtonsController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 264
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 277
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 278
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 279
    const-string v0, "latitude"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    .line 280
    const-string v0, "longitude"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    .line 281
    const-string v0, "snippet"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSnippet:Ljava/lang/String;

    .line 282
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 228
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onResume()V

    .line 230
    invoke-direct {p0}, Lcom/android/settings/myplace/SelectMapActivity;->initMarker()Z

    .line 232
    iget v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    if-eqz v0, :cond_3

    .line 233
    :cond_0
    iget v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    iget v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    const-string v2, "here"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/myplace/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    .line 234
    iget v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    iget v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/myplace/SelectMapActivity;->moveToMarker(II)Z

    .line 251
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSnippet:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 252
    iget v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    iget v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    iget-object v2, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSnippet:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/myplace/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    .line 253
    iget v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    iget v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/myplace/SelectMapActivity;->moveToMarker(II)Z

    .line 255
    :cond_2
    return-void

    .line 236
    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/myplace/SelectMapActivity$5;

    invoke-direct {v1, p0}, Lcom/android/settings/myplace/SelectMapActivity$5;-><init>(Lcom/android/settings/myplace/SelectMapActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 243
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;

    const-string v1, "My_Location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    if-nez v0, :cond_4

    .line 245
    new-instance v0, Lcom/google/android/maps/MyLocationOverlay;

    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/MyLocationOverlay;-><init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V

    iput-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    .line 247
    :cond_4
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->enableMyLocation()Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 268
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 269
    const-string v0, "location"

    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v0, "latitude"

    iget v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLatitude:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 271
    const-string v0, "longitude"

    iget v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mLongitude:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 272
    const-string v0, "snippet"

    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity;->mSnippet:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    return-void
.end method
