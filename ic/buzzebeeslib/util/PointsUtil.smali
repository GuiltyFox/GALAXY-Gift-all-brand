.class public Lic/buzzebeeslib/util/PointsUtil;
.super Ljava/lang/Object;
.source "PointsUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialPointUI(JLandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 28
    .param p0, "points"    # J
    .param p2, "imgCash1"    # Landroid/widget/ImageView;
    .param p3, "imgCash2"    # Landroid/widget/ImageView;
    .param p4, "imgCash3"    # Landroid/widget/ImageView;
    .param p5, "imgCash4"    # Landroid/widget/ImageView;
    .param p6, "imgCash5"    # Landroid/widget/ImageView;
    .param p7, "imgCash6"    # Landroid/widget/ImageView;
    .param p8, "imgCash7"    # Landroid/widget/ImageView;
    .param p9, "imgCash8"    # Landroid/widget/ImageView;
    .param p10, "imgCash9"    # Landroid/widget/ImageView;
    .param p11, "imgComma1"    # Landroid/widget/ImageView;
    .param p12, "imgComma2"    # Landroid/widget/ImageView;

    .prologue
    .line 10
    const-string v11, "%09d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 11
    .local v10, "strPointPad":Ljava/lang/String;
    const/16 v11, 0x8

    const/16 v12, 0x9

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 12
    .local v1, "num1":Ljava/lang/String;
    const/4 v11, 0x7

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 13
    .local v2, "num2":Ljava/lang/String;
    const/4 v11, 0x6

    const/4 v12, 0x7

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 14
    .local v3, "num3":Ljava/lang/String;
    const/4 v11, 0x5

    const/4 v12, 0x6

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 15
    .local v4, "num4":Ljava/lang/String;
    const/4 v11, 0x4

    const/4 v12, 0x5

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 16
    .local v5, "num5":Ljava/lang/String;
    const/4 v11, 0x3

    const/4 v12, 0x4

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 17
    .local v6, "num6":Ljava/lang/String;
    const/4 v11, 0x2

    const/4 v12, 0x3

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 18
    .local v7, "num7":Ljava/lang/String;
    const/4 v11, 0x1

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 19
    .local v8, "num8":Ljava/lang/String;
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 21
    .local v9, "num9":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/PointsUtil;->setNumImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 22
    move-object/from16 v0, p3

    invoke-static {v0, v2}, Lic/buzzebeeslib/util/PointsUtil;->setNumImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 23
    move-object/from16 v0, p4

    invoke-static {v0, v3}, Lic/buzzebeeslib/util/PointsUtil;->setNumImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 24
    move-object/from16 v0, p5

    invoke-static {v0, v4}, Lic/buzzebeeslib/util/PointsUtil;->setNumImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 25
    move-object/from16 v0, p6

    invoke-static {v0, v5}, Lic/buzzebeeslib/util/PointsUtil;->setNumImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 26
    move-object/from16 v0, p7

    invoke-static {v0, v6}, Lic/buzzebeeslib/util/PointsUtil;->setNumImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 27
    move-object/from16 v0, p8

    invoke-static {v0, v7}, Lic/buzzebeeslib/util/PointsUtil;->setNumImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 28
    move-object/from16 v0, p9

    invoke-static {v0, v8}, Lic/buzzebeeslib/util/PointsUtil;->setNumImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 29
    move-object/from16 v0, p10

    invoke-static {v0, v9}, Lic/buzzebeeslib/util/PointsUtil;->setNumImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 31
    invoke-static/range {p0 .. p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_ce

    .line 32
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    const/16 v11, 0x8

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    const/16 v11, 0x8

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    const/16 v11, 0x8

    move-object/from16 v0, p11

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    const/16 v11, 0x8

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    const/16 v11, 0x8

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    const/16 v11, 0x8

    move-object/from16 v0, p7

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    const/16 v11, 0x8

    move-object/from16 v0, p12

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    const/16 v11, 0x8

    move-object/from16 v0, p8

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    const/16 v11, 0x8

    move-object/from16 v0, p9

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    const/16 v11, 0x8

    move-object/from16 v0, p10

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    :cond_cd
    :goto_cd
    return-void

    .line 43
    :cond_ce
    invoke-static/range {p0 .. p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_125

    .line 44
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    const/16 v11, 0x8

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    const/16 v11, 0x8

    move-object/from16 v0, p11

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    const/16 v11, 0x8

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    const/16 v11, 0x8

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    const/16 v11, 0x8

    move-object/from16 v0, p7

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    const/16 v11, 0x8

    move-object/from16 v0, p12

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    const/16 v11, 0x8

    move-object/from16 v0, p8

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    const/16 v11, 0x8

    move-object/from16 v0, p9

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    const/16 v11, 0x8

    move-object/from16 v0, p10

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_cd

    .line 55
    :cond_125
    invoke-static/range {p0 .. p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_17c

    .line 56
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    const/16 v11, 0x8

    move-object/from16 v0, p11

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    const/16 v11, 0x8

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    const/16 v11, 0x8

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    const/16 v11, 0x8

    move-object/from16 v0, p7

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    const/16 v11, 0x8

    move-object/from16 v0, p12

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    const/16 v11, 0x8

    move-object/from16 v0, p8

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    const/16 v11, 0x8

    move-object/from16 v0, p9

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    const/16 v11, 0x8

    move-object/from16 v0, p10

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_cd

    .line 67
    :cond_17c
    invoke-static/range {p0 .. p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_1d1

    .line 68
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    const/4 v11, 0x0

    move-object/from16 v0, p11

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    const/4 v11, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    const/16 v11, 0x8

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    const/16 v11, 0x8

    move-object/from16 v0, p7

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    const/16 v11, 0x8

    move-object/from16 v0, p12

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    const/16 v11, 0x8

    move-object/from16 v0, p8

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    const/16 v11, 0x8

    move-object/from16 v0, p9

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    const/16 v11, 0x8

    move-object/from16 v0, p10

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_cd

    .line 79
    :cond_1d1
    invoke-static/range {p0 .. p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x5

    if-ne v11, v12, :cond_225

    .line 80
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    const/4 v11, 0x0

    move-object/from16 v0, p11

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    const/4 v11, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    const/4 v11, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    const/16 v11, 0x8

    move-object/from16 v0, p7

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    const/16 v11, 0x8

    move-object/from16 v0, p12

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    const/16 v11, 0x8

    move-object/from16 v0, p8

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    const/16 v11, 0x8

    move-object/from16 v0, p9

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    const/16 v11, 0x8

    move-object/from16 v0, p10

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_cd

    .line 91
    :cond_225
    invoke-static/range {p0 .. p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x6

    if-ne v11, v12, :cond_278

    .line 92
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    const/4 v11, 0x0

    move-object/from16 v0, p11

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    const/4 v11, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    const/4 v11, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    const/4 v11, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    const/16 v11, 0x8

    move-object/from16 v0, p12

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    const/16 v11, 0x8

    move-object/from16 v0, p8

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    const/16 v11, 0x8

    move-object/from16 v0, p9

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    const/16 v11, 0x8

    move-object/from16 v0, p10

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_cd

    .line 103
    :cond_278
    invoke-static/range {p0 .. p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x7

    if-ne v11, v12, :cond_2c9

    .line 104
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    const/4 v11, 0x0

    move-object/from16 v0, p11

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    const/4 v11, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    const/4 v11, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    const/4 v11, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    const/4 v11, 0x0

    move-object/from16 v0, p12

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    const/4 v11, 0x0

    move-object/from16 v0, p8

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    const/16 v11, 0x8

    move-object/from16 v0, p9

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    const/16 v11, 0x8

    move-object/from16 v0, p10

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_cd

    .line 115
    :cond_2c9
    invoke-static/range {p0 .. p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_31a

    .line 116
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    const/4 v11, 0x0

    move-object/from16 v0, p11

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    const/4 v11, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    const/4 v11, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    const/4 v11, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    const/4 v11, 0x0

    move-object/from16 v0, p12

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    const/4 v11, 0x0

    move-object/from16 v0, p8

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    const/4 v11, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    const/16 v11, 0x8

    move-object/from16 v0, p10

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_cd

    .line 127
    :cond_31a
    invoke-static/range {p0 .. p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x9

    if-ne v11, v12, :cond_cd

    .line 128
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    const/4 v11, 0x0

    move-object/from16 v0, p11

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    const/4 v11, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    const/4 v11, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    const/4 v11, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    const/4 v11, 0x0

    move-object/from16 v0, p12

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    const/4 v11, 0x0

    move-object/from16 v0, p8

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    const/4 v11, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    const/4 v11, 0x0

    move-object/from16 v0, p10

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_cd
.end method

.method private static setNumImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 3
    .param p0, "imgCash"    # Landroid/widget/ImageView;
    .param p1, "num"    # Ljava/lang/String;

    .prologue
    .line 144
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 145
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_digit_1:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    :goto_d
    return-void

    .line 146
    :cond_e
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 147
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_digit_2:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d

    .line 148
    :cond_1c
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 149
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_digit_3:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d

    .line 150
    :cond_2a
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 151
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_digit_4:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d

    .line 152
    :cond_38
    const-string v0, "5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 153
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_digit_5:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d

    .line 154
    :cond_46
    const-string v0, "6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 155
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_digit_6:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d

    .line 156
    :cond_54
    const-string v0, "7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 157
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_digit_7:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d

    .line 158
    :cond_62
    const-string v0, "8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 159
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_digit_8:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d

    .line 160
    :cond_70
    const-string v0, "9"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 161
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_digit_9:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d

    .line 163
    :cond_7e
    sget v0, Lic/buzzebeeslib/R$drawable;->bz_digit_0:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d
.end method
