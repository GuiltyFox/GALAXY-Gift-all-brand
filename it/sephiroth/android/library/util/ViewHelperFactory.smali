.class public Lit/sephiroth/android/library/util/ViewHelperFactory;
.super Ljava/lang/Object;
.source "ViewHelperFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelperDefault;,
        Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ViewHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static final create(Landroid/view/View;)Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelper;
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 53
    .local v0, "version":I
    const/16 v1, 0x10

    if-lt v0, v1, :cond_c

    .line 55
    new-instance v1, Lit/sephiroth/android/library/util/v16/ViewHelper16;

    invoke-direct {v1, p0}, Lit/sephiroth/android/library/util/v16/ViewHelper16;-><init>(Landroid/view/View;)V

    .line 61
    :goto_b
    return-object v1

    .line 56
    :cond_c
    const/16 v1, 0xe

    if-lt v0, v1, :cond_16

    .line 58
    new-instance v1, Lit/sephiroth/android/library/util/v14/ViewHelper14;

    invoke-direct {v1, p0}, Lit/sephiroth/android/library/util/v14/ViewHelper14;-><init>(Landroid/view/View;)V

    goto :goto_b

    .line 61
    :cond_16
    new-instance v1, Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelperDefault;

    invoke-direct {v1, p0}, Lit/sephiroth/android/library/util/ViewHelperFactory$ViewHelperDefault;-><init>(Landroid/view/View;)V

    goto :goto_b
.end method
