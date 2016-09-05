.class final Lfr/tvbarthel/lib/blurdialogfragment/FastBlurHelper;
.super Ljava/lang/Object;
.source "FastBlurHelper.java"


# direct methods
.method private static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 306
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;IZZLandroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 39
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 50
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ge v0, v2, :cond_7

    .line 51
    const/4 v2, 0x0

    .line 302
    :goto_6
    return-object v2

    .line 55
    :cond_7
    if-nez p2, :cond_13

    if-eqz p3, :cond_54

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_54

    :cond_13
    move-object/from16 v2, p0

    .line 63
    :goto_15
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-le v3, v4, :cond_60

    if-eqz p3, :cond_60

    .line 64
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v3, v4, :cond_29

    .line 68
    invoke-static {v2}, Lfr/tvbarthel/lib/blurdialogfragment/FastBlurHelper;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 71
    :cond_29
    invoke-static/range {p4 .. p4}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v3

    .line 72
    sget-object v4, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v5, 0x1

    invoke-static {v3, v2, v4, v5}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v4

    .line 74
    invoke-virtual {v4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v5

    .line 75
    invoke-static {v3}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v3

    .line 76
    move/from16 v0, p1

    int-to-float v6, v0

    invoke-virtual {v3, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 77
    invoke-virtual {v3, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 78
    invoke-virtual {v3, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 79
    invoke-virtual {v5, v2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    goto :goto_6

    .line 60
    :cond_54
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_15

    .line 111
    :cond_60
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 112
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 114
    mul-int v3, v5, v9

    new-array v3, v3, [I

    .line 115
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 117
    add-int/lit8 v21, v5, -0x1

    .line 118
    add-int/lit8 v22, v9, -0x1

    .line 119
    mul-int v4, v5, v9

    .line 120
    add-int v6, p1, p1

    add-int/lit8 v23, v6, 0x1

    .line 122
    new-array v0, v4, [I

    move-object/from16 v24, v0

    .line 123
    new-array v0, v4, [I

    move-object/from16 v25, v0

    .line 124
    new-array v0, v4, [I

    move-object/from16 v26, v0

    .line 126
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v27, v0

    .line 128
    add-int/lit8 v4, v23, 0x1

    shr-int/lit8 v4, v4, 0x1

    .line 129
    mul-int v6, v4, v4

    .line 130
    mul-int/lit16 v4, v6, 0x100

    new-array v0, v4, [I

    move-object/from16 v28, v0

    .line 131
    const/4 v4, 0x0

    :goto_9e
    mul-int/lit16 v7, v6, 0x100

    if-ge v4, v7, :cond_a9

    .line 132
    div-int v7, v4, v6

    aput v7, v28, v4

    .line 131
    add-int/lit8 v4, v4, 0x1

    goto :goto_9e

    .line 135
    :cond_a9
    const/4 v6, 0x0

    .line 137
    const/4 v4, 0x3

    move/from16 v0, v23

    filled-new-array {v0, v4}, [I

    move-result-object v4

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 142
    add-int/lit8 v29, p1, 0x1

    .line 146
    const/4 v7, 0x0

    move/from16 v19, v6

    move v13, v6

    move/from16 v20, v7

    :goto_c1
    move/from16 v0, v20

    if-ge v0, v9, :cond_21a

    .line 147
    const/4 v6, 0x0

    .line 148
    move/from16 v0, p1

    neg-int v7, v0

    move v8, v6

    move v10, v6

    move v11, v6

    move v12, v6

    move v14, v7

    move v15, v6

    move/from16 v16, v6

    move/from16 v17, v6

    move v7, v6

    :goto_d4
    move/from16 v0, p1

    if-gt v14, v0, :cond_157

    .line 149
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v21

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v18

    add-int v18, v18, v13

    aget v18, v3, v18

    .line 150
    add-int v30, v14, p1

    aget-object v30, v4, v30

    .line 151
    const/16 v31, 0x0

    const/high16 v32, 0xff0000

    and-int v32, v32, v18

    shr-int/lit8 v32, v32, 0x10

    aput v32, v30, v31

    .line 152
    const/16 v31, 0x1

    const v32, 0xff00

    and-int v32, v32, v18

    shr-int/lit8 v32, v32, 0x8

    aput v32, v30, v31

    .line 153
    const/16 v31, 0x2

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aput v18, v30, v31

    .line 154
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v18

    sub-int v18, v29, v18

    .line 155
    const/16 v31, 0x0

    aget v31, v30, v31

    mul-int v31, v31, v18

    add-int v17, v17, v31

    .line 156
    const/16 v31, 0x1

    aget v31, v30, v31

    mul-int v31, v31, v18

    add-int v16, v16, v31

    .line 157
    const/16 v31, 0x2

    aget v31, v30, v31

    mul-int v18, v18, v31

    add-int v15, v15, v18

    .line 158
    if-lez v14, :cond_144

    .line 159
    const/16 v18, 0x0

    aget v18, v30, v18

    add-int v8, v8, v18

    .line 160
    const/16 v18, 0x1

    aget v18, v30, v18

    add-int v7, v7, v18

    .line 161
    const/16 v18, 0x2

    aget v18, v30, v18

    add-int v6, v6, v18

    .line 148
    :goto_141
    add-int/lit8 v14, v14, 0x1

    goto :goto_d4

    .line 163
    :cond_144
    const/16 v18, 0x0

    aget v18, v30, v18

    add-int v12, v12, v18

    .line 164
    const/16 v18, 0x1

    aget v18, v30, v18

    add-int v11, v11, v18

    .line 165
    const/16 v18, 0x2

    aget v18, v30, v18

    add-int v10, v10, v18

    goto :goto_141

    .line 170
    :cond_157
    const/4 v14, 0x0

    move/from16 v18, v17

    move/from16 v17, v16

    move/from16 v16, v15

    move v15, v14

    move v14, v13

    move/from16 v13, p1

    :goto_162
    if-ge v15, v5, :cond_20f

    .line 172
    aget v30, v28, v18

    aput v30, v24, v14

    .line 173
    aget v30, v28, v17

    aput v30, v25, v14

    .line 174
    aget v30, v28, v16

    aput v30, v26, v14

    .line 176
    sub-int v18, v18, v12

    .line 177
    sub-int v17, v17, v11

    .line 178
    sub-int v16, v16, v10

    .line 180
    sub-int v30, v13, p1

    add-int v30, v30, v23

    .line 181
    rem-int v30, v30, v23

    aget-object v30, v4, v30

    .line 183
    const/16 v31, 0x0

    aget v31, v30, v31

    sub-int v12, v12, v31

    .line 184
    const/16 v31, 0x1

    aget v31, v30, v31

    sub-int v11, v11, v31

    .line 185
    const/16 v31, 0x2

    aget v31, v30, v31

    sub-int v10, v10, v31

    .line 187
    if-nez v20, :cond_1a0

    .line 188
    add-int v31, v15, p1

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v31

    aput v31, v27, v15

    .line 190
    :cond_1a0
    aget v31, v27, v15

    add-int v31, v31, v19

    aget v31, v3, v31

    .line 192
    const/16 v32, 0x0

    const/high16 v33, 0xff0000

    and-int v33, v33, v31

    shr-int/lit8 v33, v33, 0x10

    aput v33, v30, v32

    .line 193
    const/16 v32, 0x1

    const v33, 0xff00

    and-int v33, v33, v31

    shr-int/lit8 v33, v33, 0x8

    aput v33, v30, v32

    .line 194
    const/16 v32, 0x2

    move/from16 v0, v31

    and-int/lit16 v0, v0, 0xff

    move/from16 v31, v0

    aput v31, v30, v32

    .line 196
    const/16 v31, 0x0

    aget v31, v30, v31

    add-int v8, v8, v31

    .line 197
    const/16 v31, 0x1

    aget v31, v30, v31

    add-int v7, v7, v31

    .line 198
    const/16 v31, 0x2

    aget v30, v30, v31

    add-int v6, v6, v30

    .line 200
    add-int v18, v18, v8

    .line 201
    add-int v17, v17, v7

    .line 202
    add-int v16, v16, v6

    .line 204
    add-int/lit8 v13, v13, 0x1

    rem-int v13, v13, v23

    .line 205
    rem-int v30, v13, v23

    aget-object v30, v4, v30

    .line 207
    const/16 v31, 0x0

    aget v31, v30, v31

    add-int v12, v12, v31

    .line 208
    const/16 v31, 0x1

    aget v31, v30, v31

    add-int v11, v11, v31

    .line 209
    const/16 v31, 0x2

    aget v31, v30, v31

    add-int v10, v10, v31

    .line 211
    const/16 v31, 0x0

    aget v31, v30, v31

    sub-int v8, v8, v31

    .line 212
    const/16 v31, 0x1

    aget v31, v30, v31

    sub-int v7, v7, v31

    .line 213
    const/16 v31, 0x2

    aget v30, v30, v31

    sub-int v6, v6, v30

    .line 215
    add-int/lit8 v14, v14, 0x1

    .line 170
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_162

    .line 217
    :cond_20f
    add-int v6, v19, v5

    .line 146
    add-int/lit8 v7, v20, 0x1

    move/from16 v19, v6

    move v13, v14

    move/from16 v20, v7

    goto/16 :goto_c1

    .line 219
    :cond_21a
    const/4 v15, 0x0

    :goto_21b
    if-ge v15, v5, :cond_357

    .line 220
    const/4 v7, 0x0

    .line 221
    move/from16 v0, p1

    neg-int v6, v0

    mul-int/2addr v6, v5

    .line 222
    move/from16 v0, p1

    neg-int v8, v0

    move v10, v7

    move v11, v7

    move v12, v7

    move v13, v7

    move/from16 v18, v8

    move v14, v7

    move/from16 v16, v7

    move/from16 v17, v7

    move v8, v7

    :goto_231
    move/from16 v0, v18

    move/from16 v1, p1

    if-gt v0, v1, :cond_29c

    .line 223
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v19

    add-int v20, v19, v15

    .line 225
    add-int v19, v18, p1

    aget-object v21, v4, v19

    .line 227
    const/16 v19, 0x0

    aget v30, v24, v20

    aput v30, v21, v19

    .line 228
    const/16 v19, 0x1

    aget v30, v25, v20

    aput v30, v21, v19

    .line 229
    const/16 v19, 0x2

    aget v30, v26, v20

    aput v30, v21, v19

    .line 231
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v19

    sub-int v30, v29, v19

    .line 233
    aget v19, v24, v20

    mul-int v19, v19, v30

    add-int v19, v19, v17

    .line 234
    aget v17, v25, v20

    mul-int v17, v17, v30

    add-int v17, v17, v16

    .line 235
    aget v16, v26, v20

    mul-int v16, v16, v30

    add-int v16, v16, v14

    .line 237
    if-lez v18, :cond_28f

    .line 238
    const/4 v14, 0x0

    aget v14, v21, v14

    add-int/2addr v10, v14

    .line 239
    const/4 v14, 0x1

    aget v14, v21, v14

    add-int/2addr v8, v14

    .line 240
    const/4 v14, 0x2

    aget v14, v21, v14

    add-int/2addr v7, v14

    .line 247
    :goto_27d
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_284

    .line 248
    add-int/2addr v6, v5

    .line 222
    :cond_284
    add-int/lit8 v14, v18, 0x1

    move/from16 v18, v14

    move/from16 v14, v16

    move/from16 v16, v17

    move/from16 v17, v19

    goto :goto_231

    .line 242
    :cond_28f
    const/4 v14, 0x0

    aget v14, v21, v14

    add-int/2addr v13, v14

    .line 243
    const/4 v14, 0x1

    aget v14, v21, v14

    add-int/2addr v12, v14

    .line 244
    const/4 v14, 0x2

    aget v14, v21, v14

    add-int/2addr v11, v14

    goto :goto_27d

    .line 253
    :cond_29c
    const/4 v6, 0x0

    move/from16 v18, v16

    move/from16 v19, v17

    move/from16 v16, v6

    move/from16 v17, v14

    move v14, v15

    move v6, v7

    move v7, v8

    move v8, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move/from16 v13, p1

    :goto_2ae
    move/from16 v0, v16

    if-ge v0, v9, :cond_353

    .line 255
    const/high16 v20, -0x1000000

    aget v21, v3, v14

    and-int v20, v20, v21

    aget v21, v28, v19

    shl-int/lit8 v21, v21, 0x10

    or-int v20, v20, v21

    aget v21, v28, v18

    shl-int/lit8 v21, v21, 0x8

    or-int v20, v20, v21

    aget v21, v28, v17

    or-int v20, v20, v21

    aput v20, v3, v14

    .line 257
    sub-int v19, v19, v12

    .line 258
    sub-int v18, v18, v11

    .line 259
    sub-int v17, v17, v10

    .line 261
    sub-int v20, v13, p1

    add-int v20, v20, v23

    .line 262
    rem-int v20, v20, v23

    aget-object v20, v4, v20

    .line 264
    const/16 v21, 0x0

    aget v21, v20, v21

    sub-int v12, v12, v21

    .line 265
    const/16 v21, 0x1

    aget v21, v20, v21

    sub-int v11, v11, v21

    .line 266
    const/16 v21, 0x2

    aget v21, v20, v21

    sub-int v10, v10, v21

    .line 268
    if-nez v15, :cond_2f6

    .line 269
    add-int v21, v16, v29

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    mul-int v21, v21, v5

    aput v21, v27, v16

    .line 271
    :cond_2f6
    aget v21, v27, v16

    add-int v21, v21, v15

    .line 273
    const/16 v30, 0x0

    aget v31, v24, v21

    aput v31, v20, v30

    .line 274
    const/16 v30, 0x1

    aget v31, v25, v21

    aput v31, v20, v30

    .line 275
    const/16 v30, 0x2

    aget v21, v26, v21

    aput v21, v20, v30

    .line 277
    const/16 v21, 0x0

    aget v21, v20, v21

    add-int v8, v8, v21

    .line 278
    const/16 v21, 0x1

    aget v21, v20, v21

    add-int v7, v7, v21

    .line 279
    const/16 v21, 0x2

    aget v20, v20, v21

    add-int v6, v6, v20

    .line 281
    add-int v19, v19, v8

    .line 282
    add-int v18, v18, v7

    .line 283
    add-int v17, v17, v6

    .line 285
    add-int/lit8 v13, v13, 0x1

    rem-int v13, v13, v23

    .line 286
    aget-object v20, v4, v13

    .line 288
    const/16 v21, 0x0

    aget v21, v20, v21

    add-int v12, v12, v21

    .line 289
    const/16 v21, 0x1

    aget v21, v20, v21

    add-int v11, v11, v21

    .line 290
    const/16 v21, 0x2

    aget v21, v20, v21

    add-int v10, v10, v21

    .line 292
    const/16 v21, 0x0

    aget v21, v20, v21

    sub-int v8, v8, v21

    .line 293
    const/16 v21, 0x1

    aget v21, v20, v21

    sub-int v7, v7, v21

    .line 294
    const/16 v21, 0x2

    aget v20, v20, v21

    sub-int v6, v6, v20

    .line 296
    add-int/2addr v14, v5

    .line 253
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2ae

    .line 219
    :cond_353
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_21b

    .line 300
    :cond_357
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_6
.end method
