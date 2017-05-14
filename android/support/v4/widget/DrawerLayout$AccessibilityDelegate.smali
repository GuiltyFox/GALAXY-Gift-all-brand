.class Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "DrawerLayout.java"


# instance fields
.field final synthetic a:Landroid/support/v4/widget/DrawerLayout;

.field private final b:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/DrawerLayout;)V
    .registers 3

    .prologue
    .line 2264
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    .line 2265
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;->b:Landroid/graphics/Rect;

    return-void
.end method

.method private a(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 4

    .prologue
    .line 2357
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;->b:Landroid/graphics/Rect;

    .line 2359
    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a(Landroid/graphics/Rect;)V

    .line 2360
    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroid/graphics/Rect;)V

    .line 2362
    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->c(Landroid/graphics/Rect;)V

    .line 2363
    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->d(Landroid/graphics/Rect;)V

    .line 2365
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->g()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->c(Z)V

    .line 2366
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->o()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a(Ljava/lang/CharSequence;)V

    .line 2367
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->p()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b(Ljava/lang/CharSequence;)V

    .line 2368
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->r()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->d(Ljava/lang/CharSequence;)V

    .line 2370
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->l()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->h(Z)V

    .line 2371
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->j()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->f(Z)V

    .line 2372
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->e()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a(Z)V

    .line 2373
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->f()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b(Z)V

    .line 2374
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->h()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->d(Z)V

    .line 2375
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->i()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->e(Z)V

    .line 2376
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->k()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->g(Z)V

    .line 2378
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a(I)V

    .line 2379
    return-void
.end method

.method private a(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/ViewGroup;)V
    .registers 7

    .prologue
    .line 2341
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 2342
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_17

    .line 2343
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2344
    invoke-static {v2}, Landroid/support/v4/widget/DrawerLayout;->l(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2345
    invoke-virtual {p1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b(Landroid/view/View;)V

    .line 2342
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2348
    :cond_17
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6

    .prologue
    .line 2314
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    .line 2315
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 2316
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-static {v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/support/v4/widget/DrawerLayout;)Landroid/view/View;

    move-result-object v1

    .line 2317
    if-eqz v1, :cond_25

    .line 2318
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/DrawerLayout;->e(Landroid/view/View;)I

    move-result v1

    .line 2319
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/DrawerLayout;->b(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2320
    if-eqz v1, :cond_25

    .line 2321
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2325
    :cond_25
    const/4 v0, 0x1

    .line 2328
    :goto_26
    return v0

    :cond_27
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_26
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .prologue
    .line 2302
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2304
    const-class v0, Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2305
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 2269
    invoke-static {}, Landroid/support/v4/widget/DrawerLayout;->e()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2270
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2289
    :goto_a
    const-class v0, Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b(Ljava/lang/CharSequence;)V

    .line 2294
    invoke-virtual {p2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a(Z)V

    .line 2295
    invoke-virtual {p2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->b(Z)V

    .line 2296
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->a:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z

    .line 2297
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->b:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z

    .line 2298
    return-void

    .line 2275
    :cond_24
    invoke-static {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    .line 2276
    invoke-super {p0, p1, v1}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2278
    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->a(Landroid/view/View;)V

    .line 2279
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->i(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    .line 2280
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_3b

    .line 2281
    check-cast v0, Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->c(Landroid/view/View;)V

    .line 2283
    :cond_3b
    invoke-direct {p0, p2, v1}, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;->a(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2284
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->s()V

    .line 2286
    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p2, p1}, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;->a(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/ViewGroup;)V

    goto :goto_a
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    .prologue
    .line 2334
    invoke-static {}, Landroid/support/v4/widget/DrawerLayout;->e()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p2}, Landroid/support/v4/widget/DrawerLayout;->l(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2335
    :cond_c
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 2337
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
