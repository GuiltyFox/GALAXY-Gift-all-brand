.class public Landroid/support/v4/view/NestedScrollingParentHelper;
.super Ljava/lang/Object;
.source "NestedScrollingParentHelper.java"


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/support/v4/view/NestedScrollingParentHelper;->a:Landroid/view/ViewGroup;

    .line 47
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Landroid/support/v4/view/NestedScrollingParentHelper;->b:I

    return v0
.end method

.method public a(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 82
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/view/NestedScrollingParentHelper;->b:I

    .line 83
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 58
    iput p3, p0, Landroid/support/v4/view/NestedScrollingParentHelper;->b:I

    .line 59
    return-void
.end method
