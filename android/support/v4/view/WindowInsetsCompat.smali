.class public Landroid/support/v4/view/WindowInsetsCompat;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# static fields
.field private static final a:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 245
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 246
    const/16 v1, 0x15

    if-lt v0, v1, :cond_f

    .line 247
    new-instance v0, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi21Impl;

    invoke-direct {v0, v2}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi21Impl;-><init>(Landroid/support/v4/view/WindowInsetsCompat$1;)V

    sput-object v0, Landroid/support/v4/view/WindowInsetsCompat;->a:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    .line 253
    :goto_e
    return-void

    .line 248
    :cond_f
    const/16 v1, 0x14

    if-lt v0, v1, :cond_1b

    .line 249
    new-instance v0, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi20Impl;

    invoke-direct {v0, v2}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi20Impl;-><init>(Landroid/support/v4/view/WindowInsetsCompat$1;)V

    sput-object v0, Landroid/support/v4/view/WindowInsetsCompat;->a:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    goto :goto_e

    .line 251
    :cond_1b
    new-instance v0, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatBaseImpl;

    invoke-direct {v0, v2}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatBaseImpl;-><init>(Landroid/support/v4/view/WindowInsetsCompat$1;)V

    sput-object v0, Landroid/support/v4/view/WindowInsetsCompat;->a:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    goto :goto_e
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object p1, p0, Landroid/support/v4/view/WindowInsetsCompat;->b:Ljava/lang/Object;

    .line 259
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Landroid/support/v4/view/WindowInsetsCompat$1;)V
    .registers 3

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/support/v4/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method static a(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 2

    .prologue
    .line 514
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Landroid/support/v4/view/WindowInsetsCompat;

    invoke-direct {v0, p0}, Landroid/support/v4/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;)V

    goto :goto_3
.end method

.method static a(Landroid/support/v4/view/WindowInsetsCompat;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 518
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Landroid/support/v4/view/WindowInsetsCompat;->b:Ljava/lang/Object;

    goto :goto_3
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 280
    sget-object v0, Landroid/support/v4/view/WindowInsetsCompat;->a:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroid/support/v4/view/WindowInsetsCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->c(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public a(IIII)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 11

    .prologue
    .line 395
    sget-object v0, Landroid/support/v4/view/WindowInsetsCompat;->a:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroid/support/v4/view/WindowInsetsCompat;->b:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->a(Ljava/lang/Object;IIII)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .registers 3

    .prologue
    .line 293
    sget-object v0, Landroid/support/v4/view/WindowInsetsCompat;->a:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroid/support/v4/view/WindowInsetsCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->e(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public c()I
    .registers 3

    .prologue
    .line 306
    sget-object v0, Landroid/support/v4/view/WindowInsetsCompat;->a:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroid/support/v4/view/WindowInsetsCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->d(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public d()I
    .registers 3

    .prologue
    .line 319
    sget-object v0, Landroid/support/v4/view/WindowInsetsCompat;->a:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroid/support/v4/view/WindowInsetsCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public e()Z
    .registers 3

    .prologue
    .line 358
    sget-object v0, Landroid/support/v4/view/WindowInsetsCompat;->a:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroid/support/v4/view/WindowInsetsCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->f(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 498
    if-ne p0, p1, :cond_5

    .line 505
    :cond_4
    :goto_4
    return v0

    .line 501
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    .line 502
    goto :goto_4

    .line 504
    :cond_13
    check-cast p1, Landroid/support/v4/view/WindowInsetsCompat;

    .line 505
    iget-object v2, p0, Landroid/support/v4/view/WindowInsetsCompat;->b:Ljava/lang/Object;

    if-nez v2, :cond_1f

    iget-object v2, p1, Landroid/support/v4/view/WindowInsetsCompat;->b:Ljava/lang/Object;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_1f
    iget-object v0, p0, Landroid/support/v4/view/WindowInsetsCompat;->b:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v4/view/WindowInsetsCompat;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public f()Landroid/support/v4/view/WindowInsetsCompat;
    .registers 3

    .prologue
    .line 381
    sget-object v0, Landroid/support/v4/view/WindowInsetsCompat;->a:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroid/support/v4/view/WindowInsetsCompat;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->a(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 510
    iget-object v0, p0, Landroid/support/v4/view/WindowInsetsCompat;->b:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/WindowInsetsCompat;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5
.end method
