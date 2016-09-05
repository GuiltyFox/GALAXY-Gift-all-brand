.class public Lcom/bzbs/event/RecyclerItemClickListener;
.super Ljava/lang/Object;
.source "RecyclerItemClickListener.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# instance fields
.field a:Landroid/view/GestureDetector;

.field private b:Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;)V
    .registers 5

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/bzbs/event/RecyclerItemClickListener;->b:Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;

    .line 20
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/bzbs/event/RecyclerItemClickListener$1;

    invoke-direct {v1, p0}, Lcom/bzbs/event/RecyclerItemClickListener$1;-><init>(Lcom/bzbs/event/RecyclerItemClickListener;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/bzbs/event/RecyclerItemClickListener;->a:Landroid/view/GestureDetector;

    .line 25
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    .line 28
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_25

    iget-object v1, p0, Lcom/bzbs/event/RecyclerItemClickListener;->b:Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/bzbs/event/RecyclerItemClickListener;->a:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 30
    iget-object v1, p0, Lcom/bzbs/event/RecyclerItemClickListener;->b:Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;->a(Landroid/view/View;I)V

    .line 31
    const/4 v0, 0x1

    .line 33
    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .registers 2

    .prologue
    .line 41
    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 3

    .prologue
    .line 36
    return-void
.end method
