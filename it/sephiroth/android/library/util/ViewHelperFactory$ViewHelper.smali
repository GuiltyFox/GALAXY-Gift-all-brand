.class public abstract Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;
.super Ljava/lang/Object;
.source "ViewHelperFactory.java"


# instance fields
.field protected a:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;->a:Landroid/view/View;

    .line 20
    return-void
.end method


# virtual methods
.method public abstract a(I)V
.end method

.method public abstract a(Ljava/lang/Runnable;)V
.end method

.method public abstract a()Z
.end method
