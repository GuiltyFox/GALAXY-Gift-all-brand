.class Lcom/bzbs/event/RecyclerItemClickListener$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "RecyclerItemClickListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/event/RecyclerItemClickListener;-><init>(Landroid/content/Context;Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/event/RecyclerItemClickListener;


# direct methods
.method constructor <init>(Lcom/bzbs/event/RecyclerItemClickListener;)V
    .registers 2

    .prologue
    .line 20
    iput-object p1, p0, Lcom/bzbs/event/RecyclerItemClickListener$1;->a:Lcom/bzbs/event/RecyclerItemClickListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method
