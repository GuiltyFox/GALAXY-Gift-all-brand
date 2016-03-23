.class public Lcom/bzbs/lib/survey/util/AnimationPoint;
.super Ljava/lang/Object;
.source "AnimationPoint.java"


# static fields
.field public static IS_PLAYING:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bzbs/lib/survey/util/AnimationPoint;->IS_PLAYING:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static PlayPointAnimation(ILandroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 16
    .param p0, "pPoints"    # I
    .param p1, "pLayoutRoot"    # Landroid/widget/RelativeLayout;
    .param p2, "pImgCash1"    # Landroid/widget/ImageView;
    .param p3, "pImgCash2"    # Landroid/widget/ImageView;
    .param p4, "pImgCash3"    # Landroid/widget/ImageView;
    .param p5, "pImgCash4"    # Landroid/widget/ImageView;
    .param p6, "pImgComma1"    # Landroid/widget/ImageView;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 34
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 35
    .local v8, "str_points":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_53

    .line 36
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    invoke-virtual {p5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    invoke-virtual {p6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    invoke-static {p2, p0}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigit(Landroid/widget/ImageView;I)V

    .line 42
    invoke-static {p3, v1}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigit(Landroid/widget/ImageView;I)V

    .line 43
    invoke-static {p4, v1}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigit(Landroid/widget/ImageView;I)V

    .line 44
    invoke-static {p5, v1}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigit(Landroid/widget/ImageView;I)V

    .line 77
    :goto_2a
    invoke-static {}, Lcom/bzbs/lib/survey/util/AnimationPoint;->inFromTopAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    .line 78
    .local v7, "animationInFromTop":Landroid/view/animation/Animation;
    invoke-virtual {v7, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 79
    invoke-virtual {v7, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 80
    const-wide/16 v0, 0x1f4

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 81
    const-wide/16 v0, 0x1f4

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 83
    new-instance v0, Lcom/bzbs/lib/survey/util/AnimationPoint$1;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/bzbs/lib/survey/util/AnimationPoint$1;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v7, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 141
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 142
    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 143
    return-void

    .line 45
    .end local v7    # "animationInFromTop":Landroid/view/animation/Animation;
    :cond_53
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_8d

    .line 46
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    invoke-virtual {p5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    invoke-virtual {p6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    invoke-virtual {v8, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p2, v0}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigit(Landroid/widget/ImageView;I)V

    .line 52
    invoke-virtual {v8, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p3, v0}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigit(Landroid/widget/ImageView;I)V

    .line 53
    invoke-static {p4, v1}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigit(Landroid/widget/ImageView;I)V

    .line 54
    invoke-static {p5, v1}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigit(Landroid/widget/ImageView;I)V

    goto :goto_2a

    .line 55
    :cond_8d
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v5, :cond_d4

    .line 56
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    invoke-virtual {p5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    invoke-virtual {p6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    invoke-virtual {v8, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p2, v0}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigit(Landroid/widget/ImageView;I)V

    .line 62
    invoke-virtual {v8, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p3, v0}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigit(Landroid/widget/ImageView;I)V

    .line 63
    invoke-virtual {v8, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p4, v0}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigit(Landroid/widget/ImageView;I)V

    .line 64
    invoke-static {p5, v1}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigit(Landroid/widget/ImageView;I)V

    goto/16 :goto_2a

    .line 66
    :cond_d4
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    invoke-virtual {p5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    invoke-virtual {p6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    invoke-virtual {v8, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p2, v0}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigit(Landroid/widget/ImageView;I)V

    .line 72
    invoke-virtual {v8, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p3, v0}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigit(Landroid/widget/ImageView;I)V

    .line 73
    invoke-virtual {v8, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p4, v0}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigit(Landroid/widget/ImageView;I)V

    .line 74
    invoke-virtual {v8, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p5, v0}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigit(Landroid/widget/ImageView;I)V

    goto/16 :goto_2a
.end method

.method public static PlayPointAnimation2(Landroid/os/Handler;ILandroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 20
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "pPoints"    # I
    .param p2, "pLayoutRoot"    # Landroid/widget/RelativeLayout;
    .param p3, "pImgCash1"    # Landroid/widget/ImageView;
    .param p4, "pImgCash2"    # Landroid/widget/ImageView;
    .param p5, "pImgCash3"    # Landroid/widget/ImageView;
    .param p6, "pImgCash4"    # Landroid/widget/ImageView;
    .param p7, "pImgComma1"    # Landroid/widget/ImageView;

    .prologue
    .line 146
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 147
    .local v11, "str_points":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6c

    .line 148
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    const/4 v2, 0x4

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    const/4 v2, 0x4

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    const/4 v2, 0x4

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    const/4 v2, 0x4

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    invoke-static {p3, p1}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigit(Landroid/widget/ImageView;I)V

    .line 154
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigit(Landroid/widget/ImageView;I)V

    .line 155
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigit(Landroid/widget/ImageView;I)V

    .line 156
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-static {v0, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigit(Landroid/widget/ImageView;I)V

    .line 189
    :goto_3c
    invoke-static {}, Lcom/bzbs/lib/survey/util/AnimationPoint;->inFromTopAnimation()Landroid/view/animation/Animation;

    move-result-object v10

    .line 190
    .local v10, "animationInFromTop":Landroid/view/animation/Animation;
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 191
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 192
    const-wide/16 v2, 0x1f4

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 193
    const-wide/16 v2, 0x1f4

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 195
    new-instance v2, Lcom/bzbs/lib/survey/util/AnimationPoint$2;

    move-object v3, p2

    move-object v4, p0

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/bzbs/lib/survey/util/AnimationPoint$2;-><init>(Landroid/widget/RelativeLayout;Landroid/os/Handler;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v10, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 254
    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 255
    invoke-virtual {p2, v10}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 256
    return-void

    .line 157
    .end local v10    # "animationInFromTop":Landroid/view/animation/Animation;
    :cond_6c
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c1

    .line 158
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    const/4 v2, 0x4

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    const/4 v2, 0x4

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    const/4 v2, 0x4

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v11, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p3, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigit(Landroid/widget/ImageView;I)V

    .line 164
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigit(Landroid/widget/ImageView;I)V

    .line 165
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigit(Landroid/widget/ImageView;I)V

    .line 166
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-static {v0, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigit(Landroid/widget/ImageView;I)V

    goto/16 :goto_3c

    .line 167
    :cond_c1
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_123

    .line 168
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    const/4 v2, 0x4

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    const/4 v2, 0x4

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-virtual {v11, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p3, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigit(Landroid/widget/ImageView;I)V

    .line 174
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v11, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigit(Landroid/widget/ImageView;I)V

    .line 175
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigit(Landroid/widget/ImageView;I)V

    .line 176
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-static {v0, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigit(Landroid/widget/ImageView;I)V

    goto/16 :goto_3c

    .line 178
    :cond_123
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    const/4 v2, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-virtual {v11, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p3, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigit(Landroid/widget/ImageView;I)V

    .line 184
    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-virtual {v11, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigit(Landroid/widget/ImageView;I)V

    .line 185
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v11, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigit(Landroid/widget/ImageView;I)V

    .line 186
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p6

    invoke-static {v0, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigit(Landroid/widget/ImageView;I)V

    goto/16 :goto_3c
.end method

.method public static PlayPointAnimationFade(ILandroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 19
    .param p0, "pPoints"    # I
    .param p1, "pLayoutRoot"    # Landroid/widget/RelativeLayout;
    .param p2, "pImgCash1"    # Landroid/widget/ImageView;
    .param p3, "pImgCash2"    # Landroid/widget/ImageView;
    .param p4, "pImgCash3"    # Landroid/widget/ImageView;
    .param p5, "pImgCash4"    # Landroid/widget/ImageView;
    .param p6, "pImgComma1"    # Landroid/widget/ImageView;

    .prologue
    .line 259
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 260
    .local v11, "str_points":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_83

    .line 261
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    const/16 v2, 0x8

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    const/16 v2, 0x8

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 264
    const/16 v2, 0x8

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    const/16 v2, 0x8

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    invoke-static {p2, p0}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigitGift(Landroid/widget/ImageView;I)V

    .line 267
    const/4 v2, 0x0

    invoke-static {p3, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigitGift(Landroid/widget/ImageView;I)V

    .line 268
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigitGift(Landroid/widget/ImageView;I)V

    .line 269
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigitGift(Landroid/widget/ImageView;I)V

    .line 302
    :goto_3c
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000

    invoke-direct {v10, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 303
    .local v10, "fadeIn":Landroid/view/animation/Animation;
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v10, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 304
    const-wide/16 v4, 0x3e8

    invoke-virtual {v10, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 306
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 307
    .local v3, "fadeOut":Landroid/view/animation/Animation;
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 308
    const-wide/16 v4, 0x9c4

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 309
    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 311
    new-instance v2, Lcom/bzbs/lib/survey/util/AnimationPoint$3;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/bzbs/lib/survey/util/AnimationPoint$3;-><init>(Landroid/view/animation/Animation;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v10, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 366
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 367
    invoke-virtual {p1, v10}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 368
    return-void

    .line 270
    .end local v3    # "fadeOut":Landroid/view/animation/Animation;
    .end local v10    # "fadeIn":Landroid/view/animation/Animation;
    :cond_83
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_d7

    .line 271
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 272
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 273
    const/16 v2, 0x8

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    const/16 v2, 0x8

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    const/16 v2, 0x8

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    const/4 v2, 0x1

    const/4 v4, 0x2

    invoke-virtual {v11, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p2, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigitGift(Landroid/widget/ImageView;I)V

    .line 277
    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {v11, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p3, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigitGift(Landroid/widget/ImageView;I)V

    .line 278
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigitGift(Landroid/widget/ImageView;I)V

    .line 279
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigitGift(Landroid/widget/ImageView;I)V

    goto/16 :goto_3c

    .line 280
    :cond_d7
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_137

    .line 281
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 282
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 283
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 284
    const/16 v2, 0x8

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 285
    const/16 v2, 0x8

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    const/4 v2, 0x2

    const/4 v4, 0x3

    invoke-virtual {v11, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p2, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigitGift(Landroid/widget/ImageView;I)V

    .line 287
    const/4 v2, 0x1

    const/4 v4, 0x2

    invoke-virtual {v11, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p3, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigitGift(Landroid/widget/ImageView;I)V

    .line 288
    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {v11, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigitGift(Landroid/widget/ImageView;I)V

    .line 289
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigitGift(Landroid/widget/ImageView;I)V

    goto/16 :goto_3c

    .line 291
    :cond_137
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 292
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 293
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 294
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    const/4 v2, 0x3

    const/4 v4, 0x4

    invoke-virtual {v11, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p2, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigitGift(Landroid/widget/ImageView;I)V

    .line 297
    const/4 v2, 0x2

    const/4 v4, 0x3

    invoke-virtual {v11, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p3, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigitGift(Landroid/widget/ImageView;I)V

    .line 298
    const/4 v2, 0x1

    const/4 v4, 0x2

    invoke-virtual {v11, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigitGift(Landroid/widget/ImageView;I)V

    .line 299
    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {v11, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->setImageDigitGift(Landroid/widget/ImageView;I)V

    goto/16 :goto_3c
.end method

.method static synthetic access$000()Landroid/view/animation/Animation;
    .registers 1

    .prologue
    .line 29
    invoke-static {}, Lcom/bzbs/lib/survey/util/AnimationPoint;->outToTopAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private static inFromTopAnimation()Landroid/view/animation/Animation;
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 423
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x40800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 424
    .local v0, "inFromTop":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 425
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 426
    return-object v0
.end method

.method private static outFromBottomAnimation()Landroid/view/animation/Animation;
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 444
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, -0x40800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 445
    .local v0, "outFromBottom":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 446
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 447
    return-object v0
.end method

.method private static outToBottomAnimation()Landroid/view/animation/Animation;
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 430
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 431
    .local v0, "outToBottom":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 432
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 433
    return-object v0
.end method

.method private static outToTopAnimation()Landroid/view/animation/Animation;
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 437
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, -0x40800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 438
    .local v0, "outToTop":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 439
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 440
    return-object v0
.end method

.method private static setImageDigit(Landroid/widget/ImageView;I)V
    .registers 3
    .param p0, "pImageDigit"    # Landroid/widget/ImageView;
    .param p1, "pPoints"    # I

    .prologue
    .line 371
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 372
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_0:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 373
    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    .line 374
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_1:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 394
    :goto_11
    return-void

    .line 375
    :cond_12
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1b

    .line 376
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_2:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11

    .line 377
    :cond_1b
    const/4 v0, 0x3

    if-ne p1, v0, :cond_24

    .line 378
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_3:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11

    .line 379
    :cond_24
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2d

    .line 380
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_4:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11

    .line 381
    :cond_2d
    const/4 v0, 0x5

    if-ne p1, v0, :cond_36

    .line 382
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_5:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11

    .line 383
    :cond_36
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3f

    .line 384
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_6:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11

    .line 385
    :cond_3f
    const/4 v0, 0x7

    if-ne p1, v0, :cond_48

    .line 386
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_7:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11

    .line 387
    :cond_48
    const/16 v0, 0x8

    if-ne p1, v0, :cond_52

    .line 388
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_8:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11

    .line 389
    :cond_52
    const/16 v0, 0x9

    if-ne p1, v0, :cond_5c

    .line 390
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_9:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11

    .line 392
    :cond_5c
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_0:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11
.end method

.method private static setImageDigitGift(Landroid/widget/ImageView;I)V
    .registers 3
    .param p0, "pImageDigit"    # Landroid/widget/ImageView;
    .param p1, "pPoints"    # I

    .prologue
    .line 397
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 398
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_0_gift:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 399
    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    .line 400
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_1_gift:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 420
    :goto_11
    return-void

    .line 401
    :cond_12
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1b

    .line 402
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_2_gift:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11

    .line 403
    :cond_1b
    const/4 v0, 0x3

    if-ne p1, v0, :cond_24

    .line 404
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_3_gift:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11

    .line 405
    :cond_24
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2d

    .line 406
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_4_gift:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11

    .line 407
    :cond_2d
    const/4 v0, 0x5

    if-ne p1, v0, :cond_36

    .line 408
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_5_gift:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11

    .line 409
    :cond_36
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3f

    .line 410
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_6_gift:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11

    .line 411
    :cond_3f
    const/4 v0, 0x7

    if-ne p1, v0, :cond_48

    .line 412
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_7_gift:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11

    .line 413
    :cond_48
    const/16 v0, 0x8

    if-ne p1, v0, :cond_52

    .line 414
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_8_gift:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11

    .line 415
    :cond_52
    const/16 v0, 0x9

    if-ne p1, v0, :cond_5c

    .line 416
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_9_gift:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11

    .line 418
    :cond_5c
    sget v0, Lcom/bzbs/lib/survey/R$anim;->point_0_gift:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_11
.end method

.method public static showToastPoints(ILandroid/os/Handler;Landroid/app/Activity;)V
    .registers 4
    .param p0, "points"    # I
    .param p1, "pHandler"    # Landroid/os/Handler;
    .param p2, "pContext"    # Landroid/app/Activity;

    .prologue
    .line 451
    new-instance v0, Lcom/bzbs/lib/survey/util/AnimationPoint$4;

    invoke-direct {v0, p2, p0}, Lcom/bzbs/lib/survey/util/AnimationPoint$4;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 490
    return-void
.end method

.method public static showToastPointsGalaxyAppCenter(ILandroid/os/Handler;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5
    .param p0, "points"    # I
    .param p1, "pHandler"    # Landroid/os/Handler;
    .param p2, "pContext"    # Landroid/app/Activity;
    .param p3, "pointsDesc"    # Ljava/lang/String;

    .prologue
    .line 544
    new-instance v0, Lcom/bzbs/lib/survey/util/AnimationPoint$6;

    invoke-direct {v0, p2, p3, p1, p0}, Lcom/bzbs/lib/survey/util/AnimationPoint$6;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 592
    return-void
.end method

.method public static showToastPointsGalaxyAppCenterUnFullScreen(ILandroid/os/Handler;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5
    .param p0, "points"    # I
    .param p1, "pHandler"    # Landroid/os/Handler;
    .param p2, "pContext"    # Landroid/app/Activity;
    .param p3, "pointsDesc"    # Ljava/lang/String;

    .prologue
    .line 493
    new-instance v0, Lcom/bzbs/lib/survey/util/AnimationPoint$5;

    invoke-direct {v0, p2, p3, p1, p0}, Lcom/bzbs/lib/survey/util/AnimationPoint$5;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 541
    return-void
.end method

.method public static showToastPointsGift(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V
    .registers 5
    .param p0, "points"    # I
    .param p1, "strFrom"    # Ljava/lang/String;
    .param p2, "pHandler"    # Landroid/os/Handler;
    .param p3, "pContext"    # Landroid/app/Activity;

    .prologue
    .line 595
    new-instance v0, Lcom/bzbs/lib/survey/util/AnimationPoint$7;

    invoke-direct {v0, p3, p0, p1}, Lcom/bzbs/lib/survey/util/AnimationPoint$7;-><init>(Landroid/app/Activity;ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 652
    return-void
.end method
