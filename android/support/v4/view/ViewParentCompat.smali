.class public final Landroid/support/v4/view/ViewParentCompat;
.super Ljava/lang/Object;
.source "ViewParentCompat.java"


# static fields
.field static final a:Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 204
    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    .line 205
    new-instance v0, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatLollipopImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatLollipopImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewParentCompat;->a:Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    .line 213
    :goto_d
    return-void

    .line 206
    :cond_e
    const/16 v1, 0x13

    if-lt v0, v1, :cond_1a

    .line 207
    new-instance v0, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatKitKatImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatKitKatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewParentCompat;->a:Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    goto :goto_d

    .line 208
    :cond_1a
    const/16 v1, 0xe

    if-lt v0, v1, :cond_26

    .line 209
    new-instance v0, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatICSImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatICSImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewParentCompat;->a:Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    goto :goto_d

    .line 211
    :cond_26
    new-instance v0, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatStubImpl;

    invoke-direct {v0}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatStubImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewParentCompat;->a:Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    goto :goto_d
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 302
    sget-object v0, Landroid/support/v4/view/ViewParentCompat;->a:Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;->a(Landroid/view/ViewParent;Landroid/view/View;)V

    .line 303
    return-void
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    .registers 13

    .prologue
    .line 328
    sget-object v0, Landroid/support/v4/view/ViewParentCompat;->a:Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;->a(Landroid/view/ViewParent;Landroid/view/View;IIII)V

    .line 329
    return-void
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;II[I)V
    .registers 11

    .prologue
    .line 353
    sget-object v0, Landroid/support/v4/view/ViewParentCompat;->a:Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;->a(Landroid/view/ViewParent;Landroid/view/View;II[I)V

    .line 354
    return-void
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .registers 5

    .prologue
    .line 402
    sget-object v0, Landroid/support/v4/view/ViewParentCompat;->a:Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;->a(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .registers 11

    .prologue
    .line 377
    sget-object v0, Landroid/support/v4/view/ViewParentCompat;->a:Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;->a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z
    .registers 5

    .prologue
    .line 266
    sget-object v0, Landroid/support/v4/view/ViewParentCompat;->a:Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    .prologue
    .line 287
    sget-object v0, Landroid/support/v4/view/ViewParentCompat;->a:Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatImpl;->b(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V

    .line 288
    return-void
.end method
