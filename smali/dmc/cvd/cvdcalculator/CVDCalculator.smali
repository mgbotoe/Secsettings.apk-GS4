.class public Ldmc/cvd/cvdcalculator/CVDCalculator;
.super Ljava/lang/Object;
.source "CVDCalculator.java"


# instance fields
.field private SpotsU:[D

.field private SpotsV:[D

.field private mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

.field private mInputNums:[I

.field private u:[D

.field private v:[D


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x10

    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-array v0, v1, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->u:[D

    .line 50
    new-array v0, v1, [D

    fill-array-data v0, :array_1

    iput-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->v:[D

    .line 53
    new-array v0, v1, [D

    iput-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->SpotsU:[D

    .line 54
    new-array v0, v1, [D

    iput-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->SpotsV:[D

    .line 69
    iput-object v2, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mInputNums:[I

    .line 71
    iput-object v2, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    .line 79
    new-instance v0, Ldmc/cvd/cvdcalculator/ColorTransferTable;

    invoke-direct {v0}, Ldmc/cvd/cvdcalculator/ColorTransferTable;-><init>()V

    iput-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    .line 80
    return-void

    .line 49
    :array_0
    .array-data 0x8
        0xat 0xd7t 0xa3t 0x70t 0x3dt 0x8at 0x35t 0xc0t
        0xc3t 0xf5t 0x28t 0x5ct 0x8ft 0x42t 0x37t 0xc0t
        0x29t 0x5ct 0x8ft 0xc2t 0xf5t 0x68t 0x36t 0xc0t
        0x5ct 0x8ft 0xc2t 0xf5t 0x28t 0x1ct 0x37t 0xc0t
        0x33t 0x33t 0x33t 0x33t 0x33t 0x73t 0x36t 0xc0t
        0xc3t 0xf5t 0x28t 0x5ct 0x8ft 0xc2t 0x35t 0xc0t
        0x29t 0x5ct 0x8ft 0xc2t 0xf5t 0x28t 0x2ct 0xc0t
        0xc3t 0xf5t 0x28t 0x5ct 0x8ft 0xc2t 0x5t 0xc0t
        0xaet 0x47t 0xe1t 0x7at 0x14t 0xaet 0x2dt 0x40t
        0x1ft 0x85t 0xebt 0x51t 0xb8t 0xdet 0x37t 0x40t
        0x52t 0xb8t 0x1et 0x85t 0xebt 0xd1t 0x3ft 0x40t
        0xect 0x51t 0xb8t 0x1et 0x85t 0x6bt 0x3ft 0x40t
        0xat 0xd7t 0xa3t 0x70t 0x3dt 0xcat 0x3dt 0x40t
        0xa4t 0x70t 0x3dt 0xat 0xd7t 0xa3t 0x3at 0x40t
        0xect 0x51t 0xb8t 0x1et 0x85t 0xebt 0x36t 0x40t
        0x66t 0x66t 0x66t 0x66t 0x66t 0x66t 0x26t 0x40t
    .end array-data

    .line 50
    :array_1
    .array-data 0x8
        0x52t 0xb8t 0x1et 0x85t 0xebt 0x31t 0x43t 0xc0t
        0x8ft 0xc2t 0xf5t 0x28t 0x5ct 0x8ft 0x39t 0xc0t
        0x8ft 0xc2t 0xf5t 0x28t 0x5ct 0xft 0x2ft 0xc0t
        0xcdt 0xcct 0xcct 0xcct 0xcct 0xcct 0x1dt 0xc0t
        0x9at 0x99t 0x99t 0x99t 0x99t 0x99t 0xf1t 0x3ft
        0x66t 0x66t 0x66t 0x66t 0x66t 0x66t 0x1dt 0x40t
        0x3dt 0xat 0xd7t 0xa3t 0x70t 0xbdt 0x32t 0x40t
        0xe1t 0x7at 0x14t 0xaet 0x47t 0x21t 0x3ct 0x40t
        0xe1t 0x7at 0x14t 0xaet 0x47t 0x21t 0x3ft 0x40t
        0x9at 0x99t 0x99t 0x99t 0x99t 0x59t 0x3at 0x40t
        0x85t 0xebt 0x51t 0xb8t 0x1et 0x85t 0x2dt 0x40t
        0xf6t 0x28t 0x5ct 0x8ft 0xc2t 0xf5t 0x1bt 0x40t
        0x9at 0x99t 0x99t 0x99t 0x99t 0x99t 0xb9t 0x3ft
        0xc3t 0xf5t 0x28t 0x5ct 0x8ft 0xc2t 0x22t 0xc0t
        0x66t 0x66t 0x66t 0x66t 0x66t 0xa6t 0x32t 0xc0t
        0x5ct 0x8ft 0xc2t 0xf5t 0x28t 0x9ct 0x38t 0xc0t
    .end array-data
.end method


# virtual methods
.method public getRGBCMY(IDD)[I
    .locals 11
    .parameter "cvdType"
    .parameter "severity"
    .parameter "userParameter"

    .prologue
    .line 279
    const/4 v8, 0x0

    .line 280
    .local v8, firstInteger:I
    const/4 v10, 0x0

    .line 283
    .local v10, secondInteger:I
    const/4 v9, 0x0

    check-cast v9, [I

    .line 284
    .local v9, rgbCmy:[I
    const/16 v0, 0x9

    new-array v9, v0, [I

    .line 287
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 290
    :cond_0
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x1

    const/4 v2, 0x1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v8

    .line 291
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x4

    const/4 v2, 0x1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v10

    .line 293
    const/4 v0, 0x0

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    .line 295
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x1

    const/4 v2, 0x3

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v8

    .line 296
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x4

    const/4 v2, 0x3

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v10

    .line 298
    const/4 v0, 0x1

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    .line 300
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x1

    const/4 v2, 0x5

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v8

    .line 301
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x4

    const/4 v2, 0x5

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v10

    .line 303
    const/4 v0, 0x2

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    .line 305
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x3

    const/4 v2, 0x1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v8

    .line 306
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x6

    const/4 v2, 0x1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v10

    .line 308
    const/4 v0, 0x3

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    .line 310
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x3

    const/4 v2, 0x3

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v8

    .line 311
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x6

    const/4 v2, 0x3

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v10

    .line 313
    const/4 v0, 0x4

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    .line 315
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x3

    const/4 v2, 0x5

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v8

    .line 316
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x6

    const/4 v2, 0x5

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v10

    .line 318
    const/4 v0, 0x5

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    .line 320
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x5

    const/4 v2, 0x1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v8

    .line 321
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x2

    const/4 v2, 0x1

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v10

    .line 323
    const/4 v0, 0x6

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    .line 325
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x5

    const/4 v2, 0x3

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v8

    .line 326
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x2

    const/4 v2, 0x3

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v10

    .line 328
    const/4 v0, 0x7

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    .line 330
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x5

    const/4 v2, 0x5

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v8

    .line 331
    iget-object v0, p0, Ldmc/cvd/cvdcalculator/CVDCalculator;->mColorTransferTable:Ldmc/cvd/cvdcalculator/ColorTransferTable;

    const/4 v1, 0x2

    const/4 v2, 0x5

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIIDD)I

    move-result v10

    .line 333
    const/16 v0, 0x8

    mul-int/lit16 v1, v8, 0x100

    add-int/2addr v1, v10

    aput v1, v9, v0

    .line 350
    :goto_0
    return-object v9

    .line 338
    :cond_1
    const/4 v0, 0x0

    const v1, 0xff00

    aput v1, v9, v0

    .line 339
    const/4 v0, 0x1

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 340
    const/4 v0, 0x2

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 341
    const/4 v0, 0x3

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 342
    const/4 v0, 0x4

    const v1, 0xff00

    aput v1, v9, v0

    .line 343
    const/4 v0, 0x5

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 344
    const/4 v0, 0x6

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 345
    const/4 v0, 0x7

    const/16 v1, 0xff

    aput v1, v9, v0

    .line 346
    const/16 v0, 0x8

    const v1, 0xff00

    aput v1, v9, v0

    goto :goto_0
.end method
