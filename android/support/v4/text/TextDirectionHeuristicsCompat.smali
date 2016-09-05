.class public final Landroid/support/v4/text/TextDirectionHeuristicsCompat;
.super Ljava/lang/Object;
.source "TextDirectionHeuristicsCompat.java"


# static fields
.field public static final a:Landroid/support/v4/text/TextDirectionHeuristicCompat;

.field public static final b:Landroid/support/v4/text/TextDirectionHeuristicCompat;

.field public static final c:Landroid/support/v4/text/TextDirectionHeuristicCompat;

.field public static final d:Landroid/support/v4/text/TextDirectionHeuristicCompat;

.field public static final e:Landroid/support/v4/text/TextDirectionHeuristicCompat;

.field public static final f:Landroid/support/v4/text/TextDirectionHeuristicCompat;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 33
    new-instance v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    invoke-direct {v0, v2, v3, v2}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;ZLandroid/support/v4/text/TextDirectionHeuristicsCompat$1;)V

    sput-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->a:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 39
    new-instance v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    invoke-direct {v0, v2, v4, v2}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;ZLandroid/support/v4/text/TextDirectionHeuristicsCompat$1;)V

    sput-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->b:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 47
    new-instance v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    sget-object v1, Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;->a:Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;ZLandroid/support/v4/text/TextDirectionHeuristicsCompat$1;)V

    sput-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->c:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 55
    new-instance v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    sget-object v1, Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;->a:Landroid/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong;

    invoke-direct {v0, v1, v4, v2}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;ZLandroid/support/v4/text/TextDirectionHeuristicsCompat$1;)V

    sput-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->d:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 62
    new-instance v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    sget-object v1, Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;->a:Landroid/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong;

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;-><init>(Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;ZLandroid/support/v4/text/TextDirectionHeuristicsCompat$1;)V

    sput-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->e:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 68
    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;->a:Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;

    sput-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->f:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    return-void
.end method

.method static synthetic a(I)I
    .registers 2

    .prologue
    .line 28
    invoke-static {p0}, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->d(I)I

    move-result v0

    return v0
.end method

.method static synthetic b(I)I
    .registers 2

    .prologue
    .line 28
    invoke-static {p0}, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->c(I)I

    move-result v0

    return v0
.end method

.method private static c(I)I
    .registers 2

    .prologue
    .line 79
    packed-switch p0, :pswitch_data_a

    .line 86
    const/4 v0, 0x2

    :goto_4
    return v0

    .line 81
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 84
    :pswitch_7
    const/4 v0, 0x0

    goto :goto_4

    .line 79
    nop

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private static d(I)I
    .registers 2

    .prologue
    .line 91
    sparse-switch p0, :sswitch_data_a

    .line 102
    const/4 v0, 0x2

    :goto_4
    return v0

    .line 95
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 100
    :sswitch_7
    const/4 v0, 0x0

    goto :goto_4

    .line 91
    nop

    :sswitch_data_a
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_7
        0x2 -> :sswitch_7
        0xe -> :sswitch_5
        0xf -> :sswitch_5
        0x10 -> :sswitch_7
        0x11 -> :sswitch_7
    .end sparse-switch
.end method
