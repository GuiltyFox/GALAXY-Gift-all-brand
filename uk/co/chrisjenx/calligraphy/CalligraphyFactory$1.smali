.class Luk/co/chrisjenx/calligraphy/CalligraphyFactory$1;
.super Ljava/lang/Object;
.source "CalligraphyFactory.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->b(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Luk/co/chrisjenx/calligraphy/CalligraphyFactory;


# direct methods
.method constructor <init>(Luk/co/chrisjenx/calligraphy/CalligraphyFactory;Landroid/view/ViewGroup;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 159
    iput-object p1, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory$1;->c:Luk/co/chrisjenx/calligraphy/CalligraphyFactory;

    iput-object p2, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory$1;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory$1;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 164
    if-eqz v1, :cond_1c

    .line 166
    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_1c

    .line 167
    iget-object v2, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory$1;->c:Luk/co/chrisjenx/calligraphy/CalligraphyFactory;

    iget-object v3, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory$1;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory$1;->b:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Luk/co/chrisjenx/calligraphy/CalligraphyFactory;->a(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 172
    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_2c

    .line 174
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory$1;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 178
    :goto_2b
    return-void

    .line 176
    :cond_2c
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/CalligraphyFactory$1;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_2b
.end method
