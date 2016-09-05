.class Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;
.super Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;
.source "ActivityCompat.java"


# instance fields
.field private a:Landroid/support/v4/app/SharedElementCallback;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/SharedElementCallback;)V
    .registers 2

    .prologue
    .line 382
    invoke-direct {p0}, Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;-><init>()V

    .line 383
    iput-object p1, p0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;->a:Landroid/support/v4/app/SharedElementCallback;

    .line 384
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .registers 5

    .prologue
    .line 413
    iget-object v0, p0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;->a:Landroid/support/v4/app/SharedElementCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/SharedElementCallback;->a(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .registers 4

    .prologue
    .line 419
    iget-object v0, p0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;->a:Landroid/support/v4/app/SharedElementCallback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/SharedElementCallback;->a(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;->a:Landroid/support/v4/app/SharedElementCallback;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/SharedElementCallback;->a(Ljava/util/List;)V

    .line 403
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;->a:Landroid/support/v4/app/SharedElementCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/SharedElementCallback;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 391
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;->a:Landroid/support/v4/app/SharedElementCallback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/SharedElementCallback;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 408
    return-void
.end method

.method public b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 396
    iget-object v0, p0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;->a:Landroid/support/v4/app/SharedElementCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/SharedElementCallback;->b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 398
    return-void
.end method
