.class public abstract Landroid/support/v7/widget/ForwardingListener;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mActivePointerId:I

.field private mDisallowIntercept:Ljava/lang/Runnable;

.field private mForwarding:Z

.field private final mLongPressTimeout:I

.field private final mScaledTouchSlop:F

.field private final mSrc:Landroid/view/View;

.field private final mTapTimeout:I

.field private final mTmpLocation:[I

.field private mTriggerLongPress:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mTmpLocation:[I

    .line 64
    iput-object p1, p0, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/ForwardingListener;->mScaledTouchSlop:F

    .line 66
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ForwardingListener;->mTapTimeout:I

    .line 68
    iget v0, p0, Landroid/support/v7/widget/ForwardingListener;->mTapTimeout:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/ForwardingListener;->mLongPressTimeout:I

    .line 69
    return-void
.end method

.method static synthetic access$200(Landroid/support/v7/widget/ForwardingListener;)Landroid/view/View;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v7/widget/ForwardingListener;)V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v7/widget/ForwardingListener;->onLongPress()V

    return-void
.end method

.method private clearCallbacks()V
    .registers 3

    .prologue
    .line 193
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    .line 194
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 197
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v0, :cond_16

    .line 198
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 200
    :cond_16
    return-void
.end method

.method private onLongPress()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 203
    invoke-direct {p0}, Landroid/support/v7/widget/ForwardingListener;->clearCallbacks()V

    .line 205
    iget-object v8, p0, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    .line 206
    invoke-virtual {v8}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v8}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 226
    :cond_13
    :goto_13
    return-void

    .line 212
    :cond_14
    invoke-virtual {p0}, Landroid/support/v7/widget/ForwardingListener;->onForwardingStarted()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 217
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 220
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 221
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 222
    invoke-virtual {v8, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 223
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 225
    iput-boolean v9, p0, Landroid/support/v7/widget/ForwardingListener;->mForwarding:Z

    goto :goto_13
.end method

.method private onTouchForwarded(Landroid/view/MotionEvent;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 236
    iget-object v3, p0, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    .line 237
    invoke-virtual {p0}, Landroid/support/v7/widget/ForwardingListener;->getPopup()Landroid/support/v7/view/menu/ShowableListMenu;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_10

    invoke-interface {v0}, Landroid/support/v7/view/menu/ShowableListMenu;->isShowing()Z

    move-result v4

    if-nez v4, :cond_11

    .line 261
    :cond_10
    :goto_10
    return v2

    .line 242
    :cond_11
    invoke-interface {v0}, Landroid/support/v7/view/menu/ShowableListMenu;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/DropDownListView;

    .line 243
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/support/v7/widget/DropDownListView;->isShown()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 248
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 249
    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/ForwardingListener;->toGlobalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 250
    invoke-direct {p0, v0, v4}, Landroid/support/v7/widget/ForwardingListener;->toLocalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 253
    iget v3, p0, Landroid/support/v7/widget/ForwardingListener;->mActivePointerId:I

    invoke-virtual {v0, v4, v3}, Landroid/support/v7/widget/DropDownListView;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    move-result v3

    .line 254
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 257
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 258
    if-eq v0, v1, :cond_43

    const/4 v4, 0x3

    if-eq v0, v4, :cond_43

    move v0, v1

    .line 261
    :goto_3c
    if-eqz v3, :cond_45

    if-eqz v0, :cond_45

    move v0, v1

    :goto_41
    move v2, v0

    goto :goto_10

    :cond_43
    move v0, v2

    .line 258
    goto :goto_3c

    :cond_45
    move v0, v2

    .line 261
    goto :goto_41
.end method

.method private onTouchObserved(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 147
    iget-object v2, p0, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    .line 148
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_c

    .line 189
    :cond_b
    :goto_b
    return v0

    .line 152
    :cond_c
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->a(Landroid/view/MotionEvent;)I

    move-result v3

    .line 153
    packed-switch v3, :pswitch_data_6a

    goto :goto_b

    .line 155
    :pswitch_14
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ForwardingListener;->mActivePointerId:I

    .line 157
    iget-object v1, p0, Landroid/support/v7/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-nez v1, :cond_25

    .line 158
    new-instance v1, Landroid/support/v7/widget/ForwardingListener$DisallowIntercept;

    invoke-direct {v1, p0, v6}, Landroid/support/v7/widget/ForwardingListener$DisallowIntercept;-><init>(Landroid/support/v7/widget/ForwardingListener;Landroid/support/v7/widget/ForwardingListener$1;)V

    iput-object v1, p0, Landroid/support/v7/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    .line 160
    :cond_25
    iget-object v1, p0, Landroid/support/v7/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    iget v3, p0, Landroid/support/v7/widget/ForwardingListener;->mTapTimeout:I

    int-to-long v4, v3

    invoke-virtual {v2, v1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    iget-object v1, p0, Landroid/support/v7/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-nez v1, :cond_38

    .line 163
    new-instance v1, Landroid/support/v7/widget/ForwardingListener$TriggerLongPress;

    invoke-direct {v1, p0, v6}, Landroid/support/v7/widget/ForwardingListener$TriggerLongPress;-><init>(Landroid/support/v7/widget/ForwardingListener;Landroid/support/v7/widget/ForwardingListener$1;)V

    iput-object v1, p0, Landroid/support/v7/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    .line 165
    :cond_38
    iget-object v1, p0, Landroid/support/v7/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    iget v3, p0, Landroid/support/v7/widget/ForwardingListener;->mLongPressTimeout:I

    int-to-long v4, v3

    invoke-virtual {v2, v1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b

    .line 168
    :pswitch_41
    iget v3, p0, Landroid/support/v7/widget/ForwardingListener;->mActivePointerId:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 169
    if-ltz v3, :cond_b

    .line 170
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 171
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 174
    iget v5, p0, Landroid/support/v7/widget/ForwardingListener;->mScaledTouchSlop:F

    invoke-static {v2, v4, v3, v5}, Landroid/support/v7/widget/ForwardingListener;->pointInView(Landroid/view/View;FFF)Z

    move-result v3

    if-nez v3, :cond_b

    .line 175
    invoke-direct {p0}, Landroid/support/v7/widget/ForwardingListener;->clearCallbacks()V

    .line 178
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    move v0, v1

    .line 179
    goto :goto_b

    .line 185
    :pswitch_65
    invoke-direct {p0}, Landroid/support/v7/widget/ForwardingListener;->clearCallbacks()V

    goto :goto_b

    .line 153
    nop

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_14
        :pswitch_65
        :pswitch_41
        :pswitch_65
    .end packed-switch
.end method

.method private static pointInView(Landroid/view/View;FFF)Z
    .registers 6

    .prologue
    .line 265
    neg-float v0, p3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2a

    neg-float v0, p3

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_2a

    .line 266
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2a

    .line 267
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2a

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method private toGlobalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 286
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mTmpLocation:[I

    .line 287
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 288
    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 289
    return v2
.end method

.method private toLocalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 275
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mTmpLocation:[I

    .line 276
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 277
    const/4 v1, 0x0

    aget v1, v0, v1

    neg-int v1, v1

    int-to-float v1, v1

    aget v0, v0, v2

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 278
    return v2
.end method


# virtual methods
.method public abstract getPopup()Landroid/support/v7/view/menu/ShowableListMenu;
.end method

.method protected onForwardingStarted()Z
    .registers 3

    .prologue
    .line 116
    invoke-virtual {p0}, Landroid/support/v7/widget/ForwardingListener;->getPopup()Landroid/support/v7/view/menu/ShowableListMenu;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_f

    invoke-interface {v0}, Landroid/support/v7/view/menu/ShowableListMenu;->isShowing()Z

    move-result v1

    if-nez v1, :cond_f

    .line 118
    invoke-interface {v0}, Landroid/support/v7/view/menu/ShowableListMenu;->show()V

    .line 120
    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method protected onForwardingStopped()Z
    .registers 3

    .prologue
    .line 133
    invoke-virtual {p0}, Landroid/support/v7/widget/ForwardingListener;->getPopup()Landroid/support/v7/view/menu/ShowableListMenu;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_f

    invoke-interface {v0}, Landroid/support/v7/view/menu/ShowableListMenu;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 135
    invoke-interface {v0}, Landroid/support/v7/view/menu/ShowableListMenu;->dismiss()V

    .line 137
    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 14

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 85
    iget-boolean v10, p0, Landroid/support/v7/widget/ForwardingListener;->mForwarding:Z

    .line 87
    if-eqz v10, :cond_1e

    .line 88
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ForwardingListener;->onTouchForwarded(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Landroid/support/v7/widget/ForwardingListener;->onForwardingStopped()Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_13
    move v0, v8

    .line 102
    :goto_14
    iput-boolean v0, p0, Landroid/support/v7/widget/ForwardingListener;->mForwarding:Z

    .line 103
    if-nez v0, :cond_1a

    if-eqz v10, :cond_1b

    :cond_1a
    move v7, v8

    :cond_1b
    return v7

    :cond_1c
    move v0, v7

    .line 88
    goto :goto_14

    .line 90
    :cond_1e
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ForwardingListener;->onTouchObserved(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Landroid/support/v7/widget/ForwardingListener;->onForwardingStarted()Z

    move-result v0

    if-eqz v0, :cond_42

    move v9, v8

    .line 92
    :goto_2b
    if-eqz v9, :cond_40

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 95
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 97
    iget-object v1, p0, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 98
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_40
    move v0, v9

    goto :goto_14

    :cond_42
    move v9, v7

    .line 90
    goto :goto_2b
.end method
