.class Lcom/rey/material/widget/Spinner$DropdownPopup;
.super Lcom/rey/material/widget/ListPopupWindow;
.source "Spinner.java"


# instance fields
.field final synthetic b:Lcom/rey/material/widget/Spinner;

.field private c:Ljava/lang/CharSequence;

.field private d:Lcom/rey/material/widget/Spinner$DropDownAdapter;

.field private e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>(Lcom/rey/material/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    .prologue
    .line 1210
    iput-object p1, p0, Lcom/rey/material/widget/Spinner$DropdownPopup;->b:Lcom/rey/material/widget/Spinner;

    .line 1211
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/rey/material/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1199
    new-instance v0, Lcom/rey/material/widget/Spinner$DropdownPopup$1;

    invoke-direct {v0, p0}, Lcom/rey/material/widget/Spinner$DropdownPopup$1;-><init>(Lcom/rey/material/widget/Spinner$DropdownPopup;)V

    iput-object v0, p0, Lcom/rey/material/widget/Spinner$DropdownPopup;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 1213
    invoke-virtual {p0, p1}, Lcom/rey/material/widget/Spinner$DropdownPopup;->a(Landroid/view/View;)V

    .line 1214
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/rey/material/widget/Spinner$DropdownPopup;->a(Z)V

    .line 1215
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/rey/material/widget/Spinner$DropdownPopup;->c(I)V

    .line 1217
    new-instance v0, Lcom/rey/material/widget/Spinner$DropdownPopup$2;

    invoke-direct {v0, p0, p1}, Lcom/rey/material/widget/Spinner$DropdownPopup$2;-><init>(Lcom/rey/material/widget/Spinner$DropdownPopup;Lcom/rey/material/widget/Spinner;)V

    invoke-virtual {p0, v0}, Lcom/rey/material/widget/Spinner$DropdownPopup;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1234
    return-void
.end method

.method static synthetic a(Lcom/rey/material/widget/Spinner$DropdownPopup;)V
    .registers 1

    .prologue
    .line 1193
    invoke-super {p0}, Lcom/rey/material/widget/ListPopupWindow;->f()V

    return-void
.end method

.method static synthetic b(Lcom/rey/material/widget/Spinner$DropdownPopup;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .registers 2

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$DropdownPopup;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic c(Lcom/rey/material/widget/Spinner$DropdownPopup;)Lcom/rey/material/widget/Spinner$DropDownAdapter;
    .registers 2

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$DropdownPopup;->d:Lcom/rey/material/widget/Spinner$DropDownAdapter;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/widget/ListAdapter;)V
    .registers 4

    .prologue
    .line 1238
    invoke-super {p0, p1}, Lcom/rey/material/widget/ListPopupWindow;->a(Landroid/widget/ListAdapter;)V

    .line 1239
    check-cast p1, Lcom/rey/material/widget/Spinner$DropDownAdapter;

    iput-object p1, p0, Lcom/rey/material/widget/Spinner$DropdownPopup;->d:Lcom/rey/material/widget/Spinner$DropDownAdapter;

    .line 1240
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$DropdownPopup;->d:Lcom/rey/material/widget/Spinner$DropDownAdapter;

    new-instance v1, Lcom/rey/material/widget/Spinner$DropdownPopup$3;

    invoke-direct {v1, p0}, Lcom/rey/material/widget/Spinner$DropdownPopup$3;-><init>(Lcom/rey/material/widget/Spinner$DropdownPopup;)V

    invoke-virtual {v0, v1}, Lcom/rey/material/widget/Spinner$DropDownAdapter;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1247
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 2

    .prologue
    .line 1254
    iput-object p1, p0, Lcom/rey/material/widget/Spinner$DropdownPopup;->c:Ljava/lang/CharSequence;

    .line 1255
    return-void
.end method

.method public f()V
    .registers 3

    .prologue
    .line 1291
    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner$DropdownPopup;->i()Z

    move-result v0

    .line 1293
    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner$DropdownPopup;->l()V

    .line 1294
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/rey/material/widget/Spinner$DropdownPopup;->h(I)V

    .line 1295
    invoke-super {p0}, Lcom/rey/material/widget/ListPopupWindow;->f()V

    .line 1297
    if-eqz v0, :cond_11

    .line 1309
    :cond_10
    :goto_10
    return-void

    .line 1306
    :cond_11
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$DropdownPopup;->b:Lcom/rey/material/widget/Spinner;

    invoke-virtual {v0}, Lcom/rey/material/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1307
    if-eqz v0, :cond_10

    .line 1308
    iget-object v1, p0, Lcom/rey/material/widget/Spinner$DropdownPopup;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_10
.end method

.method l()V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 1258
    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner$DropdownPopup;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1260
    if-eqz v1, :cond_93

    .line 1261
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$DropdownPopup;->b:Lcom/rey/material/widget/Spinner;

    invoke-static {v0}, Lcom/rey/material/widget/Spinner;->f(Lcom/rey/material/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1262
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$DropdownPopup;->b:Lcom/rey/material/widget/Spinner;

    invoke-static {v0}, Lcom/rey/material/widget/Spinner;->g(Lcom/rey/material/widget/Spinner;)Z

    move-result v0

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/rey/material/widget/Spinner$DropdownPopup;->b:Lcom/rey/material/widget/Spinner;

    invoke-static {v0}, Lcom/rey/material/widget/Spinner;->f(Lcom/rey/material/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 1266
    :goto_20
    iget-object v1, p0, Lcom/rey/material/widget/Spinner$DropdownPopup;->b:Lcom/rey/material/widget/Spinner;

    invoke-virtual {v1}, Lcom/rey/material/widget/Spinner;->getPaddingLeft()I

    move-result v3

    .line 1267
    iget-object v1, p0, Lcom/rey/material/widget/Spinner$DropdownPopup;->b:Lcom/rey/material/widget/Spinner;

    invoke-virtual {v1}, Lcom/rey/material/widget/Spinner;->getPaddingRight()I

    move-result v4

    .line 1268
    iget-object v1, p0, Lcom/rey/material/widget/Spinner$DropdownPopup;->b:Lcom/rey/material/widget/Spinner;

    invoke-virtual {v1}, Lcom/rey/material/widget/Spinner;->getWidth()I

    move-result v5

    .line 1270
    iget-object v1, p0, Lcom/rey/material/widget/Spinner$DropdownPopup;->b:Lcom/rey/material/widget/Spinner;

    invoke-static {v1}, Lcom/rey/material/widget/Spinner;->h(Lcom/rey/material/widget/Spinner;)I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_a5

    .line 1271
    iget-object v1, p0, Lcom/rey/material/widget/Spinner$DropdownPopup;->b:Lcom/rey/material/widget/Spinner;

    iget-object v2, p0, Lcom/rey/material/widget/Spinner$DropdownPopup;->d:Lcom/rey/material/widget/Spinner$DropDownAdapter;

    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner$DropdownPopup;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v1, v2, v6}, Lcom/rey/material/widget/Spinner;->a(Lcom/rey/material/widget/Spinner;Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v2

    .line 1272
    iget-object v1, p0, Lcom/rey/material/widget/Spinner$DropdownPopup;->b:Lcom/rey/material/widget/Spinner;

    invoke-virtual {v1}, Lcom/rey/material/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Lcom/rey/material/widget/Spinner$DropdownPopup;->b:Lcom/rey/material/widget/Spinner;

    invoke-static {v6}, Lcom/rey/material/widget/Spinner;->f(Lcom/rey/material/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v6

    iget-object v6, p0, Lcom/rey/material/widget/Spinner$DropdownPopup;->b:Lcom/rey/material/widget/Spinner;

    invoke-static {v6}, Lcom/rey/material/widget/Spinner;->f(Lcom/rey/material/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v6

    .line 1273
    if-le v2, v1, :cond_c1

    .line 1276
    :goto_6b
    sub-int v2, v5, v3

    sub-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/rey/material/widget/Spinner$DropdownPopup;->g(I)V

    .line 1282
    :goto_75
    iget-object v1, p0, Lcom/rey/material/widget/Spinner$DropdownPopup;->b:Lcom/rey/material/widget/Spinner;

    invoke-static {v1}, Lcom/rey/material/widget/Spinner;->g(Lcom/rey/material/widget/Spinner;)Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 1283
    sub-int v1, v5, v4

    invoke-virtual {p0}, Lcom/rey/material/widget/Spinner$DropdownPopup;->e()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1287
    :goto_85
    invoke-virtual {p0, v0}, Lcom/rey/material/widget/Spinner$DropdownPopup;->d(I)V

    .line 1288
    return-void

    .line 1262
    :cond_89
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$DropdownPopup;->b:Lcom/rey/material/widget/Spinner;

    invoke-static {v0}, Lcom/rey/material/widget/Spinner;->f(Lcom/rey/material/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    goto :goto_20

    .line 1264
    :cond_93
    iget-object v1, p0, Lcom/rey/material/widget/Spinner$DropdownPopup;->b:Lcom/rey/material/widget/Spinner;

    invoke-static {v1}, Lcom/rey/material/widget/Spinner;->f(Lcom/rey/material/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/rey/material/widget/Spinner$DropdownPopup;->b:Lcom/rey/material/widget/Spinner;

    invoke-static {v2}, Lcom/rey/material/widget/Spinner;->f(Lcom/rey/material/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v2

    iput v0, v2, Landroid/graphics/Rect;->right:I

    iput v0, v1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_20

    .line 1277
    :cond_a5
    iget-object v1, p0, Lcom/rey/material/widget/Spinner$DropdownPopup;->b:Lcom/rey/material/widget/Spinner;

    invoke-static {v1}, Lcom/rey/material/widget/Spinner;->h(Lcom/rey/material/widget/Spinner;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b5

    .line 1278
    sub-int v1, v5, v3

    sub-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/rey/material/widget/Spinner$DropdownPopup;->g(I)V

    goto :goto_75

    .line 1280
    :cond_b5
    iget-object v1, p0, Lcom/rey/material/widget/Spinner$DropdownPopup;->b:Lcom/rey/material/widget/Spinner;

    invoke-static {v1}, Lcom/rey/material/widget/Spinner;->h(Lcom/rey/material/widget/Spinner;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/rey/material/widget/Spinner$DropdownPopup;->g(I)V

    goto :goto_75

    .line 1285
    :cond_bf
    add-int/2addr v0, v3

    goto :goto_85

    :cond_c1
    move v1, v2

    goto :goto_6b
.end method
