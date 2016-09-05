.class final Landroid/support/v4/app/FragmentTransitionCompat21$1;
.super Landroid/transition/Transition$EpicenterCallback;
.source "FragmentTransitionCompat21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/FragmentTransitionCompat21;->a(Ljava/lang/Object;Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/graphics/Rect;)V
    .registers 2

    .prologue
    .line 74
    iput-object p1, p0, Landroid/support/v4/app/FragmentTransitionCompat21$1;->a:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Landroid/support/v4/app/FragmentTransitionCompat21$1;->a:Landroid/graphics/Rect;

    return-object v0
.end method
