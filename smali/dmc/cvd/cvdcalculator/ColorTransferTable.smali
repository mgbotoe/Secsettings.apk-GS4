.class public Ldmc/cvd/cvdcalculator/ColorTransferTable;
.super Ljava/lang/Object;
.source "ColorTransferTable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method private getColorTransferValue(IIDD)I
    .locals 12
    .parameter "color"
    .parameter "CVDType"
    .parameter "severity"
    .parameter "userParameter"

    .prologue
    .line 252
    const/4 v4, 0x0

    check-cast v4, [I

    .line 253
    .local v4, maxMin:[I
    const/4 v3, 0x0

    .line 255
    .local v3, integerUserParamter:I
    const/4 v2, 0x0

    .line 256
    .local v2, difference:I
    const/4 v5, 0x0

    .line 259
    .local v5, value:I
    invoke-direct/range {p0 .. p6}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getMaxMinColorTransferValue(IIDD)[I

    move-result-object v4

    .line 262
    const/4 v6, 0x0

    aget v6, v4, v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    aget v6, v4, v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 263
    const/4 v6, -0x1

    .line 305
    :goto_0
    return v6

    .line 267
    :cond_0
    const/4 v6, 0x0

    aget v6, v4, v6

    const/4 v7, 0x1

    aget v7, v4, v7

    sub-int v2, v6, v7

    .line 270
    move-wide/from16 v0, p5

    invoke-direct {p0, v0, v1}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->roundHalfUp(D)I

    move-result v3

    .line 300
    int-to-double v6, v2

    int-to-double v8, v3

    const-wide/high16 v10, 0x4024

    div-double/2addr v8, v10

    mul-double/2addr v6, v8

    const/4 v8, 0x1

    aget v8, v4, v8

    int-to-double v8, v8

    add-double/2addr v6, v8

    double-to-int v5, v6

    move v6, v5

    .line 305
    goto :goto_0
.end method

.method private getMaxMinColorTransferValue(IIDD)[I
    .locals 7
    .parameter "color"
    .parameter "CVDType"
    .parameter "severity"
    .parameter "userParameter"

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 319
    const/4 v6, 0x0

    check-cast v6, [I

    .line 321
    .local v6, maxMin:[I
    if-ne p1, v2, :cond_0

    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    move-wide v4, p5

    .line 322
    invoke-direct/range {v0 .. v5}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getMaxMinColorTrnasferValueRed(IDD)[I

    move-result-object v6

    .line 337
    :goto_0
    return-object v6

    .line 324
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    move-wide v4, p5

    .line 325
    invoke-direct/range {v0 .. v5}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getMaxMinColorTrnasferValueGreen(IDD)[I

    move-result-object v6

    goto :goto_0

    .line 327
    :cond_1
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    move-wide v4, p5

    .line 328
    invoke-direct/range {v0 .. v5}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getMaxMinColorTrnasferValueMagenta(IDD)[I

    move-result-object v6

    goto :goto_0

    .line 332
    :cond_2
    const/4 v0, 0x2

    new-array v6, v0, [I

    .line 333
    const/4 v0, 0x0

    aput v1, v6, v0

    .line 334
    aput v1, v6, v2

    goto :goto_0
.end method

.method private getMaxMinColorTrnasferValueGreen(IDD)[I
    .locals 6
    .parameter "CVDType"
    .parameter "severity"
    .parameter "userParameter"

    .prologue
    const/4 v5, 0x1

    .line 481
    const/4 v3, 0x0

    .line 482
    .local v3, min:I
    const/4 v1, 0x0

    .line 484
    .local v1, max:I
    const/4 v0, 0x0

    .line 486
    .local v0, integerSeverity:I
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 489
    .local v2, maxMin:[I
    invoke-direct {p0, p2, p3}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 492
    if-nez p1, :cond_0

    .line 494
    packed-switch v0, :pswitch_data_0

    .line 596
    :goto_0
    const/4 v4, 0x0

    aput v1, v2, v4

    .line 597
    aput v3, v2, v5

    .line 599
    return-object v2

    .line 496
    :pswitch_0
    const/4 v3, 0x1

    .line 497
    const/4 v1, 0x1

    .line 498
    goto :goto_0

    .line 500
    :pswitch_1
    const/16 v3, 0x13

    .line 501
    const/16 v1, 0x13

    .line 502
    goto :goto_0

    .line 504
    :pswitch_2
    const/16 v3, 0x25

    .line 505
    const/16 v1, 0x25

    .line 506
    goto :goto_0

    .line 508
    :pswitch_3
    const/16 v3, 0x33

    .line 509
    const/16 v1, 0x33

    .line 510
    goto :goto_0

    .line 512
    :pswitch_4
    const/16 v3, 0x3f

    .line 513
    const/16 v1, 0x3f

    .line 514
    goto :goto_0

    .line 516
    :pswitch_5
    const/16 v3, 0x4b

    .line 517
    const/16 v1, 0x4b

    .line 518
    goto :goto_0

    .line 520
    :pswitch_6
    const/16 v3, 0x55

    .line 521
    const/16 v1, 0x55

    .line 522
    goto :goto_0

    .line 524
    :pswitch_7
    const/16 v3, 0x5d

    .line 525
    const/16 v1, 0x5d

    .line 526
    goto :goto_0

    .line 528
    :pswitch_8
    const/16 v3, 0x67

    .line 529
    const/16 v1, 0x67

    .line 530
    goto :goto_0

    .line 532
    :pswitch_9
    const/16 v3, 0x6d

    .line 533
    const/16 v1, 0x6d

    .line 534
    goto :goto_0

    .line 536
    :pswitch_a
    const/16 v3, 0x73

    .line 537
    const/16 v1, 0x73

    goto :goto_0

    .line 542
    :cond_0
    if-ne p1, v5, :cond_1

    .line 544
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 546
    :pswitch_b
    const/4 v3, 0x1

    .line 547
    const/4 v1, 0x1

    .line 548
    goto :goto_0

    .line 550
    :pswitch_c
    const/16 v3, 0x13

    .line 551
    const/16 v1, 0x13

    .line 552
    goto :goto_0

    .line 554
    :pswitch_d
    const/16 v3, 0x23

    .line 555
    const/16 v1, 0x23

    .line 556
    goto :goto_0

    .line 558
    :pswitch_e
    const/16 v3, 0x2f

    .line 559
    const/16 v1, 0x2f

    .line 560
    goto :goto_0

    .line 562
    :pswitch_f
    const/16 v3, 0x39

    .line 563
    const/16 v1, 0x39

    .line 564
    goto :goto_0

    .line 566
    :pswitch_10
    const/16 v3, 0x41

    .line 567
    const/16 v1, 0x41

    .line 568
    goto :goto_0

    .line 570
    :pswitch_11
    const/16 v3, 0x49

    .line 571
    const/16 v1, 0x49

    .line 572
    goto :goto_0

    .line 574
    :pswitch_12
    const/16 v3, 0x4f

    .line 575
    const/16 v1, 0x4f

    .line 576
    goto :goto_0

    .line 578
    :pswitch_13
    const/16 v3, 0x55

    .line 579
    const/16 v1, 0x55

    .line 580
    goto :goto_0

    .line 582
    :pswitch_14
    const/16 v3, 0x59

    .line 583
    const/16 v1, 0x59

    .line 584
    goto :goto_0

    .line 586
    :pswitch_15
    const/16 v3, 0x5e

    .line 587
    const/16 v1, 0x5e

    goto :goto_0

    .line 592
    :cond_1
    const/4 v3, -0x1

    .line 593
    const/4 v1, -0x1

    goto :goto_0

    .line 494
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 544
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValueMagenta(IDD)[I
    .locals 6
    .parameter "CVDType"
    .parameter "severity"
    .parameter "userParameter"

    .prologue
    const/4 v5, 0x1

    .line 612
    const/4 v3, 0x0

    .line 613
    .local v3, min:I
    const/4 v1, 0x0

    .line 615
    .local v1, max:I
    const/4 v0, 0x0

    .line 617
    .local v0, integerSeverity:I
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 620
    .local v2, maxMin:[I
    invoke-direct {p0, p2, p3}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 623
    if-nez p1, :cond_0

    .line 625
    packed-switch v0, :pswitch_data_0

    .line 728
    :goto_0
    const/4 v4, 0x0

    aput v1, v2, v4

    .line 729
    aput v3, v2, v5

    .line 731
    return-object v2

    .line 627
    :pswitch_0
    const/16 v3, 0xfe

    .line 628
    const/16 v1, 0xfe

    .line 629
    goto :goto_0

    .line 631
    :pswitch_1
    const/16 v3, 0xea

    .line 632
    const/16 v1, 0xee

    .line 633
    goto :goto_0

    .line 635
    :pswitch_2
    const/16 v3, 0xda

    .line 636
    const/16 v1, 0xe4

    .line 637
    goto :goto_0

    .line 639
    :pswitch_3
    const/16 v3, 0xcc

    .line 640
    const/16 v1, 0xe2

    .line 641
    goto :goto_0

    .line 643
    :pswitch_4
    const/16 v3, 0xbe

    .line 644
    const/16 v1, 0xe4

    .line 645
    goto :goto_0

    .line 647
    :pswitch_5
    const/16 v3, 0xb3

    .line 648
    const/16 v1, 0xe4

    .line 649
    goto :goto_0

    .line 651
    :pswitch_6
    const/16 v3, 0xa9

    .line 652
    const/16 v1, 0xea

    .line 653
    goto :goto_0

    .line 655
    :pswitch_7
    const/16 v3, 0xa1

    .line 656
    const/16 v1, 0xf0

    .line 657
    goto :goto_0

    .line 659
    :pswitch_8
    const/16 v3, 0x98

    .line 660
    const/16 v1, 0xf6

    .line 661
    goto :goto_0

    .line 664
    :pswitch_9
    const/16 v3, 0x90

    .line 665
    const/16 v1, 0xfa

    .line 666
    goto :goto_0

    .line 668
    :pswitch_a
    const/16 v3, 0x8a

    .line 669
    const/16 v1, 0xfc

    goto :goto_0

    .line 674
    :cond_0
    if-ne p1, v5, :cond_1

    .line 676
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 678
    :pswitch_b
    const/16 v3, 0xfe

    .line 679
    const/16 v1, 0xfe

    .line 680
    goto :goto_0

    .line 682
    :pswitch_c
    const/16 v3, 0xea

    .line 683
    const/16 v1, 0xee

    .line 684
    goto :goto_0

    .line 686
    :pswitch_d
    const/16 v3, 0xda

    .line 687
    const/16 v1, 0xe4

    .line 688
    goto :goto_0

    .line 690
    :pswitch_e
    const/16 v3, 0xcc

    .line 691
    const/16 v1, 0xe2

    .line 692
    goto :goto_0

    .line 694
    :pswitch_f
    const/16 v3, 0xbe

    .line 695
    const/16 v1, 0xe4

    .line 696
    goto :goto_0

    .line 698
    :pswitch_10
    const/16 v3, 0xb3

    .line 699
    const/16 v1, 0xe4

    .line 700
    goto :goto_0

    .line 702
    :pswitch_11
    const/16 v3, 0xa9

    .line 703
    const/16 v1, 0xea

    .line 704
    goto :goto_0

    .line 706
    :pswitch_12
    const/16 v3, 0xa1

    .line 707
    const/16 v1, 0xf0

    .line 708
    goto :goto_0

    .line 710
    :pswitch_13
    const/16 v3, 0x98

    .line 711
    const/16 v1, 0xf6

    .line 712
    goto :goto_0

    .line 714
    :pswitch_14
    const/16 v3, 0x90

    .line 715
    const/16 v1, 0xfa

    .line 716
    goto :goto_0

    .line 718
    :pswitch_15
    const/16 v3, 0x8a

    .line 719
    const/16 v1, 0xfc

    goto :goto_0

    .line 724
    :cond_1
    const/4 v3, -0x1

    .line 725
    const/4 v1, -0x1

    goto :goto_0

    .line 625
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 676
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method private getMaxMinColorTrnasferValueRed(IDD)[I
    .locals 6
    .parameter "CVDType"
    .parameter "severity"
    .parameter "userParameter"

    .prologue
    const/4 v5, 0x1

    .line 350
    const/4 v3, 0x0

    .line 351
    .local v3, min:I
    const/4 v1, 0x0

    .line 353
    .local v1, max:I
    const/4 v0, 0x0

    .line 355
    .local v0, integerSeverity:I
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 358
    .local v2, maxMin:[I
    invoke-direct {p0, p2, p3}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->roundHalfUp(D)I

    move-result v0

    .line 361
    if-nez p1, :cond_0

    .line 363
    packed-switch v0, :pswitch_data_0

    .line 465
    :goto_0
    const/4 v4, 0x0

    aput v1, v2, v4

    .line 466
    aput v3, v2, v5

    .line 468
    return-object v2

    .line 365
    :pswitch_0
    const/4 v3, 0x0

    .line 366
    const/4 v1, 0x0

    .line 367
    goto :goto_0

    .line 369
    :pswitch_1
    const/4 v3, 0x0

    .line 370
    const/16 v1, 0x24

    .line 371
    goto :goto_0

    .line 373
    :pswitch_2
    const/4 v3, 0x0

    .line 374
    const/16 v1, 0x42

    .line 375
    goto :goto_0

    .line 377
    :pswitch_3
    const/4 v3, 0x0

    .line 378
    const/16 v1, 0x5c

    .line 379
    goto :goto_0

    .line 381
    :pswitch_4
    const/4 v3, 0x0

    .line 382
    const/16 v1, 0x75

    .line 383
    goto :goto_0

    .line 385
    :pswitch_5
    const/4 v3, 0x0

    .line 386
    const/16 v1, 0x88

    .line 387
    goto :goto_0

    .line 389
    :pswitch_6
    const/4 v3, 0x0

    .line 390
    const/16 v1, 0x9c

    .line 391
    goto :goto_0

    .line 393
    :pswitch_7
    const/4 v3, 0x0

    .line 394
    const/16 v1, 0xac

    .line 395
    goto :goto_0

    .line 397
    :pswitch_8
    const/4 v3, 0x0

    .line 398
    const/16 v1, 0xbc

    .line 399
    goto :goto_0

    .line 401
    :pswitch_9
    const/4 v3, 0x0

    .line 402
    const/16 v1, 0xca

    .line 403
    goto :goto_0

    .line 405
    :pswitch_a
    const/4 v3, 0x0

    .line 406
    const/16 v1, 0xd8

    goto :goto_0

    .line 411
    :cond_0
    if-ne p1, v5, :cond_1

    .line 413
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 415
    :pswitch_b
    const/4 v3, 0x0

    .line 416
    const/4 v1, 0x0

    .line 417
    goto :goto_0

    .line 419
    :pswitch_c
    const/4 v3, 0x0

    .line 420
    const/16 v1, 0x24

    .line 421
    goto :goto_0

    .line 423
    :pswitch_d
    const/4 v3, 0x0

    .line 424
    const/16 v1, 0x42

    .line 425
    goto :goto_0

    .line 427
    :pswitch_e
    const/4 v3, 0x0

    .line 428
    const/16 v1, 0x5c

    .line 429
    goto :goto_0

    .line 431
    :pswitch_f
    const/4 v3, 0x0

    .line 432
    const/16 v1, 0x75

    .line 433
    goto :goto_0

    .line 435
    :pswitch_10
    const/4 v3, 0x0

    .line 436
    const/16 v1, 0x88

    .line 437
    goto :goto_0

    .line 439
    :pswitch_11
    const/4 v3, 0x0

    .line 440
    const/16 v1, 0x9c

    .line 441
    goto :goto_0

    .line 443
    :pswitch_12
    const/4 v3, 0x0

    .line 444
    const/16 v1, 0xac

    .line 445
    goto :goto_0

    .line 447
    :pswitch_13
    const/4 v3, 0x0

    .line 448
    const/16 v1, 0xbc

    .line 449
    goto :goto_0

    .line 451
    :pswitch_14
    const/4 v3, 0x0

    .line 452
    const/16 v1, 0xca

    .line 453
    goto :goto_0

    .line 455
    :pswitch_15
    const/4 v3, 0x0

    .line 456
    const/16 v1, 0xd8

    goto :goto_0

    .line 461
    :cond_1
    const/4 v3, -0x1

    .line 462
    const/4 v1, -0x1

    goto :goto_0

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 413
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method private roundHalfUp(D)I
    .locals 3
    .parameter "value"

    .prologue
    .line 742
    const/4 v0, 0x0

    .line 744
    .local v0, roundedValue:I
    const-wide/high16 v1, 0x4024

    mul-double/2addr p1, v1

    .line 745
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v0, v1

    .line 747
    return v0
.end method


# virtual methods
.method public getColorTransferValue(IIIDD)I
    .locals 8
    .parameter "firstColor"
    .parameter "secondColor"
    .parameter "CVDType"
    .parameter "severity"
    .parameter "userParameter"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 95
    const/4 v7, 0x0

    .line 98
    .local v7, value:I
    if-ne p1, v1, :cond_5

    .line 99
    if-ne p2, v1, :cond_2

    .line 100
    if-nez p3, :cond_1

    .line 101
    const/16 v7, 0xfe

    .line 237
    :cond_0
    :goto_0
    return v7

    .line 103
    :cond_1
    if-ne p3, v1, :cond_0

    .line 104
    const/16 v7, 0xff

    goto :goto_0

    .line 107
    :cond_2
    if-ne p2, v2, :cond_4

    .line 108
    if-nez p3, :cond_3

    .line 109
    const/4 v7, 0x0

    goto :goto_0

    .line 111
    :cond_3
    if-ne p3, v1, :cond_0

    .line 112
    const/4 v7, 0x1

    goto :goto_0

    .line 115
    :cond_4
    if-ne p2, v3, :cond_0

    move-object v0, p0

    move v1, p1

    move v2, p3

    move-wide v3, p4

    move-wide v5, p6

    .line 117
    invoke-direct/range {v0 .. v6}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIDD)I

    move-result v7

    goto :goto_0

    .line 121
    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_a

    .line 122
    if-ne p2, v1, :cond_7

    .line 123
    if-nez p3, :cond_6

    .line 124
    const/16 v7, 0xfe

    goto :goto_0

    .line 126
    :cond_6
    if-ne p3, v1, :cond_0

    .line 127
    const/16 v7, 0xff

    goto :goto_0

    .line 130
    :cond_7
    if-ne p2, v2, :cond_9

    .line 131
    if-nez p3, :cond_8

    .line 132
    const/16 v7, 0xff

    goto :goto_0

    .line 134
    :cond_8
    if-ne p3, v1, :cond_0

    .line 135
    const/16 v7, 0xfe

    goto :goto_0

    .line 138
    :cond_9
    if-ne p2, v3, :cond_0

    .line 139
    const/4 v7, 0x0

    goto :goto_0

    .line 143
    :cond_a
    if-ne p1, v2, :cond_f

    .line 144
    if-ne p2, v1, :cond_c

    .line 145
    if-nez p3, :cond_b

    .line 146
    const/4 v7, 0x1

    goto :goto_0

    .line 148
    :cond_b
    if-ne p3, v1, :cond_0

    .line 149
    const/4 v7, 0x0

    goto :goto_0

    .line 152
    :cond_c
    if-ne p2, v2, :cond_e

    .line 153
    if-nez p3, :cond_d

    .line 154
    const/16 v7, 0xff

    goto :goto_0

    .line 156
    :cond_d
    if-ne p3, v1, :cond_0

    .line 157
    const/16 v7, 0xfe

    goto :goto_0

    .line 160
    :cond_e
    if-ne p2, v3, :cond_0

    move-object v0, p0

    move v1, p1

    move v2, p3

    move-wide v3, p4

    move-wide v5, p6

    .line 162
    invoke-direct/range {v0 .. v6}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIDD)I

    move-result v7

    goto :goto_0

    .line 166
    :cond_f
    const/4 v0, 0x4

    if-ne p1, v0, :cond_14

    .line 167
    if-ne p2, v1, :cond_11

    .line 168
    if-nez p3, :cond_10

    .line 169
    const/4 v7, 0x1

    goto :goto_0

    .line 171
    :cond_10
    if-ne p3, v1, :cond_0

    .line 172
    const/4 v7, 0x0

    goto :goto_0

    .line 175
    :cond_11
    if-ne p2, v2, :cond_13

    .line 176
    if-nez p3, :cond_12

    .line 177
    const/16 v7, 0xff

    goto :goto_0

    .line 179
    :cond_12
    if-ne p3, v1, :cond_0

    .line 180
    const/16 v7, 0xfe

    goto :goto_0

    .line 183
    :cond_13
    if-ne p2, v3, :cond_0

    .line 184
    const/16 v7, 0xff

    goto :goto_0

    .line 188
    :cond_14
    if-ne p1, v3, :cond_19

    .line 189
    if-ne p2, v1, :cond_16

    .line 190
    if-nez p3, :cond_15

    .line 191
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 193
    :cond_15
    if-ne p3, v1, :cond_0

    .line 194
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 197
    :cond_16
    if-ne p2, v2, :cond_18

    .line 198
    if-nez p3, :cond_17

    .line 199
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 201
    :cond_17
    if-ne p3, v1, :cond_0

    .line 202
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 205
    :cond_18
    if-ne p2, v3, :cond_0

    .line 206
    const/16 v7, 0xfe

    goto/16 :goto_0

    .line 210
    :cond_19
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1e

    .line 211
    if-ne p2, v1, :cond_1b

    .line 212
    if-nez p3, :cond_1a

    .line 213
    const/16 v7, 0xfe

    goto/16 :goto_0

    .line 215
    :cond_1a
    if-ne p3, v1, :cond_0

    .line 216
    const/16 v7, 0xff

    goto/16 :goto_0

    .line 219
    :cond_1b
    if-ne p2, v2, :cond_1d

    .line 220
    if-nez p3, :cond_1c

    .line 221
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 223
    :cond_1c
    if-ne p3, v1, :cond_0

    .line 224
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 227
    :cond_1d
    if-ne p2, v3, :cond_0

    move-object v0, p0

    move v1, p1

    move v2, p3

    move-wide v3, p4

    move-wide v5, p6

    .line 229
    invoke-direct/range {v0 .. v6}, Ldmc/cvd/cvdcalculator/ColorTransferTable;->getColorTransferValue(IIDD)I

    move-result v7

    goto/16 :goto_0

    .line 234
    :cond_1e
    const/4 v7, -0x1

    goto/16 :goto_0
.end method
