.class Landroid/support/transition/ViewOverlay$OverlayViewGroup;
.super Landroid/view/ViewGroup;
.source "ViewOverlay.java"


# static fields
.field static a:Ljava/lang/reflect/Method;


# instance fields
.field b:Landroid/view/ViewGroup;

.field c:Landroid/view/View;

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field e:Landroid/support/transition/ViewOverlay;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 147
    :try_start_0
    const-class v0, Landroid/view/ViewGroup;

    const-string/jumbo v1, "invalidateChildInParentFast"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/graphics/Rect;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->a:Ljava/lang/reflect/Method;
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 152
    :goto_1d
    return-void

    .line 149
    :catch_1e
    move-exception v0

    goto :goto_1d
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/ViewOverlay;)V
    .registers 6

    .prologue
    .line 171
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->d:Ljava/util/ArrayList;

    .line 172
    iput-object p2, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->b:Landroid/view/ViewGroup;

    .line 173
    iput-object p3, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->c:Landroid/view/View;

    .line 174
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->setRight(I)V

    .line 175
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->setBottom(I)V

    .line 176
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 177
    iput-object p4, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->e:Landroid/support/transition/ViewOverlay;

    .line 178
    return-void
.end method

.method private a([I)V
    .registers 8

    .prologue
    const/4 v0, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 299
    new-array v1, v0, [I

    .line 300
    new-array v2, v0, [I

    .line 301
    invoke-virtual {p0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 302
    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 303
    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 304
    aget v0, v2, v4

    aget v3, v1, v4

    sub-int/2addr v0, v3

    aput v0, p1, v4

    .line 305
    aget v0, v2, v5

    aget v1, v1, v5

    sub-int/2addr v0, v1

    aput v0, p1, v5

    .line 306
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .prologue
    .line 187
    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->d:Ljava/util/ArrayList;

    .line 191
    :cond_b
    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 193
    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 195
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 197
    :cond_22
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 8

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_43

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 215
    iget-object v1, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->b:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_37

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 219
    new-array v1, v2, [I

    .line 220
    new-array v2, v2, [I

    .line 221
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 222
    iget-object v3, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->b:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 223
    aget v3, v1, v4

    aget v4, v2, v4

    sub-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/support/v4/view/ViewCompat;->f(Landroid/view/View;I)V

    .line 224
    aget v1, v1, v5

    aget v2, v2, v5

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;I)V

    .line 226
    :cond_37
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 232
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 233
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 236
    :cond_43
    invoke-virtual {p0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-super {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 237
    return-void
.end method

.method a()Z
    .registers 2

    .prologue
    .line 254
    invoke-virtual {p0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->d:Ljava/util/ArrayList;

    .line 255
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_14

    .line 256
    :cond_12
    const/4 v0, 0x1

    .line 258
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .prologue
    .line 200
    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    .line 201
    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 203
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 205
    :cond_14
    return-void
.end method

.method public b(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 240
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 241
    invoke-virtual {p0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 242
    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 244
    :cond_e
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 8

    .prologue
    const/4 v0, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 268
    new-array v1, v0, [I

    .line 269
    new-array v3, v0, [I

    .line 270
    invoke-virtual {p0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 271
    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 272
    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 273
    aget v0, v3, v2

    aget v4, v1, v2

    sub-int/2addr v0, v4

    int-to-float v0, v0

    aget v3, v3, v5

    aget v1, v1, v5

    sub-int v1, v3, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 275
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->c:Landroid/view/View;

    .line 276
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v3, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 275
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 277
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 278
    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_53

    move v1, v2

    .line 279
    :goto_43
    if-ge v2, v1, :cond_5b

    .line 280
    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 279
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 278
    :cond_53
    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v0

    goto :goto_43

    .line 282
    :cond_5b
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 347
    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2c

    .line 348
    aget v0, p1, v2

    aget v1, p1, v3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 349
    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->b:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_29

    .line 350
    aput v2, p1, v2

    .line 351
    aput v2, p1, v3

    .line 352
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 353
    invoke-direct {p0, v0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->a([I)V

    .line 354
    aget v1, v0, v2

    aget v0, v0, v3

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 355
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    .line 361
    :goto_28
    return-object v0

    .line 358
    :cond_29
    invoke-virtual {p0, p2}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 361
    :cond_2c
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .prologue
    .line 263
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    .line 264
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .prologue
    .line 287
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method
