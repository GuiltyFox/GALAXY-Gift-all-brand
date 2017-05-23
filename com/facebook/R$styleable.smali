.class public final Lcom/facebook/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# static fields
.field public static final com_facebook_like_view:[I

.field public static final com_facebook_like_view_com_facebook_auxiliary_view_position:I = 0x4

.field public static final com_facebook_like_view_com_facebook_foreground_color:I = 0x0

.field public static final com_facebook_like_view_com_facebook_horizontal_alignment:I = 0x5

.field public static final com_facebook_like_view_com_facebook_object_id:I = 0x1

.field public static final com_facebook_like_view_com_facebook_object_type:I = 0x2

.field public static final com_facebook_like_view_com_facebook_style:I = 0x3

.field public static final com_facebook_login_view:[I

.field public static final com_facebook_login_view_com_facebook_confirm_logout:I = 0x0

.field public static final com_facebook_login_view_com_facebook_login_text:I = 0x1

.field public static final com_facebook_login_view_com_facebook_logout_text:I = 0x2

.field public static final com_facebook_login_view_com_facebook_tooltip_mode:I = 0x3

.field public static final com_facebook_profile_picture_view:[I

.field public static final com_facebook_profile_picture_view_com_facebook_is_cropped:I = 0x1

.field public static final com_facebook_profile_picture_view_com_facebook_preset_size:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 171
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/facebook/R$styleable;->com_facebook_like_view:[I

    .line 178
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2a

    sput-object v0, Lcom/facebook/R$styleable;->com_facebook_login_view:[I

    .line 183
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_36

    sput-object v0, Lcom/facebook/R$styleable;->com_facebook_profile_picture_view:[I

    return-void

    .line 171
    nop

    :array_1a
    .array-data 4
        0x7f010346
        0x7f010347
        0x7f010348
        0x7f010349
        0x7f01034a
        0x7f01034b
    .end array-data

    .line 178
    :array_2a
    .array-data 4
        0x7f01034c
        0x7f01034d
        0x7f01034e
        0x7f01034f
    .end array-data

    .line 183
    :array_36
    .array-data 4
        0x7f010350
        0x7f010351
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
