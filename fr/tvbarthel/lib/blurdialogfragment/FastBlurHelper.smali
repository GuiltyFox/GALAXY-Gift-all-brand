.class final Lfr/tvbarthel/lib/blurdialogfragment/FastBlurHelper;
.super Ljava/lang/Object;
.source "FastBlurHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method private static convertRGB565toARGB888(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 306
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static doBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "sentBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # I
    .param p2, "canReuseInBitmap"    # Z

    .prologue
    .line 33
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lfr/tvbarthel/lib/blurdialogfragment/FastBlurHelper;->doBlur(Landroid/graphics/Bitmap;IZZLandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static doBlur(Landroid/graphics/Bitmap;IZZLandroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 51
    .param p0, "sentBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # I
    .param p2, "canReuseInBitmap"    # Z
    .param p3, "useRenderScript"    # Z
    .param p4, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 50
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ge v0, v4, :cond_7

    .line 51
    const/4 v2, 0x0

    .line 302
    :goto_6
    return-object v2

    .line 55
    :cond_7
    if-nez p2, :cond_13

    if-eqz p3, :cond_66

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v4, v6, :cond_66

    .line 58
    :cond_13
    move-object/from16 v2, p0

    .line 63
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :goto_15
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-le v4, v6, :cond_72

    if-eqz p3, :cond_72

    .line 64
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v4, v6, :cond_29

    .line 68
    invoke-static {v2}, Lfr/tvbarthel/lib/blurdialogfragment/FastBlurHelper;->convertRGB565toARGB888(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 71
    :cond_29
    invoke-static/range {p4 .. p4}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v31

    .line 72
    .local v31, "rs":Landroid/renderscript/RenderScript;
    sget-object v4, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v6, 0x1

    move-object/from16 v0, v31

    invoke-static {v0, v2, v4, v6}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v23

    .line 74
    .local v23, "input":Landroid/renderscript/Allocation;
    invoke-virtual/range {v23 .. v23}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-static {v0, v4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v24

    .line 75
    .local v24, "output":Landroid/renderscript/Allocation;
    invoke-static/range {v31 .. v31}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-static {v0, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v33

    .line 76
    .local v33, "script":Landroid/renderscript/ScriptIntrinsicBlur;
    move/from16 v0, p1

    int-to-float v4, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 77
    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 78
    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 79
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    goto :goto_6

    .line 60
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v23    # "input":Landroid/renderscript/Allocation;
    .end local v24    # "output":Landroid/renderscript/Allocation;
    .end local v31    # "rs":Landroid/renderscript/RenderScript;
    .end local v33    # "script":Landroid/renderscript/ScriptIntrinsicBlur;
    :cond_66
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_15

    .line 111
    :cond_72
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 112
    .local v5, "w":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 114
    .local v9, "h":I
    mul-int v4, v5, v9

    new-array v3, v4, [I

    .line 115
    .local v3, "pix":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 117
    add-int/lit8 v40, v5, -0x1

    .line 118
    .local v40, "wm":I
    add-int/lit8 v21, v9, -0x1

    .line 119
    .local v21, "hm":I
    mul-int v39, v5, v9

    .line 120
    .local v39, "wh":I
    add-int v4, p1, p1

    add-int/lit8 v14, v4, 0x1

    .line 122
    .local v14, "div":I
    move/from16 v0, v39

    new-array v0, v0, [I

    move-object/from16 v26, v0

    .line 123
    .local v26, "r":[I
    move/from16 v0, v39

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 124
    .local v17, "g":[I
    move/from16 v0, v39

    new-array v10, v0, [I

    .line 126
    .local v10, "b":[I
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v38, v0

    .line 128
    .local v38, "vmin":[I
    add-int/lit8 v4, v14, 0x1

    shr-int/lit8 v15, v4, 0x1

    .line 129
    .local v15, "divsum":I
    mul-int/2addr v15, v15

    .line 130
    mul-int/lit16 v4, v15, 0x100

    new-array v0, v4, [I

    move-object/from16 v16, v0

    .line 131
    .local v16, "dv":[I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_b4
    mul-int/lit16 v4, v15, 0x100

    move/from16 v0, v22

    if-ge v0, v4, :cond_c1

    .line 132
    div-int v4, v22, v15

    aput v4, v16, v22

    .line 131
    add-int/lit8 v22, v22, 0x1

    goto :goto_b4

    .line 135
    :cond_c1
    const/16 v43, 0x0

    .local v43, "yi":I
    move/from16 v45, v43

    .line 137
    .local v45, "yw":I
    const/4 v4, 0x3

    filled-new-array {v14, v4}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, [[I

    .line 142
    .local v35, "stack":[[I
    add-int/lit8 v27, p1, 0x1

    .line 146
    .local v27, "r1":I
    const/16 v42, 0x0

    .local v42, "y":I
    :goto_d6
    move/from16 v0, v42

    if-ge v0, v9, :cond_1ff

    .line 147
    const/4 v13, 0x0

    .local v13, "bsum":I
    move/from16 v20, v13

    .local v20, "gsum":I
    move/from16 v32, v13

    .local v32, "rsum":I
    move v12, v13

    .local v12, "boutsum":I
    move/from16 v19, v13

    .local v19, "goutsum":I
    move/from16 v30, v13

    .local v30, "routsum":I
    move v11, v13

    .local v11, "binsum":I
    move/from16 v18, v13

    .local v18, "ginsum":I
    move/from16 v29, v13

    .line 148
    .local v29, "rinsum":I
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v22, v0

    :goto_ee
    move/from16 v0, v22

    move/from16 v1, p1

    if-gt v0, v1, :cond_15f

    .line 149
    const/4 v4, 0x0

    move/from16 v0, v22

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v0, v40

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v43

    aget v25, v3, v4

    .line 150
    .local v25, "p":I
    add-int v4, v22, p1

    aget-object v34, v35, v4

    .line 151
    .local v34, "sir":[I
    const/4 v4, 0x0

    const/high16 v6, 0xff0000

    and-int v6, v6, v25

    shr-int/lit8 v6, v6, 0x10

    aput v6, v34, v4

    .line 152
    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v25

    shr-int/lit8 v6, v6, 0x8

    aput v6, v34, v4

    .line 153
    const/4 v4, 0x2

    move/from16 v0, v25

    and-int/lit16 v6, v0, 0xff

    aput v6, v34, v4

    .line 154
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v28, v27, v4

    .line 155
    .local v28, "rbs":I
    const/4 v4, 0x0

    aget v4, v34, v4

    mul-int v4, v4, v28

    add-int v32, v32, v4

    .line 156
    const/4 v4, 0x1

    aget v4, v34, v4

    mul-int v4, v4, v28

    add-int v20, v20, v4

    .line 157
    const/4 v4, 0x2

    aget v4, v34, v4

    mul-int v4, v4, v28

    add-int/2addr v13, v4

    .line 158
    if-lez v22, :cond_150

    .line 159
    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v29, v29, v4

    .line 160
    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v18, v18, v4

    .line 161
    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v11, v4

    .line 148
    :goto_14d
    add-int/lit8 v22, v22, 0x1

    goto :goto_ee

    .line 163
    :cond_150
    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v30, v30, v4

    .line 164
    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v19, v19, v4

    .line 165
    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v12, v4

    goto :goto_14d

    .line 168
    .end local v25    # "p":I
    .end local v28    # "rbs":I
    .end local v34    # "sir":[I
    :cond_15f
    move/from16 v36, p1

    .line 170
    .local v36, "stackpointer":I
    const/16 v41, 0x0

    .local v41, "x":I
    :goto_163
    move/from16 v0, v41

    if-ge v0, v5, :cond_1f9

    .line 172
    aget v4, v16, v32

    aput v4, v26, v43

    .line 173
    aget v4, v16, v20

    aput v4, v17, v43

    .line 174
    aget v4, v16, v13

    aput v4, v10, v43

    .line 176
    sub-int v32, v32, v30

    .line 177
    sub-int v20, v20, v19

    .line 178
    sub-int/2addr v13, v12

    .line 180
    sub-int v4, v36, p1

    add-int v37, v4, v14

    .line 181
    .local v37, "stackstart":I
    rem-int v4, v37, v14

    aget-object v34, v35, v4

    .line 183
    .restart local v34    # "sir":[I
    const/4 v4, 0x0

    aget v4, v34, v4

    sub-int v30, v30, v4

    .line 184
    const/4 v4, 0x1

    aget v4, v34, v4

    sub-int v19, v19, v4

    .line 185
    const/4 v4, 0x2

    aget v4, v34, v4

    sub-int/2addr v12, v4

    .line 187
    if-nez v42, :cond_19c

    .line 188
    add-int v4, v41, p1

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v40

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v38, v41

    .line 190
    :cond_19c
    aget v4, v38, v41

    add-int v4, v4, v45

    aget v25, v3, v4

    .line 192
    .restart local v25    # "p":I
    const/4 v4, 0x0

    const/high16 v6, 0xff0000

    and-int v6, v6, v25

    shr-int/lit8 v6, v6, 0x10

    aput v6, v34, v4

    .line 193
    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v25

    shr-int/lit8 v6, v6, 0x8

    aput v6, v34, v4

    .line 194
    const/4 v4, 0x2

    move/from16 v0, v25

    and-int/lit16 v6, v0, 0xff

    aput v6, v34, v4

    .line 196
    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v29, v29, v4

    .line 197
    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v18, v18, v4

    .line 198
    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v11, v4

    .line 200
    add-int v32, v32, v29

    .line 201
    add-int v20, v20, v18

    .line 202
    add-int/2addr v13, v11

    .line 204
    add-int/lit8 v4, v36, 0x1

    rem-int v36, v4, v14

    .line 205
    rem-int v4, v36, v14

    aget-object v34, v35, v4

    .line 207
    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v30, v30, v4

    .line 208
    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v19, v19, v4

    .line 209
    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v12, v4

    .line 211
    const/4 v4, 0x0

    aget v4, v34, v4

    sub-int v29, v29, v4

    .line 212
    const/4 v4, 0x1

    aget v4, v34, v4

    sub-int v18, v18, v4

    .line 213
    const/4 v4, 0x2

    aget v4, v34, v4

    sub-int/2addr v11, v4

    .line 215
    add-int/lit8 v43, v43, 0x1

    .line 170
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_163

    .line 217
    .end local v25    # "p":I
    .end local v34    # "sir":[I
    .end local v37    # "stackstart":I
    :cond_1f9
    add-int v45, v45, v5

    .line 146
    add-int/lit8 v42, v42, 0x1

    goto/16 :goto_d6

    .line 219
    .end local v11    # "binsum":I
    .end local v12    # "boutsum":I
    .end local v13    # "bsum":I
    .end local v18    # "ginsum":I
    .end local v19    # "goutsum":I
    .end local v20    # "gsum":I
    .end local v29    # "rinsum":I
    .end local v30    # "routsum":I
    .end local v32    # "rsum":I
    .end local v36    # "stackpointer":I
    .end local v41    # "x":I
    :cond_1ff
    const/16 v41, 0x0

    .restart local v41    # "x":I
    :goto_201
    move/from16 v0, v41

    if-ge v0, v5, :cond_319

    .line 220
    const/4 v13, 0x0

    .restart local v13    # "bsum":I
    move/from16 v20, v13

    .restart local v20    # "gsum":I
    move/from16 v32, v13

    .restart local v32    # "rsum":I
    move v12, v13

    .restart local v12    # "boutsum":I
    move/from16 v19, v13

    .restart local v19    # "goutsum":I
    move/from16 v30, v13

    .restart local v30    # "routsum":I
    move v11, v13

    .restart local v11    # "binsum":I
    move/from16 v18, v13

    .restart local v18    # "ginsum":I
    move/from16 v29, v13

    .line 221
    .restart local v29    # "rinsum":I
    move/from16 v0, p1

    neg-int v4, v0

    mul-int v44, v4, v5

    .line 222
    .local v44, "yp":I
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v22, v0

    :goto_21e
    move/from16 v0, v22

    move/from16 v1, p1

    if-gt v0, v1, :cond_281

    .line 223
    const/4 v4, 0x0

    move/from16 v0, v44

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v43, v4, v41

    .line 225
    add-int v4, v22, p1

    aget-object v34, v35, v4

    .line 227
    .restart local v34    # "sir":[I
    const/4 v4, 0x0

    aget v6, v26, v43

    aput v6, v34, v4

    .line 228
    const/4 v4, 0x1

    aget v6, v17, v43

    aput v6, v34, v4

    .line 229
    const/4 v4, 0x2

    aget v6, v10, v43

    aput v6, v34, v4

    .line 231
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v28, v27, v4

    .line 233
    .restart local v28    # "rbs":I
    aget v4, v26, v43

    mul-int v4, v4, v28

    add-int v32, v32, v4

    .line 234
    aget v4, v17, v43

    mul-int v4, v4, v28

    add-int v20, v20, v4

    .line 235
    aget v4, v10, v43

    mul-int v4, v4, v28

    add-int/2addr v13, v4

    .line 237
    if-lez v22, :cond_272

    .line 238
    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v29, v29, v4

    .line 239
    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v18, v18, v4

    .line 240
    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v11, v4

    .line 247
    :goto_267
    move/from16 v0, v22

    move/from16 v1, v21

    if-ge v0, v1, :cond_26f

    .line 248
    add-int v44, v44, v5

    .line 222
    :cond_26f
    add-int/lit8 v22, v22, 0x1

    goto :goto_21e

    .line 242
    :cond_272
    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v30, v30, v4

    .line 243
    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v19, v19, v4

    .line 244
    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v12, v4

    goto :goto_267

    .line 251
    .end local v28    # "rbs":I
    .end local v34    # "sir":[I
    :cond_281
    move/from16 v43, v41

    .line 252
    move/from16 v36, p1

    .line 253
    .restart local v36    # "stackpointer":I
    const/16 v42, 0x0

    :goto_287
    move/from16 v0, v42

    if-ge v0, v9, :cond_315

    .line 255
    const/high16 v4, -0x1000000

    aget v6, v3, v43

    and-int/2addr v4, v6

    aget v6, v16, v32

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    aget v6, v16, v20

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    aget v6, v16, v13

    or-int/2addr v4, v6

    aput v4, v3, v43

    .line 257
    sub-int v32, v32, v30

    .line 258
    sub-int v20, v20, v19

    .line 259
    sub-int/2addr v13, v12

    .line 261
    sub-int v4, v36, p1

    add-int v37, v4, v14

    .line 262
    .restart local v37    # "stackstart":I
    rem-int v4, v37, v14

    aget-object v34, v35, v4

    .line 264
    .restart local v34    # "sir":[I
    const/4 v4, 0x0

    aget v4, v34, v4

    sub-int v30, v30, v4

    .line 265
    const/4 v4, 0x1

    aget v4, v34, v4

    sub-int v19, v19, v4

    .line 266
    const/4 v4, 0x2

    aget v4, v34, v4

    sub-int/2addr v12, v4

    .line 268
    if-nez v41, :cond_2c7

    .line 269
    add-int v4, v42, v27

    move/from16 v0, v21

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/2addr v4, v5

    aput v4, v38, v42

    .line 271
    :cond_2c7
    aget v4, v38, v42

    add-int v25, v41, v4

    .line 273
    .restart local v25    # "p":I
    const/4 v4, 0x0

    aget v6, v26, v25

    aput v6, v34, v4

    .line 274
    const/4 v4, 0x1

    aget v6, v17, v25

    aput v6, v34, v4

    .line 275
    const/4 v4, 0x2

    aget v6, v10, v25

    aput v6, v34, v4

    .line 277
    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v29, v29, v4

    .line 278
    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v18, v18, v4

    .line 279
    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v11, v4

    .line 281
    add-int v32, v32, v29

    .line 282
    add-int v20, v20, v18

    .line 283
    add-int/2addr v13, v11

    .line 285
    add-int/lit8 v4, v36, 0x1

    rem-int v36, v4, v14

    .line 286
    aget-object v34, v35, v36

    .line 288
    const/4 v4, 0x0

    aget v4, v34, v4

    add-int v30, v30, v4

    .line 289
    const/4 v4, 0x1

    aget v4, v34, v4

    add-int v19, v19, v4

    .line 290
    const/4 v4, 0x2

    aget v4, v34, v4

    add-int/2addr v12, v4

    .line 292
    const/4 v4, 0x0

    aget v4, v34, v4

    sub-int v29, v29, v4

    .line 293
    const/4 v4, 0x1

    aget v4, v34, v4

    sub-int v18, v18, v4

    .line 294
    const/4 v4, 0x2

    aget v4, v34, v4

    sub-int/2addr v11, v4

    .line 296
    add-int v43, v43, v5

    .line 253
    add-int/lit8 v42, v42, 0x1

    goto/16 :goto_287

    .line 219
    .end local v25    # "p":I
    .end local v34    # "sir":[I
    .end local v37    # "stackstart":I
    :cond_315
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_201

    .line 300
    .end local v11    # "binsum":I
    .end local v12    # "boutsum":I
    .end local v13    # "bsum":I
    .end local v18    # "ginsum":I
    .end local v19    # "goutsum":I
    .end local v20    # "gsum":I
    .end local v29    # "rinsum":I
    .end local v30    # "routsum":I
    .end local v32    # "rsum":I
    .end local v36    # "stackpointer":I
    .end local v44    # "yp":I
    :cond_319
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_6
.end method
