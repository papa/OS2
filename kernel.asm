
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00009117          	auipc	sp,0x9
    80000004:	94013103          	ld	sp,-1728(sp) # 80008940 <_GLOBAL_OFFSET_TABLE_+0x58>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	159050ef          	jal	ra,80005974 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:

    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    csrw sscratch, sp
    80001004:	14011073          	csrw	sscratch,sp
    sd x0, 0(sp)
    80001008:	00013023          	sd	zero,0(sp)
    sd x1, 8(sp)
    8000100c:	00113423          	sd	ra,8(sp)
    sd x2, 16(sp)
    80001010:	00213823          	sd	sp,16(sp)
    sd x3, 24(sp)
    80001014:	00313c23          	sd	gp,24(sp)
    sd x4, 32(sp)
    80001018:	02413023          	sd	tp,32(sp)
    sd x5, 40(sp)
    8000101c:	02513423          	sd	t0,40(sp)
    sd x6, 48(sp)
    80001020:	02613823          	sd	t1,48(sp)
    sd x7, 56(sp)
    80001024:	02713c23          	sd	t2,56(sp)
    sd x8, 64(sp)
    80001028:	04813023          	sd	s0,64(sp)
    sd x9, 72(sp)
    8000102c:	04913423          	sd	s1,72(sp)
    sd x10, 80(sp)
    80001030:	04a13823          	sd	a0,80(sp)
    sd x11, 88(sp)
    80001034:	04b13c23          	sd	a1,88(sp)
    sd x12, 96(sp)
    80001038:	06c13023          	sd	a2,96(sp)
    sd x13, 104(sp)
    8000103c:	06d13423          	sd	a3,104(sp)
    sd x14, 112(sp)
    80001040:	06e13823          	sd	a4,112(sp)
    sd x15, 120(sp)
    80001044:	06f13c23          	sd	a5,120(sp)
    sd x16, 128(sp)
    80001048:	09013023          	sd	a6,128(sp)
    sd x17, 136(sp)
    8000104c:	09113423          	sd	a7,136(sp)
    sd x18, 144(sp)
    80001050:	09213823          	sd	s2,144(sp)
    sd x19, 152(sp)
    80001054:	09313c23          	sd	s3,152(sp)
    sd x20, 160(sp)
    80001058:	0b413023          	sd	s4,160(sp)
    sd x21, 168(sp)
    8000105c:	0b513423          	sd	s5,168(sp)
    sd x22, 176(sp)
    80001060:	0b613823          	sd	s6,176(sp)
    sd x23, 184(sp)
    80001064:	0b713c23          	sd	s7,184(sp)
    sd x24, 192(sp)
    80001068:	0d813023          	sd	s8,192(sp)
    sd x25, 200(sp)
    8000106c:	0d913423          	sd	s9,200(sp)
    sd x26, 208(sp)
    80001070:	0da13823          	sd	s10,208(sp)
    sd x27, 216(sp)
    80001074:	0db13c23          	sd	s11,216(sp)
    sd x28, 224(sp)
    80001078:	0fc13023          	sd	t3,224(sp)
    sd x29, 232(sp)
    8000107c:	0fd13423          	sd	t4,232(sp)
    sd x30, 240(sp)
    80001080:	0fe13823          	sd	t5,240(sp)
    sd x31, 248(sp)
    80001084:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001088:	62c030ef          	jal	ra,800046b4 <_ZN5Riscv20handleSupervisorTrapEv>

    ld x0, 0(sp)
    8000108c:	00013003          	ld	zero,0(sp)
    ld x1, 8(sp)
    80001090:	00813083          	ld	ra,8(sp)
    ld x2, 16(sp)
    80001094:	01013103          	ld	sp,16(sp)
    ld x3, 24(sp)
    80001098:	01813183          	ld	gp,24(sp)
    ld x4, 32(sp)
    8000109c:	02013203          	ld	tp,32(sp)
    ld x5, 40(sp)
    800010a0:	02813283          	ld	t0,40(sp)
    ld x6, 48(sp)
    800010a4:	03013303          	ld	t1,48(sp)
    ld x7, 56(sp)
    800010a8:	03813383          	ld	t2,56(sp)
    ld x8, 64(sp)
    800010ac:	04013403          	ld	s0,64(sp)
    ld x9, 72(sp)
    800010b0:	04813483          	ld	s1,72(sp)
    ld x10, 80(sp)
    800010b4:	05013503          	ld	a0,80(sp)
    ld x11, 88(sp)
    800010b8:	05813583          	ld	a1,88(sp)
    ld x12, 96(sp)
    800010bc:	06013603          	ld	a2,96(sp)
    ld x13, 104(sp)
    800010c0:	06813683          	ld	a3,104(sp)
    ld x14, 112(sp)
    800010c4:	07013703          	ld	a4,112(sp)
    ld x15, 120(sp)
    800010c8:	07813783          	ld	a5,120(sp)
    ld x16, 128(sp)
    800010cc:	08013803          	ld	a6,128(sp)
    ld x17, 136(sp)
    800010d0:	08813883          	ld	a7,136(sp)
    ld x18, 144(sp)
    800010d4:	09013903          	ld	s2,144(sp)
    ld x19, 152(sp)
    800010d8:	09813983          	ld	s3,152(sp)
    ld x20, 160(sp)
    800010dc:	0a013a03          	ld	s4,160(sp)
    ld x21, 168(sp)
    800010e0:	0a813a83          	ld	s5,168(sp)
    ld x22, 176(sp)
    800010e4:	0b013b03          	ld	s6,176(sp)
    ld x23, 184(sp)
    800010e8:	0b813b83          	ld	s7,184(sp)
    ld x24, 192(sp)
    800010ec:	0c013c03          	ld	s8,192(sp)
    ld x25, 200(sp)
    800010f0:	0c813c83          	ld	s9,200(sp)
    ld x26, 208(sp)
    800010f4:	0d013d03          	ld	s10,208(sp)
    ld x27, 216(sp)
    800010f8:	0d813d83          	ld	s11,216(sp)
    ld x28, 224(sp)
    800010fc:	0e013e03          	ld	t3,224(sp)
    ld x29, 232(sp)
    80001100:	0e813e83          	ld	t4,232(sp)
    ld x30, 240(sp)
    80001104:	0f013f03          	ld	t5,240(sp)
    ld x31, 248(sp)
    80001108:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    8000110c:	10010113          	addi	sp,sp,256

    80001110:	10200073          	sret
	...

0000000080001120 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001120:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001124:	00313c23          	sd	gp,24(sp)
    80001128:	02413023          	sd	tp,32(sp)
    8000112c:	02513423          	sd	t0,40(sp)
    80001130:	02613823          	sd	t1,48(sp)
    80001134:	02713c23          	sd	t2,56(sp)
    80001138:	04813023          	sd	s0,64(sp)
    8000113c:	04913423          	sd	s1,72(sp)
    80001140:	04a13823          	sd	a0,80(sp)
    80001144:	04b13c23          	sd	a1,88(sp)
    80001148:	06c13023          	sd	a2,96(sp)
    8000114c:	06d13423          	sd	a3,104(sp)
    80001150:	06e13823          	sd	a4,112(sp)
    80001154:	06f13c23          	sd	a5,120(sp)
    80001158:	09013023          	sd	a6,128(sp)
    8000115c:	09113423          	sd	a7,136(sp)
    80001160:	09213823          	sd	s2,144(sp)
    80001164:	09313c23          	sd	s3,152(sp)
    80001168:	0b413023          	sd	s4,160(sp)
    8000116c:	0b513423          	sd	s5,168(sp)
    80001170:	0b613823          	sd	s6,176(sp)
    80001174:	0b713c23          	sd	s7,184(sp)
    80001178:	0d813023          	sd	s8,192(sp)
    8000117c:	0d913423          	sd	s9,200(sp)
    80001180:	0da13823          	sd	s10,208(sp)
    80001184:	0db13c23          	sd	s11,216(sp)
    80001188:	0fc13023          	sd	t3,224(sp)
    8000118c:	0fd13423          	sd	t4,232(sp)
    80001190:	0fe13823          	sd	t5,240(sp)
    80001194:	0ff13c23          	sd	t6,248(sp)
    ret
    80001198:	00008067          	ret

000000008000119c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000119c:	01813183          	ld	gp,24(sp)
    800011a0:	02013203          	ld	tp,32(sp)
    800011a4:	02813283          	ld	t0,40(sp)
    800011a8:	03013303          	ld	t1,48(sp)
    800011ac:	03813383          	ld	t2,56(sp)
    800011b0:	04013403          	ld	s0,64(sp)
    800011b4:	04813483          	ld	s1,72(sp)
    800011b8:	05013503          	ld	a0,80(sp)
    800011bc:	05813583          	ld	a1,88(sp)
    800011c0:	06013603          	ld	a2,96(sp)
    800011c4:	06813683          	ld	a3,104(sp)
    800011c8:	07013703          	ld	a4,112(sp)
    800011cc:	07813783          	ld	a5,120(sp)
    800011d0:	08013803          	ld	a6,128(sp)
    800011d4:	08813883          	ld	a7,136(sp)
    800011d8:	09013903          	ld	s2,144(sp)
    800011dc:	09813983          	ld	s3,152(sp)
    800011e0:	0a013a03          	ld	s4,160(sp)
    800011e4:	0a813a83          	ld	s5,168(sp)
    800011e8:	0b013b03          	ld	s6,176(sp)
    800011ec:	0b813b83          	ld	s7,184(sp)
    800011f0:	0c013c03          	ld	s8,192(sp)
    800011f4:	0c813c83          	ld	s9,200(sp)
    800011f8:	0d013d03          	ld	s10,208(sp)
    800011fc:	0d813d83          	ld	s11,216(sp)
    80001200:	0e013e03          	ld	t3,224(sp)
    80001204:	0e813e83          	ld	t4,232(sp)
    80001208:	0f013f03          	ld	t5,240(sp)
    8000120c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001210:	10010113          	addi	sp,sp,256
    ret
    80001214:	00008067          	ret

0000000080001218 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:
    #a0 - &old->Context
    #a1 - &running->Context
    sd sp, 0 * 8(a0)
    80001218:	00253023          	sd	sp,0(a0) # 1000 <_entry-0x7ffff000>
    sd ra, 1 * 8(a0)
    8000121c:	00153423          	sd	ra,8(a0)

    ld sp, 0 * 8(a1)
    80001220:	0005b103          	ld	sp,0(a1)
    ld ra, 1 * 8(a1)
    80001224:	0085b083          	ld	ra,8(a1)

    ret
    80001228:	00008067          	ret

000000008000122c <_ZN3PCB20contextSwitchExitingEPNS_7ContextE>:

.global _ZN3PCB20contextSwitchExitingEPNS_7ContextE
.type _ZN3PCB20contextSwitchExitingEPNS_7ContextE, @function
_ZN3PCB20contextSwitchExitingEPNS_7ContextE:
    #a0 - &running->Context
    ld sp, 0 * 8(a0)
    8000122c:	00053103          	ld	sp,0(a0)
    ld ra, 1 * 8(a0)
    80001230:	00853083          	ld	ra,8(a0)

    80001234:	00008067          	ret

0000000080001238 <_Z22thread_dispatch_kernelv>:
//
#include "../../h/syscall_c_kernel.hpp"


void thread_dispatch_kernel()
{
    80001238:	ff010113          	addi	sp,sp,-16
    8000123c:	00813423          	sd	s0,8(sp)
    80001240:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001244:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80001248:	00000073          	ecall
}
    8000124c:	00813403          	ld	s0,8(sp)
    80001250:	01010113          	addi	sp,sp,16
    80001254:	00008067          	ret

0000000080001258 <_Z20sysCallGetCharOutputv>:

char sysCallGetCharOutput()
{
    80001258:	ff010113          	addi	sp,sp,-16
    8000125c:	00813423          	sd	s0,8(sp)
    80001260:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x43");
    80001264:	04300513          	li	a0,67

    __asm__ volatile("ecall");
    80001268:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000126c:	00050513          	mv	a0,a0
    return (char)result;
}
    80001270:	0ff57513          	andi	a0,a0,255
    80001274:	00813403          	ld	s0,8(sp)
    80001278:	01010113          	addi	sp,sp,16
    8000127c:	00008067          	ret

0000000080001280 <_Z18thread_exit_kernelv>:


int thread_exit_kernel()
{
    80001280:	ff010113          	addi	sp,sp,-16
    80001284:	00813423          	sd	s0,8(sp)
    80001288:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    8000128c:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    80001290:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001294:	00050513          	mv	a0,a0
    return result;
    80001298:	0005051b          	sext.w	a0,a0
    8000129c:	00813403          	ld	s0,8(sp)
    800012a0:	01010113          	addi	sp,sp,16
    800012a4:	00008067          	ret

00000000800012a8 <_Z6strcpyPKcPc>:
//singleton slab allocator
static slab_allocator_t* slabAllocator = nullptr;
static kmem_cache_t* cacheOfSlabs = nullptr;
//helping functions
void strcpy(const char* src, char* dst)
{
    800012a8:	ff010113          	addi	sp,sp,-16
    800012ac:	00813423          	sd	s0,8(sp)
    800012b0:	01010413          	addi	s0,sp,16
    while(*src != '\0')
    800012b4:	00054783          	lbu	a5,0(a0)
    800012b8:	00078a63          	beqz	a5,800012cc <_Z6strcpyPKcPc+0x24>
    {
        *dst = *src;
    800012bc:	00f58023          	sb	a5,0(a1)
        src++; dst++;
    800012c0:	00150513          	addi	a0,a0,1
    800012c4:	00158593          	addi	a1,a1,1
    while(*src != '\0')
    800012c8:	fedff06f          	j	800012b4 <_Z6strcpyPKcPc+0xc>
    }
    *dst = *src;
    800012cc:	00f58023          	sb	a5,0(a1)
}
    800012d0:	00813403          	ld	s0,8(sp)
    800012d4:	01010113          	addi	sp,sp,16
    800012d8:	00008067          	ret

00000000800012dc <_Z17destroy_slab_listPP6slab_s>:

int destroy_slab_list(slab_t** slab)
{
    800012dc:	fd010113          	addi	sp,sp,-48
    800012e0:	02113423          	sd	ra,40(sp)
    800012e4:	02813023          	sd	s0,32(sp)
    800012e8:	00913c23          	sd	s1,24(sp)
    800012ec:	01213823          	sd	s2,16(sp)
    800012f0:	01313423          	sd	s3,8(sp)
    800012f4:	01413023          	sd	s4,0(sp)
    800012f8:	03010413          	addi	s0,sp,48
    if(*slab == nullptr) return 0;
    800012fc:	00053783          	ld	a5,0(a0)
    80001300:	02078c63          	beqz	a5,80001338 <_Z17destroy_slab_listPP6slab_s+0x5c>
    80001304:	00050493          	mv	s1,a0
    size_t sz = (*slab)->owner->slab_size;
    80001308:	0107b783          	ld	a5,16(a5)
    8000130c:	0587b983          	ld	s3,88(a5)
    int totalBlocks = 0;
    80001310:	00000913          	li	s2,0
    while(*slab != nullptr)
    80001314:	0004b503          	ld	a0,0(s1)
    80001318:	02050263          	beqz	a0,8000133c <_Z17destroy_slab_listPP6slab_s+0x60>
    {
        slab_t* nextSlab = (*slab)->next;
    8000131c:	00853a03          	ld	s4,8(a0)
        buddy_free(*slab, sz);
    80001320:	00098593          	mv	a1,s3
    80001324:	00002097          	auipc	ra,0x2
    80001328:	f58080e7          	jalr	-168(ra) # 8000327c <_Z10buddy_freePvm>
        *slab = nextSlab;
    8000132c:	0144b023          	sd	s4,0(s1)
        totalBlocks+=sz;
    80001330:	0129893b          	addw	s2,s3,s2
    while(*slab != nullptr)
    80001334:	fe1ff06f          	j	80001314 <_Z17destroy_slab_listPP6slab_s+0x38>
    if(*slab == nullptr) return 0;
    80001338:	00000913          	li	s2,0
    }
    return totalBlocks;
}
    8000133c:	00090513          	mv	a0,s2
    80001340:	02813083          	ld	ra,40(sp)
    80001344:	02013403          	ld	s0,32(sp)
    80001348:	01813483          	ld	s1,24(sp)
    8000134c:	01013903          	ld	s2,16(sp)
    80001350:	00813983          	ld	s3,8(sp)
    80001354:	00013a03          	ld	s4,0(sp)
    80001358:	03010113          	addi	sp,sp,48
    8000135c:	00008067          	ret

0000000080001360 <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>:

void init_cache(kmem_cache_t* cachep, const char* cache_name, size_t slab_size, size_t obj_size, void (*ctor)(void*),void (*dtor)(void*))
{
    80001360:	fc010113          	addi	sp,sp,-64
    80001364:	02113c23          	sd	ra,56(sp)
    80001368:	02813823          	sd	s0,48(sp)
    8000136c:	02913423          	sd	s1,40(sp)
    80001370:	03213023          	sd	s2,32(sp)
    80001374:	01313c23          	sd	s3,24(sp)
    80001378:	01413823          	sd	s4,16(sp)
    8000137c:	01513423          	sd	s5,8(sp)
    80001380:	04010413          	addi	s0,sp,64
    80001384:	00050493          	mv	s1,a0
    80001388:	00058513          	mv	a0,a1
    8000138c:	00060a93          	mv	s5,a2
    80001390:	00068a13          	mv	s4,a3
    80001394:	00070993          	mv	s3,a4
    80001398:	00078913          	mv	s2,a5
    strcpy(cache_name, cachep->cacheName);
    8000139c:	00048593          	mv	a1,s1
    800013a0:	00000097          	auipc	ra,0x0
    800013a4:	f08080e7          	jalr	-248(ra) # 800012a8 <_Z6strcpyPKcPc>
    cachep->slab_size = slab_size;
    800013a8:	0554bc23          	sd	s5,88(s1)
    cachep->obj_size = obj_size;
    800013ac:	0744b023          	sd	s4,96(s1)
    cachep->ctor = ctor;
    800013b0:	0734b423          	sd	s3,104(s1)
    cachep->dtor = dtor;
    800013b4:	0724b823          	sd	s2,112(s1)

    cachep->slabs_empty = cachep->slabs_partial = cachep->slabs_full = nullptr;
    800013b8:	0404b423          	sd	zero,72(s1)
    800013bc:	0404b823          	sd	zero,80(s1)
    800013c0:	0404b023          	sd	zero,64(s1)
    cachep->errors = NO_ERROR;
    800013c4:	0604ac23          	sw	zero,120(s1)
}
    800013c8:	03813083          	ld	ra,56(sp)
    800013cc:	03013403          	ld	s0,48(sp)
    800013d0:	02813483          	ld	s1,40(sp)
    800013d4:	02013903          	ld	s2,32(sp)
    800013d8:	01813983          	ld	s3,24(sp)
    800013dc:	01013a03          	ld	s4,16(sp)
    800013e0:	00813a83          	ld	s5,8(sp)
    800013e4:	04010113          	addi	sp,sp,64
    800013e8:	00008067          	ret

00000000800013ec <_Z19slab_allocator_initP14buddyAllocator>:

slab_allocator_t* slab_allocator_init(buddyAllocator *buddy)
{
    800013ec:	fe010113          	addi	sp,sp,-32
    800013f0:	00113c23          	sd	ra,24(sp)
    800013f4:	00813823          	sd	s0,16(sp)
    800013f8:	00913423          	sd	s1,8(sp)
    800013fc:	02010413          	addi	s0,sp,32
    slab_allocator_t* slabAllocatorLocal = (slab_allocator_t*)(buddy + 1);
    80001400:	12050493          	addi	s1,a0,288

    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    80001404:	00000793          	li	a5,0
    80001408:	0140006f          	j	8000141c <_Z19slab_allocator_initP14buddyAllocator+0x30>
        slabAllocatorLocal->cachesBuffers[i] = nullptr;
    8000140c:	00379713          	slli	a4,a5,0x3
    80001410:	00e50733          	add	a4,a0,a4
    80001414:	12073023          	sd	zero,288(a4)
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    80001418:	00178793          	addi	a5,a5,1
    8000141c:	00c00713          	li	a4,12
    80001420:	fef776e3          	bgeu	a4,a5,8000140c <_Z19slab_allocator_initP14buddyAllocator+0x20>

    init_cache(&slabAllocatorLocal->cacheOfCaches, "Cache of caches", CACHE_OF_CACHES_SLAB_SIZE, sizeof(kmem_cache_t), nullptr,nullptr);
    80001424:	00000793          	li	a5,0
    80001428:	00000713          	li	a4,0
    8000142c:	08000693          	li	a3,128
    80001430:	00200613          	li	a2,2
    80001434:	00007597          	auipc	a1,0x7
    80001438:	bec58593          	addi	a1,a1,-1044 # 80008020 <CONSOLE_STATUS+0x10>
    8000143c:	18850513          	addi	a0,a0,392
    80001440:	00000097          	auipc	ra,0x0
    80001444:	f20080e7          	jalr	-224(ra) # 80001360 <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>

    return slabAllocatorLocal;
}
    80001448:	00048513          	mv	a0,s1
    8000144c:	01813083          	ld	ra,24(sp)
    80001450:	01013403          	ld	s0,16(sp)
    80001454:	00813483          	ld	s1,8(sp)
    80001458:	02010113          	addi	sp,sp,32
    8000145c:	00008067          	ret

0000000080001460 <_Z13checkSetIndexP6slab_si>:

bool checkSetIndex(slab_t* slab, int index)
{
    80001460:	ff010113          	addi	sp,sp,-16
    80001464:	00813423          	sd	s0,8(sp)
    80001468:	01010413          	addi	s0,sp,16
    return (uint8)slab->allocated[index / 8] & (1 << (index%8));
    8000146c:	41f5d79b          	sraiw	a5,a1,0x1f
    80001470:	01d7d79b          	srliw	a5,a5,0x1d
    80001474:	00b785bb          	addw	a1,a5,a1
    80001478:	4035d71b          	sraiw	a4,a1,0x3
    8000147c:	00e50533          	add	a0,a0,a4
    80001480:	03054503          	lbu	a0,48(a0)
    80001484:	0075f593          	andi	a1,a1,7
    80001488:	40f585bb          	subw	a1,a1,a5
    8000148c:	40b5553b          	sraw	a0,a0,a1
}
    80001490:	00157513          	andi	a0,a0,1
    80001494:	00813403          	ld	s0,8(sp)
    80001498:	01010113          	addi	sp,sp,16
    8000149c:	00008067          	ret

00000000800014a0 <_Z17setAllocatedIndexP6slab_si>:

void setAllocatedIndex(slab_t* slab, int index)
{
    800014a0:	ff010113          	addi	sp,sp,-16
    800014a4:	00813423          	sd	s0,8(sp)
    800014a8:	01010413          	addi	s0,sp,16
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] | (1 << (index%8));
    800014ac:	41f5d79b          	sraiw	a5,a1,0x1f
    800014b0:	01d7d79b          	srliw	a5,a5,0x1d
    800014b4:	00b785bb          	addw	a1,a5,a1
    800014b8:	4035d71b          	sraiw	a4,a1,0x3
    800014bc:	00e50533          	add	a0,a0,a4
    800014c0:	03050703          	lb	a4,48(a0)
    800014c4:	0075f593          	andi	a1,a1,7
    800014c8:	40f585bb          	subw	a1,a1,a5
    800014cc:	00100793          	li	a5,1
    800014d0:	00b795bb          	sllw	a1,a5,a1
    800014d4:	00b765b3          	or	a1,a4,a1
    800014d8:	02b50823          	sb	a1,48(a0)
}
    800014dc:	00813403          	ld	s0,8(sp)
    800014e0:	01010113          	addi	sp,sp,16
    800014e4:	00008067          	ret

00000000800014e8 <_Z14allocateObjectP6slab_s>:

void* allocateObject(slab_t* slab)
{
    800014e8:	fd010113          	addi	sp,sp,-48
    800014ec:	02113423          	sd	ra,40(sp)
    800014f0:	02813023          	sd	s0,32(sp)
    800014f4:	00913c23          	sd	s1,24(sp)
    800014f8:	01213823          	sd	s2,16(sp)
    800014fc:	01313423          	sd	s3,8(sp)
    80001500:	03010413          	addi	s0,sp,48
    80001504:	00050913          	mv	s2,a0
    if(slab == nullptr)
    80001508:	08050863          	beqz	a0,80001598 <_Z14allocateObjectP6slab_s+0xb0>
        return nullptr;
    int index = -1;
    void* addr = nullptr;
    for(size_t i = 0;i < slab->numOfObjects;i++)
    8000150c:	00000493          	li	s1,0
    80001510:	01893783          	ld	a5,24(s2)
    80001514:	02f4fe63          	bgeu	s1,a5,80001550 <_Z14allocateObjectP6slab_s+0x68>
    {
        if(!checkSetIndex(slab, i))
    80001518:	0004899b          	sext.w	s3,s1
    8000151c:	00098593          	mv	a1,s3
    80001520:	00090513          	mv	a0,s2
    80001524:	00000097          	auipc	ra,0x0
    80001528:	f3c080e7          	jalr	-196(ra) # 80001460 <_Z13checkSetIndexP6slab_si>
    8000152c:	00050663          	beqz	a0,80001538 <_Z14allocateObjectP6slab_s+0x50>
    for(size_t i = 0;i < slab->numOfObjects;i++)
    80001530:	00148493          	addi	s1,s1,1
    80001534:	fddff06f          	j	80001510 <_Z14allocateObjectP6slab_s+0x28>
        {
            addr = (void*)((size_t)slab->startAddr + i*slab->owner->obj_size);
    80001538:	02893783          	ld	a5,40(s2)
    8000153c:	01093703          	ld	a4,16(s2)
    80001540:	06073703          	ld	a4,96(a4)
    80001544:	029704b3          	mul	s1,a4,s1
    80001548:	009784b3          	add	s1,a5,s1
            index = i;
            break;
    8000154c:	00c0006f          	j	80001558 <_Z14allocateObjectP6slab_s+0x70>
    void* addr = nullptr;
    80001550:	00000493          	li	s1,0
    int index = -1;
    80001554:	fff00993          	li	s3,-1
        }
    }
    if(addr == nullptr)
    80001558:	02048063          	beqz	s1,80001578 <_Z14allocateObjectP6slab_s+0x90>
        return nullptr;

    setAllocatedIndex(slab, index);
    8000155c:	00098593          	mv	a1,s3
    80001560:	00090513          	mv	a0,s2
    80001564:	00000097          	auipc	ra,0x0
    80001568:	f3c080e7          	jalr	-196(ra) # 800014a0 <_Z17setAllocatedIndexP6slab_si>
    slab->numOfAllocatedObjects++;
    8000156c:	02093783          	ld	a5,32(s2)
    80001570:	00178793          	addi	a5,a5,1
    80001574:	02f93023          	sd	a5,32(s2)

    return addr;
}
    80001578:	00048513          	mv	a0,s1
    8000157c:	02813083          	ld	ra,40(sp)
    80001580:	02013403          	ld	s0,32(sp)
    80001584:	01813483          	ld	s1,24(sp)
    80001588:	01013903          	ld	s2,16(sp)
    8000158c:	00813983          	ld	s3,8(sp)
    80001590:	03010113          	addi	sp,sp,48
    80001594:	00008067          	ret
        return nullptr;
    80001598:	00050493          	mv	s1,a0
    8000159c:	fddff06f          	j	80001578 <_Z14allocateObjectP6slab_s+0x90>

00000000800015a0 <_Z4fullP6slab_s>:

bool full(slab_t* slab)
{
    800015a0:	ff010113          	addi	sp,sp,-16
    800015a4:	00813423          	sd	s0,8(sp)
    800015a8:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == slab->numOfObjects;
    800015ac:	02053783          	ld	a5,32(a0)
    800015b0:	01853503          	ld	a0,24(a0)
    800015b4:	40f50533          	sub	a0,a0,a5
}
    800015b8:	00153513          	seqz	a0,a0
    800015bc:	00813403          	ld	s0,8(sp)
    800015c0:	01010113          	addi	sp,sp,16
    800015c4:	00008067          	ret

00000000800015c8 <_Z5emptyP6slab_s>:

bool empty(slab_t* slab)
{
    800015c8:	ff010113          	addi	sp,sp,-16
    800015cc:	00813423          	sd	s0,8(sp)
    800015d0:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == 0;
    800015d4:	02053503          	ld	a0,32(a0)
}
    800015d8:	00153513          	seqz	a0,a0
    800015dc:	00813403          	ld	s0,8(sp)
    800015e0:	01010113          	addi	sp,sp,16
    800015e4:	00008067          	ret

00000000800015e8 <_Z18insertIntoSlabListP6slab_sPS0_>:

void insertIntoSlabList(slab_t* slab, slab_t** slab_head)
{
    800015e8:	ff010113          	addi	sp,sp,-16
    800015ec:	00813423          	sd	s0,8(sp)
    800015f0:	01010413          	addi	s0,sp,16
    if(slab == nullptr)
    800015f4:	00050e63          	beqz	a0,80001610 <_Z18insertIntoSlabListP6slab_sPS0_+0x28>
        return;
    slab->prev = nullptr;
    800015f8:	00053023          	sd	zero,0(a0)
    slab->next = *slab_head;
    800015fc:	0005b783          	ld	a5,0(a1)
    80001600:	00f53423          	sd	a5,8(a0)
    if(*slab_head != nullptr)
    80001604:	00078463          	beqz	a5,8000160c <_Z18insertIntoSlabListP6slab_sPS0_+0x24>
        (*slab_head)->prev = slab;
    80001608:	00a7b023          	sd	a0,0(a5)
    *slab_head = slab;
    8000160c:	00a5b023          	sd	a0,0(a1)
}
    80001610:	00813403          	ld	s0,8(sp)
    80001614:	01010113          	addi	sp,sp,16
    80001618:	00008067          	ret

000000008000161c <_Z18removeFromSlabListP6slab_sPS0_>:

void removeFromSlabList(slab_t* slab, slab_t** slab_head)
{
    8000161c:	ff010113          	addi	sp,sp,-16
    80001620:	00813423          	sd	s0,8(sp)
    80001624:	01010413          	addi	s0,sp,16
    if(slab->prev == nullptr) //same as slab == *slab_head
    80001628:	00053783          	ld	a5,0(a0)
    8000162c:	02078663          	beqz	a5,80001658 <_Z18removeFromSlabListP6slab_sPS0_+0x3c>
        (*slab_head) = slab->next;
        slab->next = slab->prev = nullptr;
    }
    else
    {
        slab->prev->next = slab->next;
    80001630:	00853703          	ld	a4,8(a0)
    80001634:	00e7b423          	sd	a4,8(a5)
        if(slab->next) slab->next->prev = slab->prev;
    80001638:	00070663          	beqz	a4,80001644 <_Z18removeFromSlabListP6slab_sPS0_+0x28>
    8000163c:	00053783          	ld	a5,0(a0)
    80001640:	00f73023          	sd	a5,0(a4)
        slab->next = slab->prev = nullptr;
    80001644:	00053023          	sd	zero,0(a0)
    80001648:	00053423          	sd	zero,8(a0)
    }
}
    8000164c:	00813403          	ld	s0,8(sp)
    80001650:	01010113          	addi	sp,sp,16
    80001654:	00008067          	ret
        if(slab->next) slab->next->prev = nullptr;
    80001658:	00853783          	ld	a5,8(a0)
    8000165c:	00078463          	beqz	a5,80001664 <_Z18removeFromSlabListP6slab_sPS0_+0x48>
    80001660:	0007b023          	sd	zero,0(a5)
        (*slab_head) = slab->next;
    80001664:	00853783          	ld	a5,8(a0)
    80001668:	00f5b023          	sd	a5,0(a1)
        slab->next = slab->prev = nullptr;
    8000166c:	00053023          	sd	zero,0(a0)
    80001670:	00053423          	sd	zero,8(a0)
    80001674:	fd9ff06f          	j	8000164c <_Z18removeFromSlabListP6slab_sPS0_+0x30>

0000000080001678 <_Z16putPartialToFullP12kmem_cache_s>:

void putPartialToFull(kmem_cache_t* cachep)
{
    80001678:	fe010113          	addi	sp,sp,-32
    8000167c:	00113c23          	sd	ra,24(sp)
    80001680:	00813823          	sd	s0,16(sp)
    80001684:	00913423          	sd	s1,8(sp)
    80001688:	01213023          	sd	s2,0(sp)
    8000168c:	02010413          	addi	s0,sp,32
    80001690:	00050493          	mv	s1,a0
    slab_t* slab = cachep->slabs_partial;
    80001694:	05053903          	ld	s2,80(a0)
    removeFromSlabList(slab, &cachep->slabs_partial);
    80001698:	05050593          	addi	a1,a0,80
    8000169c:	00090513          	mv	a0,s2
    800016a0:	00000097          	auipc	ra,0x0
    800016a4:	f7c080e7          	jalr	-132(ra) # 8000161c <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_full);
    800016a8:	04848593          	addi	a1,s1,72
    800016ac:	00090513          	mv	a0,s2
    800016b0:	00000097          	auipc	ra,0x0
    800016b4:	f38080e7          	jalr	-200(ra) # 800015e8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    800016b8:	01813083          	ld	ra,24(sp)
    800016bc:	01013403          	ld	s0,16(sp)
    800016c0:	00813483          	ld	s1,8(sp)
    800016c4:	00013903          	ld	s2,0(sp)
    800016c8:	02010113          	addi	sp,sp,32
    800016cc:	00008067          	ret

00000000800016d0 <_Z17putEmptyToPartialP12kmem_cache_s>:

void putEmptyToPartial(kmem_cache_t* cachep)
{
    800016d0:	fe010113          	addi	sp,sp,-32
    800016d4:	00113c23          	sd	ra,24(sp)
    800016d8:	00813823          	sd	s0,16(sp)
    800016dc:	00913423          	sd	s1,8(sp)
    800016e0:	01213023          	sd	s2,0(sp)
    800016e4:	02010413          	addi	s0,sp,32
    800016e8:	00050493          	mv	s1,a0
    slab_t* slab = cachep->slabs_empty;
    800016ec:	04053903          	ld	s2,64(a0)
    removeFromSlabList(slab, &cachep->slabs_empty);
    800016f0:	04050593          	addi	a1,a0,64
    800016f4:	00090513          	mv	a0,s2
    800016f8:	00000097          	auipc	ra,0x0
    800016fc:	f24080e7          	jalr	-220(ra) # 8000161c <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_partial);
    80001700:	05048593          	addi	a1,s1,80
    80001704:	00090513          	mv	a0,s2
    80001708:	00000097          	auipc	ra,0x0
    8000170c:	ee0080e7          	jalr	-288(ra) # 800015e8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    80001710:	01813083          	ld	ra,24(sp)
    80001714:	01013403          	ld	s0,16(sp)
    80001718:	00813483          	ld	s1,8(sp)
    8000171c:	00013903          	ld	s2,0(sp)
    80001720:	02010113          	addi	sp,sp,32
    80001724:	00008067          	ret

0000000080001728 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>:

void removeFullSlab(kmem_cache_t* cachep, slab_t* slab)
{
    80001728:	fe010113          	addi	sp,sp,-32
    8000172c:	00113c23          	sd	ra,24(sp)
    80001730:	00813823          	sd	s0,16(sp)
    80001734:	00913423          	sd	s1,8(sp)
    80001738:	01213023          	sd	s2,0(sp)
    8000173c:	02010413          	addi	s0,sp,32
    80001740:	00050913          	mv	s2,a0
    80001744:	00058493          	mv	s1,a1
    removeFromSlabList(slab, &cachep->slabs_full);
    80001748:	04850593          	addi	a1,a0,72
    8000174c:	00048513          	mv	a0,s1
    80001750:	00000097          	auipc	ra,0x0
    80001754:	ecc080e7          	jalr	-308(ra) # 8000161c <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_partial);
    80001758:	05090593          	addi	a1,s2,80
    8000175c:	00048513          	mv	a0,s1
    80001760:	00000097          	auipc	ra,0x0
    80001764:	e88080e7          	jalr	-376(ra) # 800015e8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    80001768:	01813083          	ld	ra,24(sp)
    8000176c:	01013403          	ld	s0,16(sp)
    80001770:	00813483          	ld	s1,8(sp)
    80001774:	00013903          	ld	s2,0(sp)
    80001778:	02010113          	addi	sp,sp,32
    8000177c:	00008067          	ret

0000000080001780 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>:

void removePartialSlab(kmem_cache_t * cachep, slab_t* slab)
{
    80001780:	fe010113          	addi	sp,sp,-32
    80001784:	00113c23          	sd	ra,24(sp)
    80001788:	00813823          	sd	s0,16(sp)
    8000178c:	00913423          	sd	s1,8(sp)
    80001790:	01213023          	sd	s2,0(sp)
    80001794:	02010413          	addi	s0,sp,32
    80001798:	00050913          	mv	s2,a0
    8000179c:	00058493          	mv	s1,a1
    removeFromSlabList(slab, &cachep->slabs_partial);
    800017a0:	05050593          	addi	a1,a0,80
    800017a4:	00048513          	mv	a0,s1
    800017a8:	00000097          	auipc	ra,0x0
    800017ac:	e74080e7          	jalr	-396(ra) # 8000161c <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_empty);
    800017b0:	04090593          	addi	a1,s2,64
    800017b4:	00048513          	mv	a0,s1
    800017b8:	00000097          	auipc	ra,0x0
    800017bc:	e30080e7          	jalr	-464(ra) # 800015e8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    800017c0:	01813083          	ld	ra,24(sp)
    800017c4:	01013403          	ld	s0,16(sp)
    800017c8:	00813483          	ld	s1,8(sp)
    800017cc:	00013903          	ld	s2,0(sp)
    800017d0:	02010113          	addi	sp,sp,32
    800017d4:	00008067          	ret

00000000800017d8 <_Z12allocateSlabP12kmem_cache_s>:

void allocateSlab(kmem_cache_t* cachep)
{
    800017d8:	fd010113          	addi	sp,sp,-48
    800017dc:	02113423          	sd	ra,40(sp)
    800017e0:	02813023          	sd	s0,32(sp)
    800017e4:	00913c23          	sd	s1,24(sp)
    800017e8:	01213823          	sd	s2,16(sp)
    800017ec:	01313423          	sd	s3,8(sp)
    800017f0:	03010413          	addi	s0,sp,48
    800017f4:	00050993          	mv	s3,a0
    slab_t* newSlab = (slab_t*)buddy_alloc(cachep->slab_size);
    800017f8:	05853503          	ld	a0,88(a0)
    800017fc:	00001097          	auipc	ra,0x1
    80001800:	78c080e7          	jalr	1932(ra) # 80002f88 <_Z11buddy_allocm>
    if(newSlab == nullptr)
    80001804:	0a050063          	beqz	a0,800018a4 <_Z12allocateSlabP12kmem_cache_s+0xcc>
    80001808:	00050493          	mv	s1,a0
        return;
    newSlab->next = cachep->slabs_empty;
    8000180c:	0409b783          	ld	a5,64(s3)
    80001810:	00f53423          	sd	a5,8(a0)
    if(cachep->slabs_empty != nullptr)
    80001814:	00078463          	beqz	a5,8000181c <_Z12allocateSlabP12kmem_cache_s+0x44>
        cachep->slabs_empty->prev = newSlab;
    80001818:	00a7b023          	sd	a0,0(a5)
    cachep->slabs_empty = newSlab;
    8000181c:	0499b023          	sd	s1,64(s3)
    newSlab->prev = nullptr;
    80001820:	0004b023          	sd	zero,0(s1)

    newSlab->numOfAllocatedObjects = 0;
    80001824:	0204b023          	sd	zero,32(s1)
    newSlab->owner = cachep;
    80001828:	0134b823          	sd	s3,16(s1)
    size_t sizeInBytes = cachep->slab_size*BLOCK_SIZE;
    8000182c:	0589b683          	ld	a3,88(s3)
    80001830:	00c69693          	slli	a3,a3,0xc
    newSlab->numOfObjects = (sizeInBytes - sizeof(slab_t)) / cachep->obj_size; // TODO can this param be in cache ?
    80001834:	dd068693          	addi	a3,a3,-560
    80001838:	0609b783          	ld	a5,96(s3)
    8000183c:	02f6d6b3          	divu	a3,a3,a5
    80001840:	00d4bc23          	sd	a3,24(s1)
    newSlab->startAddr = (void*)((size_t)newSlab + sizeof(slab_t));
    80001844:	23048793          	addi	a5,s1,560
    80001848:	02f4b423          	sd	a5,40(s1)
    for(size_t i = 0; i < (newSlab->numOfObjects + 7) / 8;i++)
    8000184c:	00000713          	li	a4,0
    80001850:	00768793          	addi	a5,a3,7
    80001854:	0037d793          	srli	a5,a5,0x3
    80001858:	00f77a63          	bgeu	a4,a5,8000186c <_Z12allocateSlabP12kmem_cache_s+0x94>
        newSlab->allocated[i] = 0;
    8000185c:	00e487b3          	add	a5,s1,a4
    80001860:	02078823          	sb	zero,48(a5)
    for(size_t i = 0; i < (newSlab->numOfObjects + 7) / 8;i++)
    80001864:	00170713          	addi	a4,a4,1
    80001868:	fe9ff06f          	j	80001850 <_Z12allocateSlabP12kmem_cache_s+0x78>

    if(cachep->ctor != nullptr)
    8000186c:	0689b783          	ld	a5,104(s3)
    80001870:	02078a63          	beqz	a5,800018a4 <_Z12allocateSlabP12kmem_cache_s+0xcc>
    {
        for(size_t i = 0;i < newSlab->numOfObjects;i++)
    80001874:	00000913          	li	s2,0
    80001878:	0184b783          	ld	a5,24(s1)
    8000187c:	02f97463          	bgeu	s2,a5,800018a4 <_Z12allocateSlabP12kmem_cache_s+0xcc>
            cachep->ctor((void*)((size_t)newSlab->startAddr + i*newSlab->owner->obj_size));
    80001880:	0689b703          	ld	a4,104(s3)
    80001884:	0284b503          	ld	a0,40(s1)
    80001888:	0104b783          	ld	a5,16(s1)
    8000188c:	0607b783          	ld	a5,96(a5)
    80001890:	032787b3          	mul	a5,a5,s2
    80001894:	00f50533          	add	a0,a0,a5
    80001898:	000700e7          	jalr	a4
        for(size_t i = 0;i < newSlab->numOfObjects;i++)
    8000189c:	00190913          	addi	s2,s2,1
    800018a0:	fd9ff06f          	j	80001878 <_Z12allocateSlabP12kmem_cache_s+0xa0>
    }
}
    800018a4:	02813083          	ld	ra,40(sp)
    800018a8:	02013403          	ld	s0,32(sp)
    800018ac:	01813483          	ld	s1,24(sp)
    800018b0:	01013903          	ld	s2,16(sp)
    800018b4:	00813983          	ld	s3,8(sp)
    800018b8:	03010113          	addi	sp,sp,48
    800018bc:	00008067          	ret

00000000800018c0 <_Z18getOptimalSlabSizem>:

size_t getOptimalSlabSize(size_t obj_size)
{
    800018c0:	ff010113          	addi	sp,sp,-16
    800018c4:	00813423          	sd	s0,8(sp)
    800018c8:	01010413          	addi	s0,sp,16
    size_t bestSize = BLOCK_SIZE;
    800018cc:	00001737          	lui	a4,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    800018d0:	23050793          	addi	a5,a0,560
    800018d4:	00f77663          	bgeu	a4,a5,800018e0 <_Z18getOptimalSlabSizem+0x20>
        bestSize<<=1;
    800018d8:	00171713          	slli	a4,a4,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    800018dc:	ff5ff06f          	j	800018d0 <_Z18getOptimalSlabSizem+0x10>
    size_t optimalWaste = (bestSize - sizeof(slab_t)) % obj_size;
    800018e0:	dd070813          	addi	a6,a4,-560 # dd0 <_entry-0x7ffff230>
    800018e4:	02a87833          	remu	a6,a6,a0
    800018e8:	00070313          	mv	t1,a4
    size_t oldSize = bestSize;

    static size_t lowerConst = 1;
    static size_t highConst = 4;
    for(size_t i = lowerConst;i<=highConst;i++)
    800018ec:	00100693          	li	a3,1
    800018f0:	0080006f          	j	800018f8 <_Z18getOptimalSlabSizem+0x38>
    800018f4:	00168693          	addi	a3,a3,1
    800018f8:	00400793          	li	a5,4
    800018fc:	02d7e663          	bltu	a5,a3,80001928 <_Z18getOptimalSlabSizem+0x68>
    {
        size_t newSize = oldSize << i;
    80001900:	00d71633          	sll	a2,a4,a3
        size_t newWaste = (newSize - sizeof(slab_t)) % obj_size;
    80001904:	dd060793          	addi	a5,a2,-560
    80001908:	02a7f5b3          	remu	a1,a5,a0
        size_t numOfObjs = (newSize - sizeof(slab_t)) / obj_size;
    8000190c:	02a7d7b3          	divu	a5,a5,a0
        if(newWaste < optimalWaste && numOfObjs <= MAX_NUM_OF_OBJS)
    80001910:	ff05f2e3          	bgeu	a1,a6,800018f4 <_Z18getOptimalSlabSizem+0x34>
    80001914:	000018b7          	lui	a7,0x1
    80001918:	fcf8eee3          	bltu	a7,a5,800018f4 <_Z18getOptimalSlabSizem+0x34>
        {
            optimalWaste = newWaste;
    8000191c:	00058813          	mv	a6,a1
            bestSize = newSize;
    80001920:	00060313          	mv	t1,a2
    80001924:	fd1ff06f          	j	800018f4 <_Z18getOptimalSlabSizem+0x34>
            bestSize = newSize;
        }
    }*/

    return bestSize / BLOCK_SIZE;
}
    80001928:	00c35513          	srli	a0,t1,0xc
    8000192c:	00813403          	ld	s0,8(sp)
    80001930:	01010113          	addi	sp,sp,16
    80001934:	00008067          	ret

0000000080001938 <_Z8findSlabP12kmem_cache_sPKv>:

//finds the slab where objp is
slab_t* findSlab(kmem_cache_t* cachep, const void* objp)
{
    80001938:	ff010113          	addi	sp,sp,-16
    8000193c:	00813423          	sd	s0,8(sp)
    80001940:	01010413          	addi	s0,sp,16
    80001944:	00050613          	mv	a2,a0
    if(cachep == nullptr || objp == nullptr)
    80001948:	02050c63          	beqz	a0,80001980 <_Z8findSlabP12kmem_cache_sPKv+0x48>
    8000194c:	06058a63          	beqz	a1,800019c0 <_Z8findSlabP12kmem_cache_sPKv+0x88>
        return nullptr;
    slab_t* slab = cachep->slabs_full;
    80001950:	04853503          	ld	a0,72(a0)
    80001954:	0080006f          	j	8000195c <_Z8findSlabP12kmem_cache_sPKv+0x24>
    while(slab != nullptr)
    {
        size_t endAddr = (size_t)slab->startAddr + slab->numOfObjects*slab->owner->obj_size;
        if((size_t)objp >= (size_t)slab->startAddr && (size_t)objp < endAddr)
            return slab;
        slab = slab->next;
    80001958:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    8000195c:	02050863          	beqz	a0,8000198c <_Z8findSlabP12kmem_cache_sPKv+0x54>
        size_t endAddr = (size_t)slab->startAddr + slab->numOfObjects*slab->owner->obj_size;
    80001960:	02853703          	ld	a4,40(a0)
    80001964:	01853783          	ld	a5,24(a0)
    80001968:	01053683          	ld	a3,16(a0)
    8000196c:	0606b683          	ld	a3,96(a3)
    80001970:	02d787b3          	mul	a5,a5,a3
    80001974:	00f707b3          	add	a5,a4,a5
        if((size_t)objp >= (size_t)slab->startAddr && (size_t)objp < endAddr)
    80001978:	fee5e0e3          	bltu	a1,a4,80001958 <_Z8findSlabP12kmem_cache_sPKv+0x20>
    8000197c:	fcf5fee3          	bgeu	a1,a5,80001958 <_Z8findSlabP12kmem_cache_sPKv+0x20>
            return slab;
        slab = slab->next;
    }

    return nullptr;
}
    80001980:	00813403          	ld	s0,8(sp)
    80001984:	01010113          	addi	sp,sp,16
    80001988:	00008067          	ret
    slab = cachep->slabs_partial;
    8000198c:	05063503          	ld	a0,80(a2)
    80001990:	0080006f          	j	80001998 <_Z8findSlabP12kmem_cache_sPKv+0x60>
        slab = slab->next;
    80001994:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    80001998:	fe0504e3          	beqz	a0,80001980 <_Z8findSlabP12kmem_cache_sPKv+0x48>
        size_t endAddr = (size_t)slab->startAddr + slab->numOfObjects*slab->owner->obj_size;
    8000199c:	02853703          	ld	a4,40(a0)
    800019a0:	01853783          	ld	a5,24(a0)
    800019a4:	01053683          	ld	a3,16(a0)
    800019a8:	0606b683          	ld	a3,96(a3)
    800019ac:	02d787b3          	mul	a5,a5,a3
    800019b0:	00f707b3          	add	a5,a4,a5
        if((size_t)objp >= (size_t)slab->startAddr && (size_t)objp < endAddr)
    800019b4:	fee5e0e3          	bltu	a1,a4,80001994 <_Z8findSlabP12kmem_cache_sPKv+0x5c>
    800019b8:	fcf5fee3          	bgeu	a1,a5,80001994 <_Z8findSlabP12kmem_cache_sPKv+0x5c>
    800019bc:	fc5ff06f          	j	80001980 <_Z8findSlabP12kmem_cache_sPKv+0x48>
        return nullptr;
    800019c0:	00058513          	mv	a0,a1
    800019c4:	fbdff06f          	j	80001980 <_Z8findSlabP12kmem_cache_sPKv+0x48>

00000000800019c8 <_Z19resetAllocatedIndexP6slab_si>:

void resetAllocatedIndex(slab_t* slab, int index)
{
    800019c8:	ff010113          	addi	sp,sp,-16
    800019cc:	00813423          	sd	s0,8(sp)
    800019d0:	01010413          	addi	s0,sp,16
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] & ~(1 << (index%8));
    800019d4:	41f5d79b          	sraiw	a5,a1,0x1f
    800019d8:	01d7d79b          	srliw	a5,a5,0x1d
    800019dc:	00b785bb          	addw	a1,a5,a1
    800019e0:	4035d71b          	sraiw	a4,a1,0x3
    800019e4:	00e50533          	add	a0,a0,a4
    800019e8:	03050703          	lb	a4,48(a0)
    800019ec:	0075f593          	andi	a1,a1,7
    800019f0:	40f585bb          	subw	a1,a1,a5
    800019f4:	00100793          	li	a5,1
    800019f8:	00b795bb          	sllw	a1,a5,a1
    800019fc:	fff5c593          	not	a1,a1
    80001a00:	00b775b3          	and	a1,a4,a1
    80001a04:	02b50823          	sb	a1,48(a0)
}
    80001a08:	00813403          	ld	s0,8(sp)
    80001a0c:	01010113          	addi	sp,sp,16
    80001a10:	00008067          	ret

0000000080001a14 <_Z13printSlabInfoP6slab_s>:

void printSlabInfo(slab_t* slab)
{
    80001a14:	fe010113          	addi	sp,sp,-32
    80001a18:	00113c23          	sd	ra,24(sp)
    80001a1c:	00813823          	sd	s0,16(sp)
    80001a20:	00913423          	sd	s1,8(sp)
    80001a24:	02010413          	addi	s0,sp,32
    80001a28:	00050493          	mv	s1,a0
    KConsole::trapPrintString("One slab info---------\n");
    80001a2c:	00006517          	auipc	a0,0x6
    80001a30:	60450513          	addi	a0,a0,1540 # 80008030 <CONSOLE_STATUS+0x20>
    80001a34:	00002097          	auipc	ra,0x2
    80001a38:	ef4080e7          	jalr	-268(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Slab address ",(size_t)slab,16);
    80001a3c:	01000613          	li	a2,16
    80001a40:	00048593          	mv	a1,s1
    80001a44:	00006517          	auipc	a0,0x6
    80001a48:	60450513          	addi	a0,a0,1540 # 80008048 <CONSOLE_STATUS+0x38>
    80001a4c:	00002097          	auipc	ra,0x2
    80001a50:	fb4080e7          	jalr	-76(ra) # 80003a00 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Number of allocated objects ",slab->numOfAllocatedObjects);
    80001a54:	00a00613          	li	a2,10
    80001a58:	0204b583          	ld	a1,32(s1)
    80001a5c:	00006517          	auipc	a0,0x6
    80001a60:	5fc50513          	addi	a0,a0,1532 # 80008058 <CONSOLE_STATUS+0x48>
    80001a64:	00002097          	auipc	ra,0x2
    80001a68:	f9c080e7          	jalr	-100(ra) # 80003a00 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Number of objects ", slab->numOfObjects);
    80001a6c:	00a00613          	li	a2,10
    80001a70:	0184b583          	ld	a1,24(s1)
    80001a74:	00006517          	auipc	a0,0x6
    80001a78:	60450513          	addi	a0,a0,1540 # 80008078 <CONSOLE_STATUS+0x68>
    80001a7c:	00002097          	auipc	ra,0x2
    80001a80:	f84080e7          	jalr	-124(ra) # 80003a00 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Slab start addr ", (size_t)slab->startAddr, 16);
    80001a84:	01000613          	li	a2,16
    80001a88:	0284b583          	ld	a1,40(s1)
    80001a8c:	00006517          	auipc	a0,0x6
    80001a90:	60450513          	addi	a0,a0,1540 # 80008090 <CONSOLE_STATUS+0x80>
    80001a94:	00002097          	auipc	ra,0x2
    80001a98:	f6c080e7          	jalr	-148(ra) # 80003a00 <_ZN8KConsole18trapPrintStringIntEPKcmi>
        KConsole::trapPrintInt(i);
        KConsole::trapPrintString(" : ");
        KConsole::trapPrintInt((size_t)slab->allocated[i], 16);
        KConsole::trapPrintString("\n");
    }*/
}
    80001a9c:	01813083          	ld	ra,24(sp)
    80001aa0:	01013403          	ld	s0,16(sp)
    80001aa4:	00813483          	ld	s1,8(sp)
    80001aa8:	02010113          	addi	sp,sp,32
    80001aac:	00008067          	ret

0000000080001ab0 <_Z16free_slab_objectP6slab_sPKv>:

void free_slab_object(slab_t* slab, const void* objp)
{
    if(slab == nullptr || objp == nullptr)
    80001ab0:	12050863          	beqz	a0,80001be0 <_Z16free_slab_objectP6slab_sPKv+0x130>
{
    80001ab4:	fd010113          	addi	sp,sp,-48
    80001ab8:	02113423          	sd	ra,40(sp)
    80001abc:	02813023          	sd	s0,32(sp)
    80001ac0:	00913c23          	sd	s1,24(sp)
    80001ac4:	01213823          	sd	s2,16(sp)
    80001ac8:	01313423          	sd	s3,8(sp)
    80001acc:	01413023          	sd	s4,0(sp)
    80001ad0:	03010413          	addi	s0,sp,48
    80001ad4:	00050493          	mv	s1,a0
    80001ad8:	00058913          	mv	s2,a1
    if(slab == nullptr || objp == nullptr)
    80001adc:	08058263          	beqz	a1,80001b60 <_Z16free_slab_objectP6slab_sPKv+0xb0>
        return;
    int indexOfObject = ((size_t)objp - (size_t)slab->startAddr) / slab->owner->obj_size;
    80001ae0:	02853783          	ld	a5,40(a0)
    80001ae4:	40f589b3          	sub	s3,a1,a5
    80001ae8:	01053a03          	ld	s4,16(a0)
    80001aec:	060a3703          	ld	a4,96(s4)
    80001af0:	02e9d9b3          	divu	s3,s3,a4
    80001af4:	0009899b          	sext.w	s3,s3
    if((size_t)objp != (size_t)slab->startAddr + indexOfObject*slab->owner->obj_size) //address not allocated, random address
    80001af8:	03370733          	mul	a4,a4,s3
    80001afc:	00e787b3          	add	a5,a5,a4
    80001b00:	06f59063          	bne	a1,a5,80001b60 <_Z16free_slab_objectP6slab_sPKv+0xb0>
        return;

    if(!checkSetIndex(slab, indexOfObject))
    80001b04:	00098593          	mv	a1,s3
    80001b08:	00000097          	auipc	ra,0x0
    80001b0c:	958080e7          	jalr	-1704(ra) # 80001460 <_Z13checkSetIndexP6slab_si>
    80001b10:	04050863          	beqz	a0,80001b60 <_Z16free_slab_objectP6slab_sPKv+0xb0>
        return;

    kmem_cache_t* cachep = slab->owner;
    if(cachep->dtor != nullptr)
    80001b14:	070a3783          	ld	a5,112(s4)
    80001b18:	00078663          	beqz	a5,80001b24 <_Z16free_slab_objectP6slab_sPKv+0x74>
        cachep->dtor((void*)objp);
    80001b1c:	00090513          	mv	a0,s2
    80001b20:	000780e7          	jalr	a5
    if(cachep->ctor != nullptr)
    80001b24:	068a3783          	ld	a5,104(s4)
    80001b28:	00078663          	beqz	a5,80001b34 <_Z16free_slab_objectP6slab_sPKv+0x84>
        cachep->ctor((void*)objp);
    80001b2c:	00090513          	mv	a0,s2
    80001b30:	000780e7          	jalr	a5

    resetAllocatedIndex(slab, indexOfObject);
    80001b34:	00098593          	mv	a1,s3
    80001b38:	00048513          	mv	a0,s1
    80001b3c:	00000097          	auipc	ra,0x0
    80001b40:	e8c080e7          	jalr	-372(ra) # 800019c8 <_Z19resetAllocatedIndexP6slab_si>
    if(slab->numOfObjects == slab->numOfAllocatedObjects)
    80001b44:	0184b703          	ld	a4,24(s1)
    80001b48:	0204b783          	ld	a5,32(s1)
    80001b4c:	02f70a63          	beq	a4,a5,80001b80 <_Z16free_slab_objectP6slab_sPKv+0xd0>
        removeFullSlab(slab->owner, slab);
        slab->numOfAllocatedObjects--;
        if(empty(slab))
            removePartialSlab(slab->owner, slab);
    }
    else if(slab->numOfAllocatedObjects == 1)
    80001b50:	00100713          	li	a4,1
    80001b54:	06e78663          	beq	a5,a4,80001bc0 <_Z16free_slab_objectP6slab_sPKv+0x110>
    {
        removePartialSlab(slab->owner, slab);
        slab->numOfAllocatedObjects--;
    }
    else
        slab->numOfAllocatedObjects--;
    80001b58:	fff78793          	addi	a5,a5,-1
    80001b5c:	02f4b023          	sd	a5,32(s1)
}
    80001b60:	02813083          	ld	ra,40(sp)
    80001b64:	02013403          	ld	s0,32(sp)
    80001b68:	01813483          	ld	s1,24(sp)
    80001b6c:	01013903          	ld	s2,16(sp)
    80001b70:	00813983          	ld	s3,8(sp)
    80001b74:	00013a03          	ld	s4,0(sp)
    80001b78:	03010113          	addi	sp,sp,48
    80001b7c:	00008067          	ret
        removeFullSlab(slab->owner, slab);
    80001b80:	00048593          	mv	a1,s1
    80001b84:	0104b503          	ld	a0,16(s1)
    80001b88:	00000097          	auipc	ra,0x0
    80001b8c:	ba0080e7          	jalr	-1120(ra) # 80001728 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>
        slab->numOfAllocatedObjects--;
    80001b90:	0204b783          	ld	a5,32(s1)
    80001b94:	fff78793          	addi	a5,a5,-1
    80001b98:	02f4b023          	sd	a5,32(s1)
        if(empty(slab))
    80001b9c:	00048513          	mv	a0,s1
    80001ba0:	00000097          	auipc	ra,0x0
    80001ba4:	a28080e7          	jalr	-1496(ra) # 800015c8 <_Z5emptyP6slab_s>
    80001ba8:	fa050ce3          	beqz	a0,80001b60 <_Z16free_slab_objectP6slab_sPKv+0xb0>
            removePartialSlab(slab->owner, slab);
    80001bac:	00048593          	mv	a1,s1
    80001bb0:	0104b503          	ld	a0,16(s1)
    80001bb4:	00000097          	auipc	ra,0x0
    80001bb8:	bcc080e7          	jalr	-1076(ra) # 80001780 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
    80001bbc:	fa5ff06f          	j	80001b60 <_Z16free_slab_objectP6slab_sPKv+0xb0>
        removePartialSlab(slab->owner, slab);
    80001bc0:	00048593          	mv	a1,s1
    80001bc4:	0104b503          	ld	a0,16(s1)
    80001bc8:	00000097          	auipc	ra,0x0
    80001bcc:	bb8080e7          	jalr	-1096(ra) # 80001780 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
        slab->numOfAllocatedObjects--;
    80001bd0:	0204b783          	ld	a5,32(s1)
    80001bd4:	fff78793          	addi	a5,a5,-1
    80001bd8:	02f4b023          	sd	a5,32(s1)
    80001bdc:	f85ff06f          	j	80001b60 <_Z16free_slab_objectP6slab_sPKv+0xb0>
    80001be0:	00008067          	ret

0000000080001be4 <_Z16kmem_cache_allocP12kmem_cache_s>:
    init_cache(newCache, name, getOptimalSlabSize(size), size, ctor,dtor);
    return newCache;
}

void *kmem_cache_alloc(kmem_cache_t *cachep)
{
    80001be4:	fe010113          	addi	sp,sp,-32
    80001be8:	00113c23          	sd	ra,24(sp)
    80001bec:	00813823          	sd	s0,16(sp)
    80001bf0:	00913423          	sd	s1,8(sp)
    80001bf4:	01213023          	sd	s2,0(sp)
    80001bf8:	02010413          	addi	s0,sp,32
    80001bfc:	00050493          	mv	s1,a0
    if(cachep == nullptr)
    80001c00:	10050a63          	beqz	a0,80001d14 <_Z16kmem_cache_allocP12kmem_cache_s+0x130>
        return nullptr;

    if(cachep->slabs_partial != nullptr)
    80001c04:	05053503          	ld	a0,80(a0)
    80001c08:	04051a63          	bnez	a0,80001c5c <_Z16kmem_cache_allocP12kmem_cache_s+0x78>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
        if(full(cachep->slabs_partial))
            putPartialToFull(cachep);
        return allocatedAddr;
    }
    else if(cachep->slabs_empty != nullptr)
    80001c0c:	0404b503          	ld	a0,64(s1)
    80001c10:	08050a63          	beqz	a0,80001ca4 <_Z16kmem_cache_allocP12kmem_cache_s+0xc0>
    {
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001c14:	00000097          	auipc	ra,0x0
    80001c18:	8d4080e7          	jalr	-1836(ra) # 800014e8 <_Z14allocateObjectP6slab_s>
    80001c1c:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001c20:	0404b503          	ld	a0,64(s1)
    80001c24:	00000097          	auipc	ra,0x0
    80001c28:	9a4080e7          	jalr	-1628(ra) # 800015c8 <_Z5emptyP6slab_s>
    80001c2c:	04051663          	bnez	a0,80001c78 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        {
            putEmptyToPartial(cachep);
    80001c30:	00048513          	mv	a0,s1
    80001c34:	00000097          	auipc	ra,0x0
    80001c38:	a9c080e7          	jalr	-1380(ra) # 800016d0 <_Z17putEmptyToPartialP12kmem_cache_s>
            if(full(cachep->slabs_partial))
    80001c3c:	0504b503          	ld	a0,80(s1)
    80001c40:	00000097          	auipc	ra,0x0
    80001c44:	960080e7          	jalr	-1696(ra) # 800015a0 <_Z4fullP6slab_s>
    80001c48:	02050863          	beqz	a0,80001c78 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
                putPartialToFull(cachep);
    80001c4c:	00048513          	mv	a0,s1
    80001c50:	00000097          	auipc	ra,0x0
    80001c54:	a28080e7          	jalr	-1496(ra) # 80001678 <_Z16putPartialToFullP12kmem_cache_s>
        }
        return allocatedAddr;
    80001c58:	0200006f          	j	80001c78 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
    80001c5c:	00000097          	auipc	ra,0x0
    80001c60:	88c080e7          	jalr	-1908(ra) # 800014e8 <_Z14allocateObjectP6slab_s>
    80001c64:	00050913          	mv	s2,a0
        if(full(cachep->slabs_partial))
    80001c68:	0504b503          	ld	a0,80(s1)
    80001c6c:	00000097          	auipc	ra,0x0
    80001c70:	934080e7          	jalr	-1740(ra) # 800015a0 <_Z4fullP6slab_s>
    80001c74:	02051063          	bnez	a0,80001c94 <_Z16kmem_cache_allocP12kmem_cache_s+0xb0>
                putPartialToFull(cachep);
        }
        return allocatedAddr;
    }
    return nullptr;
}
    80001c78:	00090513          	mv	a0,s2
    80001c7c:	01813083          	ld	ra,24(sp)
    80001c80:	01013403          	ld	s0,16(sp)
    80001c84:	00813483          	ld	s1,8(sp)
    80001c88:	00013903          	ld	s2,0(sp)
    80001c8c:	02010113          	addi	sp,sp,32
    80001c90:	00008067          	ret
            putPartialToFull(cachep);
    80001c94:	00048513          	mv	a0,s1
    80001c98:	00000097          	auipc	ra,0x0
    80001c9c:	9e0080e7          	jalr	-1568(ra) # 80001678 <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001ca0:	fd9ff06f          	j	80001c78 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        allocateSlab(cachep);
    80001ca4:	00048513          	mv	a0,s1
    80001ca8:	00000097          	auipc	ra,0x0
    80001cac:	b30080e7          	jalr	-1232(ra) # 800017d8 <_Z12allocateSlabP12kmem_cache_s>
        if(cachep->slabs_empty == nullptr)
    80001cb0:	0404b903          	ld	s2,64(s1)
    80001cb4:	04090863          	beqz	s2,80001d04 <_Z16kmem_cache_allocP12kmem_cache_s+0x120>
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001cb8:	00090513          	mv	a0,s2
    80001cbc:	00000097          	auipc	ra,0x0
    80001cc0:	82c080e7          	jalr	-2004(ra) # 800014e8 <_Z14allocateObjectP6slab_s>
    80001cc4:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001cc8:	0404b503          	ld	a0,64(s1)
    80001ccc:	00000097          	auipc	ra,0x0
    80001cd0:	8fc080e7          	jalr	-1796(ra) # 800015c8 <_Z5emptyP6slab_s>
    80001cd4:	fa0512e3          	bnez	a0,80001c78 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
            putEmptyToPartial(cachep);
    80001cd8:	00048513          	mv	a0,s1
    80001cdc:	00000097          	auipc	ra,0x0
    80001ce0:	9f4080e7          	jalr	-1548(ra) # 800016d0 <_Z17putEmptyToPartialP12kmem_cache_s>
            if(full(cachep->slabs_partial))
    80001ce4:	0504b503          	ld	a0,80(s1)
    80001ce8:	00000097          	auipc	ra,0x0
    80001cec:	8b8080e7          	jalr	-1864(ra) # 800015a0 <_Z4fullP6slab_s>
    80001cf0:	f80504e3          	beqz	a0,80001c78 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
                putPartialToFull(cachep);
    80001cf4:	00048513          	mv	a0,s1
    80001cf8:	00000097          	auipc	ra,0x0
    80001cfc:	980080e7          	jalr	-1664(ra) # 80001678 <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001d00:	f79ff06f          	j	80001c78 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
            cachep->errors|=EXPAND_ERROR;
    80001d04:	0784a783          	lw	a5,120(s1)
    80001d08:	0017e793          	ori	a5,a5,1
    80001d0c:	06f4ac23          	sw	a5,120(s1)
            return nullptr;
    80001d10:	f69ff06f          	j	80001c78 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        return nullptr;
    80001d14:	00050913          	mv	s2,a0
    80001d18:	f61ff06f          	j	80001c78 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>

0000000080001d1c <_Z17kmem_cache_createPKcmPFvPvES3_>:
{
    80001d1c:	fc010113          	addi	sp,sp,-64
    80001d20:	02113c23          	sd	ra,56(sp)
    80001d24:	02813823          	sd	s0,48(sp)
    80001d28:	02913423          	sd	s1,40(sp)
    80001d2c:	03213023          	sd	s2,32(sp)
    80001d30:	01313c23          	sd	s3,24(sp)
    80001d34:	01413823          	sd	s4,16(sp)
    80001d38:	01513423          	sd	s5,8(sp)
    80001d3c:	04010413          	addi	s0,sp,64
    80001d40:	00050993          	mv	s3,a0
    80001d44:	00058913          	mv	s2,a1
    80001d48:	00060a13          	mv	s4,a2
    80001d4c:	00068a93          	mv	s5,a3
    kmem_cache_t* newCache = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    80001d50:	00007517          	auipc	a0,0x7
    80001d54:	ca053503          	ld	a0,-864(a0) # 800089f0 <_ZL13slabAllocator>
    80001d58:	06850513          	addi	a0,a0,104
    80001d5c:	00000097          	auipc	ra,0x0
    80001d60:	e88080e7          	jalr	-376(ra) # 80001be4 <_Z16kmem_cache_allocP12kmem_cache_s>
    80001d64:	00050493          	mv	s1,a0
    if(newCache == nullptr)
    80001d68:	02050863          	beqz	a0,80001d98 <_Z17kmem_cache_createPKcmPFvPvES3_+0x7c>
    init_cache(newCache, name, getOptimalSlabSize(size), size, ctor,dtor);
    80001d6c:	00090513          	mv	a0,s2
    80001d70:	00000097          	auipc	ra,0x0
    80001d74:	b50080e7          	jalr	-1200(ra) # 800018c0 <_Z18getOptimalSlabSizem>
    80001d78:	00050613          	mv	a2,a0
    80001d7c:	000a8793          	mv	a5,s5
    80001d80:	000a0713          	mv	a4,s4
    80001d84:	00090693          	mv	a3,s2
    80001d88:	00098593          	mv	a1,s3
    80001d8c:	00048513          	mv	a0,s1
    80001d90:	fffff097          	auipc	ra,0xfffff
    80001d94:	5d0080e7          	jalr	1488(ra) # 80001360 <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>
}
    80001d98:	00048513          	mv	a0,s1
    80001d9c:	03813083          	ld	ra,56(sp)
    80001da0:	03013403          	ld	s0,48(sp)
    80001da4:	02813483          	ld	s1,40(sp)
    80001da8:	02013903          	ld	s2,32(sp)
    80001dac:	01813983          	ld	s3,24(sp)
    80001db0:	01013a03          	ld	s4,16(sp)
    80001db4:	00813a83          	ld	s5,8(sp)
    80001db8:	04010113          	addi	sp,sp,64
    80001dbc:	00008067          	ret

0000000080001dc0 <_Z9kmem_initPvi>:
{
    80001dc0:	fe010113          	addi	sp,sp,-32
    80001dc4:	00113c23          	sd	ra,24(sp)
    80001dc8:	00813823          	sd	s0,16(sp)
    80001dcc:	00913423          	sd	s1,8(sp)
    80001dd0:	02010413          	addi	s0,sp,32
    buddyAllocator* buddy = buddy_init(space, block_num);
    80001dd4:	00001097          	auipc	ra,0x1
    80001dd8:	3b4080e7          	jalr	948(ra) # 80003188 <_Z10buddy_initPvm>
    slabAllocator = slab_allocator_init(buddy);
    80001ddc:	fffff097          	auipc	ra,0xfffff
    80001de0:	610080e7          	jalr	1552(ra) # 800013ec <_Z19slab_allocator_initP14buddyAllocator>
    80001de4:	00007497          	auipc	s1,0x7
    80001de8:	c0c48493          	addi	s1,s1,-1012 # 800089f0 <_ZL13slabAllocator>
    80001dec:	00a4b023          	sd	a0,0(s1)
    cacheOfSlabs = kmem_cache_create("Cache of slabs", sizeof(slab_t), nullptr,nullptr);
    80001df0:	00000693          	li	a3,0
    80001df4:	00000613          	li	a2,0
    80001df8:	23000593          	li	a1,560
    80001dfc:	00006517          	auipc	a0,0x6
    80001e00:	2ac50513          	addi	a0,a0,684 # 800080a8 <CONSOLE_STATUS+0x98>
    80001e04:	00000097          	auipc	ra,0x0
    80001e08:	f18080e7          	jalr	-232(ra) # 80001d1c <_Z17kmem_cache_createPKcmPFvPvES3_>
    80001e0c:	00a4b423          	sd	a0,8(s1)
}
    80001e10:	01813083          	ld	ra,24(sp)
    80001e14:	01013403          	ld	s0,16(sp)
    80001e18:	00813483          	ld	s1,8(sp)
    80001e1c:	02010113          	addi	sp,sp,32
    80001e20:	00008067          	ret

0000000080001e24 <_Z15kmem_cache_freeP12kmem_cache_sPv>:

void kmem_cache_free(kmem_cache_t *cachep, void *objp)
{
    if(cachep == nullptr || objp == nullptr)
    80001e24:	04050663          	beqz	a0,80001e70 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x4c>
{
    80001e28:	fe010113          	addi	sp,sp,-32
    80001e2c:	00113c23          	sd	ra,24(sp)
    80001e30:	00813823          	sd	s0,16(sp)
    80001e34:	00913423          	sd	s1,8(sp)
    80001e38:	02010413          	addi	s0,sp,32
    80001e3c:	00058493          	mv	s1,a1
    if(cachep == nullptr || objp == nullptr)
    80001e40:	00058e63          	beqz	a1,80001e5c <_Z15kmem_cache_freeP12kmem_cache_sPv+0x38>
        return;
    slab_t* slab = findSlab(cachep, objp);
    80001e44:	00000097          	auipc	ra,0x0
    80001e48:	af4080e7          	jalr	-1292(ra) # 80001938 <_Z8findSlabP12kmem_cache_sPKv>
    if(slab == nullptr) return;
    80001e4c:	00050863          	beqz	a0,80001e5c <_Z15kmem_cache_freeP12kmem_cache_sPv+0x38>

    free_slab_object(slab, objp);
    80001e50:	00048593          	mv	a1,s1
    80001e54:	00000097          	auipc	ra,0x0
    80001e58:	c5c080e7          	jalr	-932(ra) # 80001ab0 <_Z16free_slab_objectP6slab_sPKv>
}
    80001e5c:	01813083          	ld	ra,24(sp)
    80001e60:	01013403          	ld	s0,16(sp)
    80001e64:	00813483          	ld	s1,8(sp)
    80001e68:	02010113          	addi	sp,sp,32
    80001e6c:	00008067          	ret
    80001e70:	00008067          	ret

0000000080001e74 <_Z15bigCacheKmallocP12kmem_cache_s>:
{
    80001e74:	fd010113          	addi	sp,sp,-48
    80001e78:	02113423          	sd	ra,40(sp)
    80001e7c:	02813023          	sd	s0,32(sp)
    80001e80:	00913c23          	sd	s1,24(sp)
    80001e84:	01213823          	sd	s2,16(sp)
    80001e88:	01313423          	sd	s3,8(sp)
    80001e8c:	03010413          	addi	s0,sp,48
    80001e90:	00050493          	mv	s1,a0
    if(cachep == nullptr)
    80001e94:	16050663          	beqz	a0,80002000 <_Z15bigCacheKmallocP12kmem_cache_s+0x18c>
    if(cachep->slabs_partial != nullptr)
    80001e98:	05053503          	ld	a0,80(a0)
    80001e9c:	04051a63          	bnez	a0,80001ef0 <_Z15bigCacheKmallocP12kmem_cache_s+0x7c>
    else if(cachep->slabs_empty != nullptr)
    80001ea0:	0404b503          	ld	a0,64(s1)
    80001ea4:	08050c63          	beqz	a0,80001f3c <_Z15bigCacheKmallocP12kmem_cache_s+0xc8>
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001ea8:	fffff097          	auipc	ra,0xfffff
    80001eac:	640080e7          	jalr	1600(ra) # 800014e8 <_Z14allocateObjectP6slab_s>
    80001eb0:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001eb4:	0404b503          	ld	a0,64(s1)
    80001eb8:	fffff097          	auipc	ra,0xfffff
    80001ebc:	710080e7          	jalr	1808(ra) # 800015c8 <_Z5emptyP6slab_s>
    80001ec0:	04051663          	bnez	a0,80001f0c <_Z15bigCacheKmallocP12kmem_cache_s+0x98>
            putEmptyToPartial(cachep);
    80001ec4:	00048513          	mv	a0,s1
    80001ec8:	00000097          	auipc	ra,0x0
    80001ecc:	808080e7          	jalr	-2040(ra) # 800016d0 <_Z17putEmptyToPartialP12kmem_cache_s>
            if(full(cachep->slabs_partial))
    80001ed0:	0504b503          	ld	a0,80(s1)
    80001ed4:	fffff097          	auipc	ra,0xfffff
    80001ed8:	6cc080e7          	jalr	1740(ra) # 800015a0 <_Z4fullP6slab_s>
    80001edc:	02050863          	beqz	a0,80001f0c <_Z15bigCacheKmallocP12kmem_cache_s+0x98>
                putPartialToFull(cachep);
    80001ee0:	00048513          	mv	a0,s1
    80001ee4:	fffff097          	auipc	ra,0xfffff
    80001ee8:	794080e7          	jalr	1940(ra) # 80001678 <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001eec:	0200006f          	j	80001f0c <_Z15bigCacheKmallocP12kmem_cache_s+0x98>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
    80001ef0:	fffff097          	auipc	ra,0xfffff
    80001ef4:	5f8080e7          	jalr	1528(ra) # 800014e8 <_Z14allocateObjectP6slab_s>
    80001ef8:	00050913          	mv	s2,a0
        if(full(cachep->slabs_partial))
    80001efc:	0504b503          	ld	a0,80(s1)
    80001f00:	fffff097          	auipc	ra,0xfffff
    80001f04:	6a0080e7          	jalr	1696(ra) # 800015a0 <_Z4fullP6slab_s>
    80001f08:	02051263          	bnez	a0,80001f2c <_Z15bigCacheKmallocP12kmem_cache_s+0xb8>
}
    80001f0c:	00090513          	mv	a0,s2
    80001f10:	02813083          	ld	ra,40(sp)
    80001f14:	02013403          	ld	s0,32(sp)
    80001f18:	01813483          	ld	s1,24(sp)
    80001f1c:	01013903          	ld	s2,16(sp)
    80001f20:	00813983          	ld	s3,8(sp)
    80001f24:	03010113          	addi	sp,sp,48
    80001f28:	00008067          	ret
            putPartialToFull(cachep);
    80001f2c:	00048513          	mv	a0,s1
    80001f30:	fffff097          	auipc	ra,0xfffff
    80001f34:	748080e7          	jalr	1864(ra) # 80001678 <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001f38:	fd5ff06f          	j	80001f0c <_Z15bigCacheKmallocP12kmem_cache_s+0x98>
        slab_t* slab = (slab_t*)kmem_cache_alloc(cacheOfSlabs);
    80001f3c:	00007517          	auipc	a0,0x7
    80001f40:	abc53503          	ld	a0,-1348(a0) # 800089f8 <_ZL12cacheOfSlabs>
    80001f44:	00000097          	auipc	ra,0x0
    80001f48:	ca0080e7          	jalr	-864(ra) # 80001be4 <_Z16kmem_cache_allocP12kmem_cache_s>
    80001f4c:	00050913          	mv	s2,a0
        if(slab == nullptr) // potencijalni EXPAND ERROR
    80001f50:	fa050ee3          	beqz	a0,80001f0c <_Z15bigCacheKmallocP12kmem_cache_s+0x98>
        slab->owner = cachep;
    80001f54:	00953823          	sd	s1,16(a0)
        slab->numOfObjects = 2;
    80001f58:	00200793          	li	a5,2
    80001f5c:	00f53c23          	sd	a5,24(a0)
        slab->numOfAllocatedObjects = 0;
    80001f60:	02053023          	sd	zero,32(a0)
        slab->allocated[0] = 0;
    80001f64:	02050823          	sb	zero,48(a0)
        void* addr = buddy_alloc(2*(cachep->obj_size / BLOCK_SIZE));
    80001f68:	0604b503          	ld	a0,96(s1)
    80001f6c:	00c55513          	srli	a0,a0,0xc
    80001f70:	00151513          	slli	a0,a0,0x1
    80001f74:	00001097          	auipc	ra,0x1
    80001f78:	014080e7          	jalr	20(ra) # 80002f88 <_Z11buddy_allocm>
    80001f7c:	00050993          	mv	s3,a0
        if(addr == nullptr)
    80001f80:	06050263          	beqz	a0,80001fe4 <_Z15bigCacheKmallocP12kmem_cache_s+0x170>
        slab->startAddr = addr;
    80001f84:	02a93423          	sd	a0,40(s2)
        insertIntoSlabList(slab, &cachep->slabs_empty);
    80001f88:	04048593          	addi	a1,s1,64
    80001f8c:	00090513          	mv	a0,s2
    80001f90:	fffff097          	auipc	ra,0xfffff
    80001f94:	658080e7          	jalr	1624(ra) # 800015e8 <_Z18insertIntoSlabListP6slab_sPS0_>
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001f98:	0404b503          	ld	a0,64(s1)
    80001f9c:	fffff097          	auipc	ra,0xfffff
    80001fa0:	54c080e7          	jalr	1356(ra) # 800014e8 <_Z14allocateObjectP6slab_s>
    80001fa4:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001fa8:	0404b503          	ld	a0,64(s1)
    80001fac:	fffff097          	auipc	ra,0xfffff
    80001fb0:	61c080e7          	jalr	1564(ra) # 800015c8 <_Z5emptyP6slab_s>
    80001fb4:	f4051ce3          	bnez	a0,80001f0c <_Z15bigCacheKmallocP12kmem_cache_s+0x98>
            putEmptyToPartial(cachep);
    80001fb8:	00048513          	mv	a0,s1
    80001fbc:	fffff097          	auipc	ra,0xfffff
    80001fc0:	714080e7          	jalr	1812(ra) # 800016d0 <_Z17putEmptyToPartialP12kmem_cache_s>
            if(full(cachep->slabs_partial))
    80001fc4:	0504b503          	ld	a0,80(s1)
    80001fc8:	fffff097          	auipc	ra,0xfffff
    80001fcc:	5d8080e7          	jalr	1496(ra) # 800015a0 <_Z4fullP6slab_s>
    80001fd0:	f2050ee3          	beqz	a0,80001f0c <_Z15bigCacheKmallocP12kmem_cache_s+0x98>
                putPartialToFull(cachep);
    80001fd4:	00048513          	mv	a0,s1
    80001fd8:	fffff097          	auipc	ra,0xfffff
    80001fdc:	6a0080e7          	jalr	1696(ra) # 80001678 <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001fe0:	f2dff06f          	j	80001f0c <_Z15bigCacheKmallocP12kmem_cache_s+0x98>
            kmem_cache_free(cacheOfSlabs, slab);
    80001fe4:	00090593          	mv	a1,s2
    80001fe8:	00007517          	auipc	a0,0x7
    80001fec:	a1053503          	ld	a0,-1520(a0) # 800089f8 <_ZL12cacheOfSlabs>
    80001ff0:	00000097          	auipc	ra,0x0
    80001ff4:	e34080e7          	jalr	-460(ra) # 80001e24 <_Z15kmem_cache_freeP12kmem_cache_sPv>
            return nullptr;
    80001ff8:	00098913          	mv	s2,s3
    80001ffc:	f11ff06f          	j	80001f0c <_Z15bigCacheKmallocP12kmem_cache_s+0x98>
        return nullptr;
    80002000:	00050913          	mv	s2,a0
    80002004:	f09ff06f          	j	80001f0c <_Z15bigCacheKmallocP12kmem_cache_s+0x98>

0000000080002008 <_Z9big_kfreeP6slab_sPKv>:
    if(slab == nullptr || objp == nullptr)
    80002008:	08050863          	beqz	a0,80002098 <_Z9big_kfreeP6slab_sPKv+0x90>
    8000200c:	08058663          	beqz	a1,80002098 <_Z9big_kfreeP6slab_sPKv+0x90>
{
    80002010:	fd010113          	addi	sp,sp,-48
    80002014:	02113423          	sd	ra,40(sp)
    80002018:	02813023          	sd	s0,32(sp)
    8000201c:	00913c23          	sd	s1,24(sp)
    80002020:	01213823          	sd	s2,16(sp)
    80002024:	01313423          	sd	s3,8(sp)
    80002028:	03010413          	addi	s0,sp,48
    kmem_cache_t* cachep = slab->owner;
    8000202c:	01053983          	ld	s3,16(a0)
    free_slab_object(slab, objp);
    80002030:	00000097          	auipc	ra,0x0
    80002034:	a80080e7          	jalr	-1408(ra) # 80001ab0 <_Z16free_slab_objectP6slab_sPKv>
    slab_t* slabE = cachep->slabs_empty;
    80002038:	0409b483          	ld	s1,64(s3)
    8000203c:	03c0006f          	j	80002078 <_Z9big_kfreeP6slab_sPKv+0x70>
        slabE = cachep->slabs_empty = slabE->next;
    80002040:	0084b903          	ld	s2,8(s1)
    80002044:	0529b023          	sd	s2,64(s3)
        buddy_free((void*)old->startAddr, 2*(cachep->obj_size / BLOCK_SIZE));
    80002048:	0609b583          	ld	a1,96(s3)
    8000204c:	00c5d593          	srli	a1,a1,0xc
    80002050:	00159593          	slli	a1,a1,0x1
    80002054:	0284b503          	ld	a0,40(s1)
    80002058:	00001097          	auipc	ra,0x1
    8000205c:	224080e7          	jalr	548(ra) # 8000327c <_Z10buddy_freePvm>
        kmem_cache_free(cacheOfSlabs, old);
    80002060:	00048593          	mv	a1,s1
    80002064:	00007517          	auipc	a0,0x7
    80002068:	99453503          	ld	a0,-1644(a0) # 800089f8 <_ZL12cacheOfSlabs>
    8000206c:	00000097          	auipc	ra,0x0
    80002070:	db8080e7          	jalr	-584(ra) # 80001e24 <_Z15kmem_cache_freeP12kmem_cache_sPv>
        slabE = cachep->slabs_empty = slabE->next;
    80002074:	00090493          	mv	s1,s2
    while(slabE != nullptr)
    80002078:	fc0494e3          	bnez	s1,80002040 <_Z9big_kfreeP6slab_sPKv+0x38>
}
    8000207c:	02813083          	ld	ra,40(sp)
    80002080:	02013403          	ld	s0,32(sp)
    80002084:	01813483          	ld	s1,24(sp)
    80002088:	01013903          	ld	s2,16(sp)
    8000208c:	00813983          	ld	s3,8(sp)
    80002090:	03010113          	addi	sp,sp,48
    80002094:	00008067          	ret
    80002098:	00008067          	ret

000000008000209c <_Z15kmem_cache_infoP12kmem_cache_s>:

//TODO what needs to be printed
void kmem_cache_info(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    8000209c:	14050c63          	beqz	a0,800021f4 <_Z15kmem_cache_infoP12kmem_cache_s+0x158>
{
    800020a0:	fe010113          	addi	sp,sp,-32
    800020a4:	00113c23          	sd	ra,24(sp)
    800020a8:	00813823          	sd	s0,16(sp)
    800020ac:	00913423          	sd	s1,8(sp)
    800020b0:	01213023          	sd	s2,0(sp)
    800020b4:	02010413          	addi	s0,sp,32
    800020b8:	00050913          	mv	s2,a0
        return;
    KConsole::trapPrintString("\n\n\n\n\n");
    800020bc:	00006517          	auipc	a0,0x6
    800020c0:	ffc50513          	addi	a0,a0,-4 # 800080b8 <CONSOLE_STATUS+0xa8>
    800020c4:	00002097          	auipc	ra,0x2
    800020c8:	864080e7          	jalr	-1948(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Kmem Cache Info-------------------------------------\n");
    800020cc:	00006517          	auipc	a0,0x6
    800020d0:	ff450513          	addi	a0,a0,-12 # 800080c0 <CONSOLE_STATUS+0xb0>
    800020d4:	00002097          	auipc	ra,0x2
    800020d8:	854080e7          	jalr	-1964(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Cache Name ");
    800020dc:	00006517          	auipc	a0,0x6
    800020e0:	01c50513          	addi	a0,a0,28 # 800080f8 <CONSOLE_STATUS+0xe8>
    800020e4:	00002097          	auipc	ra,0x2
    800020e8:	844080e7          	jalr	-1980(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString(cachep->cacheName); KConsole::trapPrintString("\n");
    800020ec:	00090513          	mv	a0,s2
    800020f0:	00002097          	auipc	ra,0x2
    800020f4:	838080e7          	jalr	-1992(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    800020f8:	00006517          	auipc	a0,0x6
    800020fc:	0a850513          	addi	a0,a0,168 # 800081a0 <CONSOLE_STATUS+0x190>
    80002100:	00002097          	auipc	ra,0x2
    80002104:	828080e7          	jalr	-2008(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Cache slab size in blocks ", cachep->slab_size);
    80002108:	00a00613          	li	a2,10
    8000210c:	05893583          	ld	a1,88(s2)
    80002110:	00006517          	auipc	a0,0x6
    80002114:	ff850513          	addi	a0,a0,-8 # 80008108 <CONSOLE_STATUS+0xf8>
    80002118:	00002097          	auipc	ra,0x2
    8000211c:	8e8080e7          	jalr	-1816(ra) # 80003a00 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Cache obj size in bytes ", cachep->obj_size);
    80002120:	00a00613          	li	a2,10
    80002124:	06093583          	ld	a1,96(s2)
    80002128:	00006517          	auipc	a0,0x6
    8000212c:	00050513          	mv	a0,a0
    80002130:	00002097          	auipc	ra,0x2
    80002134:	8d0080e7          	jalr	-1840(ra) # 80003a00 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    
    KConsole::trapPrintString("Slabs info-------------------\n");
    80002138:	00006517          	auipc	a0,0x6
    8000213c:	01050513          	addi	a0,a0,16 # 80008148 <CONSOLE_STATUS+0x138>
    80002140:	00001097          	auipc	ra,0x1
    80002144:	7e8080e7          	jalr	2024(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>

    KConsole::trapPrintString("Full slabs\n");
    80002148:	00006517          	auipc	a0,0x6
    8000214c:	02050513          	addi	a0,a0,32 # 80008168 <CONSOLE_STATUS+0x158>
    80002150:	00001097          	auipc	ra,0x1
    80002154:	7d8080e7          	jalr	2008(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    slab_t* slab = cachep->slabs_full;
    80002158:	04893483          	ld	s1,72(s2)
    while(slab != nullptr)
    8000215c:	00048c63          	beqz	s1,80002174 <_Z15kmem_cache_infoP12kmem_cache_s+0xd8>
    {
        printSlabInfo(slab);
    80002160:	00048513          	mv	a0,s1
    80002164:	00000097          	auipc	ra,0x0
    80002168:	8b0080e7          	jalr	-1872(ra) # 80001a14 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    8000216c:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80002170:	fedff06f          	j	8000215c <_Z15kmem_cache_infoP12kmem_cache_s+0xc0>
    }

    KConsole::trapPrintString("Partial slabs\n");
    80002174:	00006517          	auipc	a0,0x6
    80002178:	00450513          	addi	a0,a0,4 # 80008178 <CONSOLE_STATUS+0x168>
    8000217c:	00001097          	auipc	ra,0x1
    80002180:	7ac080e7          	jalr	1964(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_partial;
    80002184:	05093483          	ld	s1,80(s2)
    while(slab != nullptr)
    80002188:	00048c63          	beqz	s1,800021a0 <_Z15kmem_cache_infoP12kmem_cache_s+0x104>
    {
        printSlabInfo(slab);
    8000218c:	00048513          	mv	a0,s1
    80002190:	00000097          	auipc	ra,0x0
    80002194:	884080e7          	jalr	-1916(ra) # 80001a14 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80002198:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    8000219c:	fedff06f          	j	80002188 <_Z15kmem_cache_infoP12kmem_cache_s+0xec>
    }

    KConsole::trapPrintString("Empty slabs\n");
    800021a0:	00006517          	auipc	a0,0x6
    800021a4:	fe850513          	addi	a0,a0,-24 # 80008188 <CONSOLE_STATUS+0x178>
    800021a8:	00001097          	auipc	ra,0x1
    800021ac:	780080e7          	jalr	1920(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_empty;
    800021b0:	04093483          	ld	s1,64(s2)
    while(slab != nullptr)
    800021b4:	00048c63          	beqz	s1,800021cc <_Z15kmem_cache_infoP12kmem_cache_s+0x130>
    {
        printSlabInfo(slab);
    800021b8:	00048513          	mv	a0,s1
    800021bc:	00000097          	auipc	ra,0x0
    800021c0:	858080e7          	jalr	-1960(ra) # 80001a14 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    800021c4:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    800021c8:	fedff06f          	j	800021b4 <_Z15kmem_cache_infoP12kmem_cache_s+0x118>
    }

    KConsole::trapPrintString("\n\n\n\n\n");
    800021cc:	00006517          	auipc	a0,0x6
    800021d0:	eec50513          	addi	a0,a0,-276 # 800080b8 <CONSOLE_STATUS+0xa8>
    800021d4:	00001097          	auipc	ra,0x1
    800021d8:	754080e7          	jalr	1876(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
}
    800021dc:	01813083          	ld	ra,24(sp)
    800021e0:	01013403          	ld	s0,16(sp)
    800021e4:	00813483          	ld	s1,8(sp)
    800021e8:	00013903          	ld	s2,0(sp)
    800021ec:	02010113          	addi	sp,sp,32
    800021f0:	00008067          	ret
    800021f4:	00008067          	ret

00000000800021f8 <_Z22printSlabAllocatorInfov>:
{
    800021f8:	fe010113          	addi	sp,sp,-32
    800021fc:	00113c23          	sd	ra,24(sp)
    80002200:	00813823          	sd	s0,16(sp)
    80002204:	00913423          	sd	s1,8(sp)
    80002208:	02010413          	addi	s0,sp,32
    KConsole::trapPrintString("\n\n\n\n\n\n\n\n\n");
    8000220c:	00006517          	auipc	a0,0x6
    80002210:	f8c50513          	addi	a0,a0,-116 # 80008198 <CONSOLE_STATUS+0x188>
    80002214:	00001097          	auipc	ra,0x1
    80002218:	714080e7          	jalr	1812(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Slab allocator info----------------------------------------------------------\n");
    8000221c:	00006517          	auipc	a0,0x6
    80002220:	f8c50513          	addi	a0,a0,-116 # 800081a8 <CONSOLE_STATUS+0x198>
    80002224:	00001097          	auipc	ra,0x1
    80002228:	704080e7          	jalr	1796(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Slab allocator address ", (size_t)slabAllocator, 16);
    8000222c:	00006497          	auipc	s1,0x6
    80002230:	7c448493          	addi	s1,s1,1988 # 800089f0 <_ZL13slabAllocator>
    80002234:	01000613          	li	a2,16
    80002238:	0004b583          	ld	a1,0(s1)
    8000223c:	00006517          	auipc	a0,0x6
    80002240:	fbc50513          	addi	a0,a0,-68 # 800081f8 <CONSOLE_STATUS+0x1e8>
    80002244:	00001097          	auipc	ra,0x1
    80002248:	7bc080e7          	jalr	1980(ra) # 80003a00 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintString("Cache of caches info\n");
    8000224c:	00006517          	auipc	a0,0x6
    80002250:	fc450513          	addi	a0,a0,-60 # 80008210 <CONSOLE_STATUS+0x200>
    80002254:	00001097          	auipc	ra,0x1
    80002258:	6d4080e7          	jalr	1748(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    kmem_cache_info(&slabAllocator->cacheOfCaches);
    8000225c:	0004b503          	ld	a0,0(s1)
    80002260:	06850513          	addi	a0,a0,104
    80002264:	00000097          	auipc	ra,0x0
    80002268:	e38080e7          	jalr	-456(ra) # 8000209c <_Z15kmem_cache_infoP12kmem_cache_s>
    KConsole::trapPrintString("Caches for buffers\n");
    8000226c:	00006517          	auipc	a0,0x6
    80002270:	fbc50513          	addi	a0,a0,-68 # 80008228 <CONSOLE_STATUS+0x218>
    80002274:	00001097          	auipc	ra,0x1
    80002278:	6b4080e7          	jalr	1716(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    8000227c:	00000493          	li	s1,0
    80002280:	0100006f          	j	80002290 <_Z22printSlabAllocatorInfov+0x98>
            kmem_cache_info(slabAllocator->cachesBuffers[i]);
    80002284:	00000097          	auipc	ra,0x0
    80002288:	e18080e7          	jalr	-488(ra) # 8000209c <_Z15kmem_cache_infoP12kmem_cache_s>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    8000228c:	00148493          	addi	s1,s1,1
    80002290:	00c00793          	li	a5,12
    80002294:	0297e063          	bltu	a5,s1,800022b4 <_Z22printSlabAllocatorInfov+0xbc>
        if(slabAllocator->cachesBuffers[i] != nullptr)
    80002298:	00349793          	slli	a5,s1,0x3
    8000229c:	00006717          	auipc	a4,0x6
    800022a0:	75473703          	ld	a4,1876(a4) # 800089f0 <_ZL13slabAllocator>
    800022a4:	00f707b3          	add	a5,a4,a5
    800022a8:	0007b503          	ld	a0,0(a5)
    800022ac:	fc051ce3          	bnez	a0,80002284 <_Z22printSlabAllocatorInfov+0x8c>
    800022b0:	fddff06f          	j	8000228c <_Z22printSlabAllocatorInfov+0x94>
    KConsole::trapPrintString("\n\n\n\n\n\n\n\n\n");
    800022b4:	00006517          	auipc	a0,0x6
    800022b8:	ee450513          	addi	a0,a0,-284 # 80008198 <CONSOLE_STATUS+0x188>
    800022bc:	00001097          	auipc	ra,0x1
    800022c0:	66c080e7          	jalr	1644(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    printBuddyInfo();
    800022c4:	00001097          	auipc	ra,0x1
    800022c8:	028080e7          	jalr	40(ra) # 800032ec <_Z14printBuddyInfov>
}
    800022cc:	01813083          	ld	ra,24(sp)
    800022d0:	01013403          	ld	s0,16(sp)
    800022d4:	00813483          	ld	s1,8(sp)
    800022d8:	02010113          	addi	sp,sp,32
    800022dc:	00008067          	ret

00000000800022e0 <_Z7kmallocm>:

void *kmalloc(size_t size)
{
    800022e0:	fd010113          	addi	sp,sp,-48
    800022e4:	02113423          	sd	ra,40(sp)
    800022e8:	02813023          	sd	s0,32(sp)
    800022ec:	00913c23          	sd	s1,24(sp)
    800022f0:	01213823          	sd	s2,16(sp)
    800022f4:	01313423          	sd	s3,8(sp)
    800022f8:	03010413          	addi	s0,sp,48
    size_t level = getDeg2Ceil(size);
    800022fc:	00001097          	auipc	ra,0x1
    80002300:	b18080e7          	jalr	-1256(ra) # 80002e14 <_Z11getDeg2Ceilm>
    if(level < CACHE_BUFFER_SMALL)
    80002304:	00400793          	li	a5,4
    80002308:	00a7fa63          	bgeu	a5,a0,8000231c <_Z7kmallocm+0x3c>
        level = CACHE_BUFFER_SMALL;
    if(level > CACHE_BUFFER_BIG)
    8000230c:	01100793          	li	a5,17
    80002310:	00a7f863          	bgeu	a5,a0,80002320 <_Z7kmallocm+0x40>
        return nullptr;
    80002314:	00000913          	li	s2,0
    80002318:	0540006f          	j	8000236c <_Z7kmallocm+0x8c>
        level = CACHE_BUFFER_SMALL;
    8000231c:	00500513          	li	a0,5
    size = (1 << level);
    80002320:	00100693          	li	a3,1
    80002324:	00a699bb          	sllw	s3,a3,a0
    size_t index = level - CACHE_BUFFER_SMALL;
    80002328:	ffb50493          	addi	s1,a0,-5

    static size_t border = 12;
    if(level >= border)
    8000232c:	00b00793          	li	a5,11
    80002330:	0aa7fa63          	bgeu	a5,a0,800023e4 <_Z7kmallocm+0x104>
    {
        if(slabAllocator->cachesBuffers[index] == nullptr)
    80002334:	00006917          	auipc	s2,0x6
    80002338:	6bc93903          	ld	s2,1724(s2) # 800089f0 <_ZL13slabAllocator>
    8000233c:	00349793          	slli	a5,s1,0x3
    80002340:	00f907b3          	add	a5,s2,a5
    80002344:	0007b783          	ld	a5,0(a5)
    80002348:	04078263          	beqz	a5,8000238c <_Z7kmallocm+0xac>
            if(slabAllocator->cachesBuffers[index] == nullptr)
                return nullptr;
            init_cache(slabAllocator->cachesBuffers[index], "Cache for small buffers", 2*(size / BLOCK_SIZE), size, nullptr,nullptr);
        }

        return bigCacheKmalloc(slabAllocator->cachesBuffers[index]);
    8000234c:	00349493          	slli	s1,s1,0x3
    80002350:	00006797          	auipc	a5,0x6
    80002354:	6a07b783          	ld	a5,1696(a5) # 800089f0 <_ZL13slabAllocator>
    80002358:	009784b3          	add	s1,a5,s1
    8000235c:	0004b503          	ld	a0,0(s1)
    80002360:	00000097          	auipc	ra,0x0
    80002364:	b14080e7          	jalr	-1260(ra) # 80001e74 <_Z15bigCacheKmallocP12kmem_cache_s>
    80002368:	00050913          	mv	s2,a0
            return nullptr;
        init_cache(slabAllocator->cachesBuffers[index], "Cache for small buffers", getOptimalSlabSize(size), size, nullptr,nullptr);
    }

    return kmem_cache_alloc(slabAllocator->cachesBuffers[index]);
}
    8000236c:	00090513          	mv	a0,s2
    80002370:	02813083          	ld	ra,40(sp)
    80002374:	02013403          	ld	s0,32(sp)
    80002378:	01813483          	ld	s1,24(sp)
    8000237c:	01013903          	ld	s2,16(sp)
    80002380:	00813983          	ld	s3,8(sp)
    80002384:	03010113          	addi	sp,sp,48
    80002388:	00008067          	ret
            slabAllocator->cachesBuffers[index] = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    8000238c:	06890513          	addi	a0,s2,104
    80002390:	00000097          	auipc	ra,0x0
    80002394:	854080e7          	jalr	-1964(ra) # 80001be4 <_Z16kmem_cache_allocP12kmem_cache_s>
    80002398:	00349713          	slli	a4,s1,0x3
    8000239c:	00e90933          	add	s2,s2,a4
    800023a0:	00a93023          	sd	a0,0(s2)
            if(slabAllocator->cachesBuffers[index] == nullptr)
    800023a4:	00006797          	auipc	a5,0x6
    800023a8:	64c7b783          	ld	a5,1612(a5) # 800089f0 <_ZL13slabAllocator>
    800023ac:	00e787b3          	add	a5,a5,a4
    800023b0:	0007b903          	ld	s2,0(a5)
    800023b4:	fa090ce3          	beqz	s2,8000236c <_Z7kmallocm+0x8c>
            init_cache(slabAllocator->cachesBuffers[index], "Cache for small buffers", 2*(size / BLOCK_SIZE), size, nullptr,nullptr);
    800023b8:	00c9d613          	srli	a2,s3,0xc
    800023bc:	00000793          	li	a5,0
    800023c0:	00000713          	li	a4,0
    800023c4:	00098693          	mv	a3,s3
    800023c8:	00161613          	slli	a2,a2,0x1
    800023cc:	00006597          	auipc	a1,0x6
    800023d0:	e7458593          	addi	a1,a1,-396 # 80008240 <CONSOLE_STATUS+0x230>
    800023d4:	00090513          	mv	a0,s2
    800023d8:	fffff097          	auipc	ra,0xfffff
    800023dc:	f88080e7          	jalr	-120(ra) # 80001360 <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>
    800023e0:	f6dff06f          	j	8000234c <_Z7kmallocm+0x6c>
    if(slabAllocator->cachesBuffers[index] == nullptr)
    800023e4:	00006917          	auipc	s2,0x6
    800023e8:	60c93903          	ld	s2,1548(s2) # 800089f0 <_ZL13slabAllocator>
    800023ec:	00349793          	slli	a5,s1,0x3
    800023f0:	00f907b3          	add	a5,s2,a5
    800023f4:	0007b783          	ld	a5,0(a5)
    800023f8:	02078463          	beqz	a5,80002420 <_Z7kmallocm+0x140>
    return kmem_cache_alloc(slabAllocator->cachesBuffers[index]);
    800023fc:	00349493          	slli	s1,s1,0x3
    80002400:	00006797          	auipc	a5,0x6
    80002404:	5f07b783          	ld	a5,1520(a5) # 800089f0 <_ZL13slabAllocator>
    80002408:	009784b3          	add	s1,a5,s1
    8000240c:	0004b503          	ld	a0,0(s1)
    80002410:	fffff097          	auipc	ra,0xfffff
    80002414:	7d4080e7          	jalr	2004(ra) # 80001be4 <_Z16kmem_cache_allocP12kmem_cache_s>
    80002418:	00050913          	mv	s2,a0
    8000241c:	f51ff06f          	j	8000236c <_Z7kmallocm+0x8c>
        slabAllocator->cachesBuffers[index] = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    80002420:	06890513          	addi	a0,s2,104
    80002424:	fffff097          	auipc	ra,0xfffff
    80002428:	7c0080e7          	jalr	1984(ra) # 80001be4 <_Z16kmem_cache_allocP12kmem_cache_s>
    8000242c:	00349713          	slli	a4,s1,0x3
    80002430:	00e90933          	add	s2,s2,a4
    80002434:	00a93023          	sd	a0,0(s2)
        if(slabAllocator->cachesBuffers[index] == nullptr)
    80002438:	00006797          	auipc	a5,0x6
    8000243c:	5b87b783          	ld	a5,1464(a5) # 800089f0 <_ZL13slabAllocator>
    80002440:	00e787b3          	add	a5,a5,a4
    80002444:	0007b903          	ld	s2,0(a5)
    80002448:	f20902e3          	beqz	s2,8000236c <_Z7kmallocm+0x8c>
        init_cache(slabAllocator->cachesBuffers[index], "Cache for small buffers", getOptimalSlabSize(size), size, nullptr,nullptr);
    8000244c:	00098513          	mv	a0,s3
    80002450:	fffff097          	auipc	ra,0xfffff
    80002454:	470080e7          	jalr	1136(ra) # 800018c0 <_Z18getOptimalSlabSizem>
    80002458:	00050613          	mv	a2,a0
    8000245c:	00000793          	li	a5,0
    80002460:	00000713          	li	a4,0
    80002464:	00098693          	mv	a3,s3
    80002468:	00006597          	auipc	a1,0x6
    8000246c:	dd858593          	addi	a1,a1,-552 # 80008240 <CONSOLE_STATUS+0x230>
    80002470:	00090513          	mv	a0,s2
    80002474:	fffff097          	auipc	ra,0xfffff
    80002478:	eec080e7          	jalr	-276(ra) # 80001360 <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>
    8000247c:	f81ff06f          	j	800023fc <_Z7kmallocm+0x11c>

0000000080002480 <_Z5kfreePKv>:

void kfree(const void *objp)
{
    if(objp == nullptr)
    80002480:	0e050063          	beqz	a0,80002560 <_Z5kfreePKv+0xe0>
{
    80002484:	fd010113          	addi	sp,sp,-48
    80002488:	02113423          	sd	ra,40(sp)
    8000248c:	02813023          	sd	s0,32(sp)
    80002490:	00913c23          	sd	s1,24(sp)
    80002494:	01213823          	sd	s2,16(sp)
    80002498:	01313423          	sd	s3,8(sp)
    8000249c:	03010413          	addi	s0,sp,48
    800024a0:	00050993          	mv	s3,a0
        return;
    slab_t* slab = nullptr;
    int index = -1;
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    800024a4:	00000493          	li	s1,0
    slab_t* slab = nullptr;
    800024a8:	00000913          	li	s2,0
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    800024ac:	00c00793          	li	a5,12
    800024b0:	0297ee63          	bltu	a5,s1,800024ec <_Z5kfreePKv+0x6c>
    {
        slab = findSlab(slabAllocator->cachesBuffers[i], objp);
    800024b4:	00349793          	slli	a5,s1,0x3
    800024b8:	00006717          	auipc	a4,0x6
    800024bc:	53873703          	ld	a4,1336(a4) # 800089f0 <_ZL13slabAllocator>
    800024c0:	00f707b3          	add	a5,a4,a5
    800024c4:	00098593          	mv	a1,s3
    800024c8:	0007b503          	ld	a0,0(a5)
    800024cc:	fffff097          	auipc	ra,0xfffff
    800024d0:	46c080e7          	jalr	1132(ra) # 80001938 <_Z8findSlabP12kmem_cache_sPKv>
    800024d4:	00050913          	mv	s2,a0
        if(slab != nullptr)
    800024d8:	00051663          	bnez	a0,800024e4 <_Z5kfreePKv+0x64>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    800024dc:	00148493          	addi	s1,s1,1
    800024e0:	fcdff06f          	j	800024ac <_Z5kfreePKv+0x2c>
        {
            index = i;
    800024e4:	0004849b          	sext.w	s1,s1
            break;
    800024e8:	0080006f          	j	800024f0 <_Z5kfreePKv+0x70>
    int index = -1;
    800024ec:	fff00493          	li	s1,-1
        }
    }
    static size_t border = 12;
    size_t level = index + CACHE_BUFFER_SMALL;
    800024f0:	0054849b          	addiw	s1,s1,5
    if(slab != nullptr && level < border)
    800024f4:	00090663          	beqz	s2,80002500 <_Z5kfreePKv+0x80>
    800024f8:	00b00793          	li	a5,11
    800024fc:	0297f663          	bgeu	a5,s1,80002528 <_Z5kfreePKv+0xa8>
    {
        free_slab_object(slab, objp);
        destroy_slab_list(&(slab->owner->slabs_empty));
    }
    else if(slab != nullptr && level >= border)
    80002500:	00090663          	beqz	s2,8000250c <_Z5kfreePKv+0x8c>
    80002504:	00b00793          	li	a5,11
    80002508:	0497e263          	bltu	a5,s1,8000254c <_Z5kfreePKv+0xcc>
    {
        big_kfree(slab, objp);
    }
}
    8000250c:	02813083          	ld	ra,40(sp)
    80002510:	02013403          	ld	s0,32(sp)
    80002514:	01813483          	ld	s1,24(sp)
    80002518:	01013903          	ld	s2,16(sp)
    8000251c:	00813983          	ld	s3,8(sp)
    80002520:	03010113          	addi	sp,sp,48
    80002524:	00008067          	ret
        free_slab_object(slab, objp);
    80002528:	00098593          	mv	a1,s3
    8000252c:	00090513          	mv	a0,s2
    80002530:	fffff097          	auipc	ra,0xfffff
    80002534:	580080e7          	jalr	1408(ra) # 80001ab0 <_Z16free_slab_objectP6slab_sPKv>
        destroy_slab_list(&(slab->owner->slabs_empty));
    80002538:	01093503          	ld	a0,16(s2)
    8000253c:	04050513          	addi	a0,a0,64
    80002540:	fffff097          	auipc	ra,0xfffff
    80002544:	d9c080e7          	jalr	-612(ra) # 800012dc <_Z17destroy_slab_listPP6slab_s>
    80002548:	fc5ff06f          	j	8000250c <_Z5kfreePKv+0x8c>
        big_kfree(slab, objp);
    8000254c:	00098593          	mv	a1,s3
    80002550:	00090513          	mv	a0,s2
    80002554:	00000097          	auipc	ra,0x0
    80002558:	ab4080e7          	jalr	-1356(ra) # 80002008 <_Z9big_kfreeP6slab_sPKv>
    8000255c:	fb1ff06f          	j	8000250c <_Z5kfreePKv+0x8c>
    80002560:	00008067          	ret

0000000080002564 <_Z18kmem_cache_destroyP12kmem_cache_s>:

void kmem_cache_destroy(kmem_cache_t *cachep)
{
    80002564:	fe010113          	addi	sp,sp,-32
    80002568:	00113c23          	sd	ra,24(sp)
    8000256c:	00813823          	sd	s0,16(sp)
    80002570:	00913423          	sd	s1,8(sp)
    80002574:	02010413          	addi	s0,sp,32
    80002578:	00050493          	mv	s1,a0
    if(cachep->slabs_partial != nullptr || cachep->slabs_full != nullptr) {
    8000257c:	05053783          	ld	a5,80(a0)
    80002580:	02078263          	beqz	a5,800025a4 <_Z18kmem_cache_destroyP12kmem_cache_s+0x40>
        cachep->errors |= DESTROY_ERROR;
    80002584:	0784a783          	lw	a5,120(s1)
    80002588:	0027e793          	ori	a5,a5,2
    8000258c:	06f4ac23          	sw	a5,120(s1)
    }
    destroy_slab_list(&cachep->slabs_empty);
    destroy_slab_list(&cachep->slabs_partial);
    destroy_slab_list(&cachep->slabs_full);
    kmem_cache_free(&slabAllocator->cacheOfCaches,cachep);
}
    80002590:	01813083          	ld	ra,24(sp)
    80002594:	01013403          	ld	s0,16(sp)
    80002598:	00813483          	ld	s1,8(sp)
    8000259c:	02010113          	addi	sp,sp,32
    800025a0:	00008067          	ret
    if(cachep->slabs_partial != nullptr || cachep->slabs_full != nullptr) {
    800025a4:	04853783          	ld	a5,72(a0)
    800025a8:	fc079ee3          	bnez	a5,80002584 <_Z18kmem_cache_destroyP12kmem_cache_s+0x20>
    destroy_slab_list(&cachep->slabs_empty);
    800025ac:	04050513          	addi	a0,a0,64
    800025b0:	fffff097          	auipc	ra,0xfffff
    800025b4:	d2c080e7          	jalr	-724(ra) # 800012dc <_Z17destroy_slab_listPP6slab_s>
    destroy_slab_list(&cachep->slabs_partial);
    800025b8:	05048513          	addi	a0,s1,80
    800025bc:	fffff097          	auipc	ra,0xfffff
    800025c0:	d20080e7          	jalr	-736(ra) # 800012dc <_Z17destroy_slab_listPP6slab_s>
    destroy_slab_list(&cachep->slabs_full);
    800025c4:	04848513          	addi	a0,s1,72
    800025c8:	fffff097          	auipc	ra,0xfffff
    800025cc:	d14080e7          	jalr	-748(ra) # 800012dc <_Z17destroy_slab_listPP6slab_s>
    kmem_cache_free(&slabAllocator->cacheOfCaches,cachep);
    800025d0:	00048593          	mv	a1,s1
    800025d4:	00006517          	auipc	a0,0x6
    800025d8:	41c53503          	ld	a0,1052(a0) # 800089f0 <_ZL13slabAllocator>
    800025dc:	06850513          	addi	a0,a0,104
    800025e0:	00000097          	auipc	ra,0x0
    800025e4:	844080e7          	jalr	-1980(ra) # 80001e24 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    800025e8:	fa9ff06f          	j	80002590 <_Z18kmem_cache_destroyP12kmem_cache_s+0x2c>

00000000800025ec <_Z17kmem_cache_shrinkP12kmem_cache_s>:

int kmem_cache_shrink(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    800025ec:	02050863          	beqz	a0,8000261c <_Z17kmem_cache_shrinkP12kmem_cache_s+0x30>
{
    800025f0:	ff010113          	addi	sp,sp,-16
    800025f4:	00113423          	sd	ra,8(sp)
    800025f8:	00813023          	sd	s0,0(sp)
    800025fc:	01010413          	addi	s0,sp,16
        return 0;
    int totalBlocks = destroy_slab_list(&cachep->slabs_empty);
    80002600:	04050513          	addi	a0,a0,64
    80002604:	fffff097          	auipc	ra,0xfffff
    80002608:	cd8080e7          	jalr	-808(ra) # 800012dc <_Z17destroy_slab_listPP6slab_s>
    return totalBlocks;
}
    8000260c:	00813083          	ld	ra,8(sp)
    80002610:	00013403          	ld	s0,0(sp)
    80002614:	01010113          	addi	sp,sp,16
    80002618:	00008067          	ret
        return 0;
    8000261c:	00000513          	li	a0,0
}
    80002620:	00008067          	ret

0000000080002624 <_Z21shrink_caches_on_slabP6slab_s>:
{
    80002624:	fe010113          	addi	sp,sp,-32
    80002628:	00113c23          	sd	ra,24(sp)
    8000262c:	00813823          	sd	s0,16(sp)
    80002630:	00913423          	sd	s1,8(sp)
    80002634:	01213023          	sd	s2,0(sp)
    80002638:	02010413          	addi	s0,sp,32
    8000263c:	00050913          	mv	s2,a0
    for(size_t i = 0; i < slab->numOfObjects;i++)
    80002640:	00000493          	li	s1,0
    80002644:	0240006f          	j	80002668 <_Z21shrink_caches_on_slabP6slab_s+0x44>
            void* addr = (void*)((size_t)slab->startAddr + i*slab->owner->obj_size);
    80002648:	02893503          	ld	a0,40(s2)
    8000264c:	01093783          	ld	a5,16(s2)
    80002650:	0607b783          	ld	a5,96(a5)
    80002654:	029787b3          	mul	a5,a5,s1
            kmem_cache_shrink((kmem_cache_t*)addr);
    80002658:	00f50533          	add	a0,a0,a5
    8000265c:	00000097          	auipc	ra,0x0
    80002660:	f90080e7          	jalr	-112(ra) # 800025ec <_Z17kmem_cache_shrinkP12kmem_cache_s>
    for(size_t i = 0; i < slab->numOfObjects;i++)
    80002664:	00148493          	addi	s1,s1,1
    80002668:	01893783          	ld	a5,24(s2)
    8000266c:	00f4fe63          	bgeu	s1,a5,80002688 <_Z21shrink_caches_on_slabP6slab_s+0x64>
        if(checkSetIndex(slab, i))
    80002670:	0004859b          	sext.w	a1,s1
    80002674:	00090513          	mv	a0,s2
    80002678:	fffff097          	auipc	ra,0xfffff
    8000267c:	de8080e7          	jalr	-536(ra) # 80001460 <_Z13checkSetIndexP6slab_si>
    80002680:	fe0502e3          	beqz	a0,80002664 <_Z21shrink_caches_on_slabP6slab_s+0x40>
    80002684:	fc5ff06f          	j	80002648 <_Z21shrink_caches_on_slabP6slab_s+0x24>
}
    80002688:	01813083          	ld	ra,24(sp)
    8000268c:	01013403          	ld	s0,16(sp)
    80002690:	00813483          	ld	s1,8(sp)
    80002694:	00013903          	ld	s2,0(sp)
    80002698:	02010113          	addi	sp,sp,32
    8000269c:	00008067          	ret

00000000800026a0 <_Z17shrink_all_cachesv>:
{
    800026a0:	fd010113          	addi	sp,sp,-48
    800026a4:	02113423          	sd	ra,40(sp)
    800026a8:	02813023          	sd	s0,32(sp)
    800026ac:	00913c23          	sd	s1,24(sp)
    800026b0:	01213823          	sd	s2,16(sp)
    800026b4:	01313423          	sd	s3,8(sp)
    800026b8:	03010413          	addi	s0,sp,48
    kmem_cache_t* cacheOfCaches = &slabAllocator->cacheOfCaches;
    800026bc:	00006917          	auipc	s2,0x6
    800026c0:	33493903          	ld	s2,820(s2) # 800089f0 <_ZL13slabAllocator>
    800026c4:	06890993          	addi	s3,s2,104
    slab_t* slab = cacheOfCaches->slabs_full;
    800026c8:	0b093483          	ld	s1,176(s2)
    while(slab != nullptr)
    800026cc:	00048c63          	beqz	s1,800026e4 <_Z17shrink_all_cachesv+0x44>
        shrink_caches_on_slab(slab);
    800026d0:	00048513          	mv	a0,s1
    800026d4:	00000097          	auipc	ra,0x0
    800026d8:	f50080e7          	jalr	-176(ra) # 80002624 <_Z21shrink_caches_on_slabP6slab_s>
        slab = slab->next;
    800026dc:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    800026e0:	fedff06f          	j	800026cc <_Z17shrink_all_cachesv+0x2c>
    slab = cacheOfCaches->slabs_partial;
    800026e4:	0b893483          	ld	s1,184(s2)
    while(slab != nullptr)
    800026e8:	00048c63          	beqz	s1,80002700 <_Z17shrink_all_cachesv+0x60>
        shrink_caches_on_slab(slab);
    800026ec:	00048513          	mv	a0,s1
    800026f0:	00000097          	auipc	ra,0x0
    800026f4:	f34080e7          	jalr	-204(ra) # 80002624 <_Z21shrink_caches_on_slabP6slab_s>
        slab = slab->next;
    800026f8:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    800026fc:	fedff06f          	j	800026e8 <_Z17shrink_all_cachesv+0x48>
    kmem_cache_shrink(cacheOfCaches);
    80002700:	00098513          	mv	a0,s3
    80002704:	00000097          	auipc	ra,0x0
    80002708:	ee8080e7          	jalr	-280(ra) # 800025ec <_Z17kmem_cache_shrinkP12kmem_cache_s>
}
    8000270c:	02813083          	ld	ra,40(sp)
    80002710:	02013403          	ld	s0,32(sp)
    80002714:	01813483          	ld	s1,24(sp)
    80002718:	01013903          	ld	s2,16(sp)
    8000271c:	00813983          	ld	s3,8(sp)
    80002720:	03010113          	addi	sp,sp,48
    80002724:	00008067          	ret

0000000080002728 <_Z16kmem_cache_errorP12kmem_cache_s>:

int kmem_cache_error(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    80002728:	06050c63          	beqz	a0,800027a0 <_Z16kmem_cache_errorP12kmem_cache_s+0x78>
{
    8000272c:	fe010113          	addi	sp,sp,-32
    80002730:	00113c23          	sd	ra,24(sp)
    80002734:	00813823          	sd	s0,16(sp)
    80002738:	00913423          	sd	s1,8(sp)
    8000273c:	02010413          	addi	s0,sp,32
    80002740:	00050493          	mv	s1,a0
        return 0;

    if(cachep->errors & EXPAND_ERROR)
    80002744:	07852783          	lw	a5,120(a0)
    80002748:	0017f793          	andi	a5,a5,1
    8000274c:	02079663          	bnez	a5,80002778 <_Z16kmem_cache_errorP12kmem_cache_s+0x50>
        KConsole::trapPrintString("EXPAND ERROR\n");
    if(cachep->errors & DESTROY_ERROR)
    80002750:	0784a783          	lw	a5,120(s1)
    80002754:	0027f793          	andi	a5,a5,2
    80002758:	02079a63          	bnez	a5,8000278c <_Z16kmem_cache_errorP12kmem_cache_s+0x64>
        KConsole::trapPrintString("DESTROY ERROR");

    cachep->errors = NO_ERROR;
    8000275c:	0604ac23          	sw	zero,120(s1)

    return cachep->errors;
}
    80002760:	00000513          	li	a0,0
    80002764:	01813083          	ld	ra,24(sp)
    80002768:	01013403          	ld	s0,16(sp)
    8000276c:	00813483          	ld	s1,8(sp)
    80002770:	02010113          	addi	sp,sp,32
    80002774:	00008067          	ret
        KConsole::trapPrintString("EXPAND ERROR\n");
    80002778:	00006517          	auipc	a0,0x6
    8000277c:	ae050513          	addi	a0,a0,-1312 # 80008258 <CONSOLE_STATUS+0x248>
    80002780:	00001097          	auipc	ra,0x1
    80002784:	1a8080e7          	jalr	424(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    80002788:	fc9ff06f          	j	80002750 <_Z16kmem_cache_errorP12kmem_cache_s+0x28>
        KConsole::trapPrintString("DESTROY ERROR");
    8000278c:	00006517          	auipc	a0,0x6
    80002790:	adc50513          	addi	a0,a0,-1316 # 80008268 <CONSOLE_STATUS+0x258>
    80002794:	00001097          	auipc	ra,0x1
    80002798:	194080e7          	jalr	404(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    8000279c:	fc1ff06f          	j	8000275c <_Z16kmem_cache_errorP12kmem_cache_s+0x34>
}
    800027a0:	00000513          	li	a0,0
    800027a4:	00008067          	ret

00000000800027a8 <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    800027a8:	ff010113          	addi	sp,sp,-16
    800027ac:	00113423          	sd	ra,8(sp)
    800027b0:	00813023          	sd	s0,0(sp)
    800027b4:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    800027b8:	00002097          	auipc	ra,0x2
    800027bc:	8e0080e7          	jalr	-1824(ra) # 80004098 <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    800027c0:	00006797          	auipc	a5,0x6
    800027c4:	2407b783          	ld	a5,576(a5) # 80008a00 <_ZN3PCB7runningE>
    800027c8:	0287b703          	ld	a4,40(a5)
    800027cc:	0307b503          	ld	a0,48(a5)
    800027d0:	000700e7          	jalr	a4

    thread_exit_kernel();
    800027d4:	fffff097          	auipc	ra,0xfffff
    800027d8:	aac080e7          	jalr	-1364(ra) # 80001280 <_Z18thread_exit_kernelv>
}
    800027dc:	00813083          	ld	ra,8(sp)
    800027e0:	00013403          	ld	s0,0(sp)
    800027e4:	01010113          	addi	sp,sp,16
    800027e8:	00008067          	ret

00000000800027ec <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    800027ec:	ff010113          	addi	sp,sp,-16
    800027f0:	00813423          	sd	s0,8(sp)
    800027f4:	01010413          	addi	s0,sp,16
    })
    800027f8:	00050023          	sb	zero,0(a0)
    800027fc:	00e53c23          	sd	a4,24(a0)
    80002800:	02053023          	sd	zero,32(a0)
    80002804:	02b53423          	sd	a1,40(a0)
    80002808:	02c53823          	sd	a2,48(a0)
    8000280c:	02d53c23          	sd	a3,56(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    80002810:	000017b7          	lui	a5,0x1
    80002814:	00f686b3          	add	a3,a3,a5
    })
    80002818:	04d53423          	sd	a3,72(a0)
    8000281c:	00000797          	auipc	a5,0x0
    80002820:	f8c78793          	addi	a5,a5,-116 # 800027a8 <_ZN3PCB6runnerEv>
    80002824:	04f53823          	sd	a5,80(a0)
    80002828:	04050c23          	sb	zero,88(a0)
    nextPCB = 0;
    8000282c:	00053423          	sd	zero,8(a0)
}
    80002830:	00813403          	ld	s0,8(sp)
    80002834:	01010113          	addi	sp,sp,16
    80002838:	00008067          	ret

000000008000283c <_ZN3PCB5startEv>:
{
    8000283c:	ff010113          	addi	sp,sp,-16
    80002840:	00113423          	sd	ra,8(sp)
    80002844:	00813023          	sd	s0,0(sp)
    80002848:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    8000284c:	00001097          	auipc	ra,0x1
    80002850:	394080e7          	jalr	916(ra) # 80003be0 <_ZN9Scheduler3putEP3PCB>
}
    80002854:	00813083          	ld	ra,8(sp)
    80002858:	00013403          	ld	s0,0(sp)
    8000285c:	01010113          	addi	sp,sp,16
    80002860:	00008067          	ret

0000000080002864 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    80002864:	fe010113          	addi	sp,sp,-32
    80002868:	00113c23          	sd	ra,24(sp)
    8000286c:	00813823          	sd	s0,16(sp)
    80002870:	00913423          	sd	s1,8(sp)
    80002874:	01213023          	sd	s2,0(sp)
    80002878:	02010413          	addi	s0,sp,32
    PCB* old = running;
    8000287c:	00006497          	auipc	s1,0x6
    80002880:	1844b483          	ld	s1,388(s1) # 80008a00 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    80002884:	0404a703          	lw	a4,64(s1)
    if(old->getState() == PCB::RUNNING)
    80002888:	00100793          	li	a5,1
    8000288c:	04f70a63          	beq	a4,a5,800028e0 <_ZN3PCB8dispatchEv+0x7c>
        Scheduler::put(old);

    PCB::running = Scheduler::get();
    80002890:	00001097          	auipc	ra,0x1
    80002894:	3a4080e7          	jalr	932(ra) # 80003c34 <_ZN9Scheduler3getEv>
    80002898:	00006917          	auipc	s2,0x6
    8000289c:	16890913          	addi	s2,s2,360 # 80008a00 <_ZN3PCB7runningE>
    800028a0:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    800028a4:	00100793          	li	a5,1
    800028a8:	04f52023          	sw	a5,64(a0)
    PCB::running->setState(PCB::RUNNING);

    Riscv::changePrivMode();
    800028ac:	00002097          	auipc	ra,0x2
    800028b0:	dc8080e7          	jalr	-568(ra) # 80004674 <_ZN5Riscv14changePrivModeEv>

    PCB::contextSwitch(&old->context, &running->context);
    800028b4:	00093583          	ld	a1,0(s2)
    800028b8:	04858593          	addi	a1,a1,72
    800028bc:	04848513          	addi	a0,s1,72
    800028c0:	fffff097          	auipc	ra,0xfffff
    800028c4:	958080e7          	jalr	-1704(ra) # 80001218 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    800028c8:	01813083          	ld	ra,24(sp)
    800028cc:	01013403          	ld	s0,16(sp)
    800028d0:	00813483          	ld	s1,8(sp)
    800028d4:	00013903          	ld	s2,0(sp)
    800028d8:	02010113          	addi	sp,sp,32
    800028dc:	00008067          	ret
        Scheduler::put(old);
    800028e0:	00048513          	mv	a0,s1
    800028e4:	00001097          	auipc	ra,0x1
    800028e8:	2fc080e7          	jalr	764(ra) # 80003be0 <_ZN9Scheduler3putEP3PCB>
    800028ec:	fa5ff06f          	j	80002890 <_ZN3PCB8dispatchEv+0x2c>

00000000800028f0 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    800028f0:	ff010113          	addi	sp,sp,-16
    800028f4:	00113423          	sd	ra,8(sp)
    800028f8:	00813023          	sd	s0,0(sp)
    800028fc:	01010413          	addi	s0,sp,16
    return kmem_cache_alloc(Riscv::pcbCache);
    80002900:	00006797          	auipc	a5,0x6
    80002904:	0907b783          	ld	a5,144(a5) # 80008990 <_GLOBAL_OFFSET_TABLE_+0xa8>
    80002908:	0007b503          	ld	a0,0(a5)
    8000290c:	fffff097          	auipc	ra,0xfffff
    80002910:	2d8080e7          	jalr	728(ra) # 80001be4 <_Z16kmem_cache_allocP12kmem_cache_s>
    //return MemoryAllocator::kmalloc(size);
}
    80002914:	00813083          	ld	ra,8(sp)
    80002918:	00013403          	ld	s0,0(sp)
    8000291c:	01010113          	addi	sp,sp,16
    80002920:	00008067          	ret

0000000080002924 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80002924:	ff010113          	addi	sp,sp,-16
    80002928:	00113423          	sd	ra,8(sp)
    8000292c:	00813023          	sd	s0,0(sp)
    80002930:	01010413          	addi	s0,sp,16
    80002934:	00050593          	mv	a1,a0
    kmem_cache_free(Riscv::pcbCache, p);
    80002938:	00006797          	auipc	a5,0x6
    8000293c:	0587b783          	ld	a5,88(a5) # 80008990 <_GLOBAL_OFFSET_TABLE_+0xa8>
    80002940:	0007b503          	ld	a0,0(a5)
    80002944:	fffff097          	auipc	ra,0xfffff
    80002948:	4e0080e7          	jalr	1248(ra) # 80001e24 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    //MemoryAllocator::kfree(p);
}
    8000294c:	00813083          	ld	ra,8(sp)
    80002950:	00013403          	ld	s0,0(sp)
    80002954:	01010113          	addi	sp,sp,16
    80002958:	00008067          	ret

000000008000295c <_ZN3PCBD1Ev>:

PCB::~PCB()
    8000295c:	ff010113          	addi	sp,sp,-16
    80002960:	00113423          	sd	ra,8(sp)
    80002964:	00813023          	sd	s0,0(sp)
    80002968:	01010413          	addi	s0,sp,16
{
    MemoryAllocator::kfree(beginSP);
    8000296c:	03853503          	ld	a0,56(a0)
    80002970:	00002097          	auipc	ra,0x2
    80002974:	470080e7          	jalr	1136(ra) # 80004de0 <_ZN15MemoryAllocator5kfreeEPv>
}
    80002978:	00813083          	ld	ra,8(sp)
    8000297c:	00013403          	ld	s0,0(sp)
    80002980:	01010113          	addi	sp,sp,16
    80002984:	00008067          	ret

0000000080002988 <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    80002988:	fe010113          	addi	sp,sp,-32
    8000298c:	00113c23          	sd	ra,24(sp)
    80002990:	00813823          	sd	s0,16(sp)
    80002994:	00913423          	sd	s1,8(sp)
    80002998:	01213023          	sd	s2,0(sp)
    8000299c:	02010413          	addi	s0,sp,32
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    800029a0:	06000513          	li	a0,96
    800029a4:	00000097          	auipc	ra,0x0
    800029a8:	f4c080e7          	jalr	-180(ra) # 800028f0 <_ZN3PCBnwEm>
    800029ac:	00050493          	mv	s1,a0
    800029b0:	00050e63          	beqz	a0,800029cc <_ZN3PCB10initializeEv+0x44>
    800029b4:	00000713          	li	a4,0
    800029b8:	00000693          	li	a3,0
    800029bc:	00000613          	li	a2,0
    800029c0:	00000593          	li	a1,0
    800029c4:	00000097          	auipc	ra,0x0
    800029c8:	e28080e7          	jalr	-472(ra) # 800027ec <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->systemThread = true;
    800029cc:	00100793          	li	a5,1
    800029d0:	00f48023          	sb	a5,0(s1)
    PCB::running = mainSystem;
    800029d4:	00006797          	auipc	a5,0x6
    800029d8:	0297b623          	sd	s1,44(a5) # 80008a00 <_ZN3PCB7runningE>
    800029dc:	00100793          	li	a5,1
    800029e0:	04f4a023          	sw	a5,64(s1)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0,
                              kmalloc(DEFAULT_STACK_SIZE),
    800029e4:	00001537          	lui	a0,0x1
    800029e8:	00000097          	auipc	ra,0x0
    800029ec:	8f8080e7          	jalr	-1800(ra) # 800022e0 <_Z7kmallocm>
    800029f0:	00050913          	mv	s2,a0
//                              MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE),
                              DEFAULT_TIME_SLICE);
    800029f4:	06000513          	li	a0,96
    800029f8:	00000097          	auipc	ra,0x0
    800029fc:	ef8080e7          	jalr	-264(ra) # 800028f0 <_ZN3PCBnwEm>
    80002a00:	00050493          	mv	s1,a0
    80002a04:	02050063          	beqz	a0,80002a24 <_ZN3PCB10initializeEv+0x9c>
    80002a08:	00200713          	li	a4,2
    80002a0c:	00090693          	mv	a3,s2
    80002a10:	00000613          	li	a2,0
    80002a14:	00006597          	auipc	a1,0x6
    80002a18:	f3c5b583          	ld	a1,-196(a1) # 80008950 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002a1c:	00000097          	auipc	ra,0x0
    80002a20:	dd0080e7          	jalr	-560(ra) # 800027ec <_ZN3PCBC1EPFvPvES0_S0_m>
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0,
    80002a24:	00006797          	auipc	a5,0x6
    80002a28:	fdc78793          	addi	a5,a5,-36 # 80008a00 <_ZN3PCB7runningE>
    80002a2c:	0097b423          	sd	s1,8(a5)
    PCB::consolePCB->systemThread = true;
    80002a30:	00100713          	li	a4,1
    80002a34:	00e48023          	sb	a4,0(s1)
    PCB::consolePCB->start();
    80002a38:	0087b503          	ld	a0,8(a5)
    80002a3c:	00000097          	auipc	ra,0x0
    80002a40:	e00080e7          	jalr	-512(ra) # 8000283c <_ZN3PCB5startEv>
    PCB::userPCB = new PCB(&PCBWrapperUser::userMainWrapper, 0,
//                           kmalloc(DEFAULT_STACK_SIZE),
                           MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE),
    80002a44:	00001537          	lui	a0,0x1
    80002a48:	00002097          	auipc	ra,0x2
    80002a4c:	328080e7          	jalr	808(ra) # 80004d70 <_ZN15MemoryAllocator7kmallocEm>
    80002a50:	00050913          	mv	s2,a0
                           DEFAULT_TIME_SLICE);
    80002a54:	06000513          	li	a0,96
    80002a58:	00000097          	auipc	ra,0x0
    80002a5c:	e98080e7          	jalr	-360(ra) # 800028f0 <_ZN3PCBnwEm>
    80002a60:	00050493          	mv	s1,a0
    80002a64:	02050063          	beqz	a0,80002a84 <_ZN3PCB10initializeEv+0xfc>
    80002a68:	00200713          	li	a4,2
    80002a6c:	00090693          	mv	a3,s2
    80002a70:	00000613          	li	a2,0
    80002a74:	00006597          	auipc	a1,0x6
    80002a78:	ee45b583          	ld	a1,-284(a1) # 80008958 <_GLOBAL_OFFSET_TABLE_+0x70>
    80002a7c:	00000097          	auipc	ra,0x0
    80002a80:	d70080e7          	jalr	-656(ra) # 800027ec <_ZN3PCBC1EPFvPvES0_S0_m>
    PCB::userPCB = new PCB(&PCBWrapperUser::userMainWrapper, 0,
    80002a84:	00006797          	auipc	a5,0x6
    80002a88:	f897b623          	sd	s1,-116(a5) # 80008a10 <_ZN3PCB7userPCBE>
    PCB::userPCB->start();
    80002a8c:	00048513          	mv	a0,s1
    80002a90:	00000097          	auipc	ra,0x0
    80002a94:	dac080e7          	jalr	-596(ra) # 8000283c <_ZN3PCB5startEv>
}
    80002a98:	01813083          	ld	ra,24(sp)
    80002a9c:	01013403          	ld	s0,16(sp)
    80002aa0:	00813483          	ld	s1,8(sp)
    80002aa4:	00013903          	ld	s2,0(sp)
    80002aa8:	02010113          	addi	sp,sp,32
    80002aac:	00008067          	ret

0000000080002ab0 <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    80002ab0:	ff010113          	addi	sp,sp,-16
    80002ab4:	00813423          	sd	s0,8(sp)
    80002ab8:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    80002abc:	04052503          	lw	a0,64(a0) # 1040 <_entry-0x7fffefc0>
    80002ac0:	ffd50513          	addi	a0,a0,-3
}
    80002ac4:	00153513          	seqz	a0,a0
    80002ac8:	00813403          	ld	s0,8(sp)
    80002acc:	01010113          	addi	sp,sp,16
    80002ad0:	00008067          	ret

0000000080002ad4 <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    80002ad4:	ff010113          	addi	sp,sp,-16
    80002ad8:	00113423          	sd	ra,8(sp)
    80002adc:	00813023          	sd	s0,0(sp)
    80002ae0:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    80002ae4:	00006797          	auipc	a5,0x6
    80002ae8:	f1c78793          	addi	a5,a5,-228 # 80008a00 <_ZN3PCB7runningE>
    80002aec:	0007bc23          	sd	zero,24(a5)
    PCB::running->setState(PCB::FINISHED);
    80002af0:	0007b783          	ld	a5,0(a5)
    80002af4:	00300713          	li	a4,3
    80002af8:	04e7a023          	sw	a4,64(a5)
    PCB::dispatch();
    80002afc:	00000097          	auipc	ra,0x0
    80002b00:	d68080e7          	jalr	-664(ra) # 80002864 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    80002b04:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002b08:	00002097          	auipc	ra,0x2
    80002b0c:	b34080e7          	jalr	-1228(ra) # 8000463c <_ZN5Riscv13w_a0_sscratchEv>
}
    80002b10:	00813083          	ld	ra,8(sp)
    80002b14:	00013403          	ld	s0,0(sp)
    80002b18:	01010113          	addi	sp,sp,16
    80002b1c:	00008067          	ret

0000000080002b20 <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    80002b20:	ff010113          	addi	sp,sp,-16
    80002b24:	00113423          	sd	ra,8(sp)
    80002b28:	00813023          	sd	s0,0(sp)
    80002b2c:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    80002b30:	00006797          	auipc	a5,0x6
    80002b34:	ee07b423          	sd	zero,-280(a5) # 80008a18 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    80002b38:	00000097          	auipc	ra,0x0
    80002b3c:	d2c080e7          	jalr	-724(ra) # 80002864 <_ZN3PCB8dispatchEv>
}
    80002b40:	00813083          	ld	ra,8(sp)
    80002b44:	00013403          	ld	s0,0(sp)
    80002b48:	01010113          	addi	sp,sp,16
    80002b4c:	00008067          	ret

0000000080002b50 <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    80002b50:	ff010113          	addi	sp,sp,-16
    80002b54:	00113423          	sd	ra,8(sp)
    80002b58:	00813023          	sd	s0,0(sp)
    80002b5c:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80002b60:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    80002b64:	00006717          	auipc	a4,0x6
    80002b68:	e9c70713          	addi	a4,a4,-356 # 80008a00 <_ZN3PCB7runningE>
    80002b6c:	00073c23          	sd	zero,24(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    80002b70:	00073703          	ld	a4,0(a4)
    80002b74:	00006697          	auipc	a3,0x6
    80002b78:	dd46b683          	ld	a3,-556(a3) # 80008948 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002b7c:	0006b683          	ld	a3,0(a3)
    80002b80:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002b84:	02f73023          	sd	a5,32(a4)
    SleepPCBList::insertSleepingPCB();
    80002b88:	00001097          	auipc	ra,0x1
    80002b8c:	edc080e7          	jalr	-292(ra) # 80003a64 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    80002b90:	00000097          	auipc	ra,0x0
    80002b94:	cd4080e7          	jalr	-812(ra) # 80002864 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    80002b98:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002b9c:	00002097          	auipc	ra,0x2
    80002ba0:	aa0080e7          	jalr	-1376(ra) # 8000463c <_ZN5Riscv13w_a0_sscratchEv>
}
    80002ba4:	00813083          	ld	ra,8(sp)
    80002ba8:	00013403          	ld	s0,0(sp)
    80002bac:	01010113          	addi	sp,sp,16
    80002bb0:	00008067          	ret

0000000080002bb4 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    80002bb4:	fd010113          	addi	sp,sp,-48
    80002bb8:	02113423          	sd	ra,40(sp)
    80002bbc:	02813023          	sd	s0,32(sp)
    80002bc0:	00913c23          	sd	s1,24(sp)
    80002bc4:	01213823          	sd	s2,16(sp)
    80002bc8:	01313423          	sd	s3,8(sp)
    80002bcc:	01413023          	sd	s4,0(sp)
    80002bd0:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002bd4:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002bd8:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002bdc:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args,
                          //stack_space,
                          (void *) PCB::savedRegA4,
                          DEFAULT_TIME_SLICE);
    80002be0:	06000513          	li	a0,96
    80002be4:	00000097          	auipc	ra,0x0
    80002be8:	d0c080e7          	jalr	-756(ra) # 800028f0 <_ZN3PCBnwEm>
    80002bec:	00050493          	mv	s1,a0
    80002bf0:	02050063          	beqz	a0,80002c10 <_ZN3PCB19threadCreateHandlerEv+0x5c>
    80002bf4:	00200713          	li	a4,2
    80002bf8:	00006697          	auipc	a3,0x6
    80002bfc:	e286b683          	ld	a3,-472(a3) # 80008a20 <_ZN3PCB10savedRegA4E>
    80002c00:	000a0613          	mv	a2,s4
    80002c04:	00098593          	mv	a1,s3
    80002c08:	00000097          	auipc	ra,0x0
    80002c0c:	be4080e7          	jalr	-1052(ra) # 800027ec <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002c10:	00993023          	sd	s1,0(s2)

    if (newPCB == nullptr) {
    80002c14:	02048e63          	beqz	s1,80002c50 <_ZN3PCB19threadCreateHandlerEv+0x9c>
        __asm__ volatile("li a0, 0x01");
    }
    else
    {
        newPCB->start();
    80002c18:	00048513          	mv	a0,s1
    80002c1c:	00000097          	auipc	ra,0x0
    80002c20:	c20080e7          	jalr	-992(ra) # 8000283c <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002c24:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80002c28:	00002097          	auipc	ra,0x2
    80002c2c:	a14080e7          	jalr	-1516(ra) # 8000463c <_ZN5Riscv13w_a0_sscratchEv>
}
    80002c30:	02813083          	ld	ra,40(sp)
    80002c34:	02013403          	ld	s0,32(sp)
    80002c38:	01813483          	ld	s1,24(sp)
    80002c3c:	01013903          	ld	s2,16(sp)
    80002c40:	00813983          	ld	s3,8(sp)
    80002c44:	00013a03          	ld	s4,0(sp)
    80002c48:	03010113          	addi	sp,sp,48
    80002c4c:	00008067          	ret
        __asm__ volatile("li a0, 0x01");
    80002c50:	00100513          	li	a0,1
    80002c54:	fd5ff06f          	j	80002c28 <_ZN3PCB19threadCreateHandlerEv+0x74>

0000000080002c58 <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    80002c58:	ff010113          	addi	sp,sp,-16
    80002c5c:	00113423          	sd	ra,8(sp)
    80002c60:	00813023          	sd	s0,0(sp)
    80002c64:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002c68:	00058513          	mv	a0,a1
    if(pcb != nullptr)
    80002c6c:	02050463          	beqz	a0,80002c94 <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    80002c70:	00000097          	auipc	ra,0x0
    80002c74:	bcc080e7          	jalr	-1076(ra) # 8000283c <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002c78:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x01");
    }
    Riscv::w_a0_sscratch();
    80002c7c:	00002097          	auipc	ra,0x2
    80002c80:	9c0080e7          	jalr	-1600(ra) # 8000463c <_ZN5Riscv13w_a0_sscratchEv>
}
    80002c84:	00813083          	ld	ra,8(sp)
    80002c88:	00013403          	ld	s0,0(sp)
    80002c8c:	01010113          	addi	sp,sp,16
    80002c90:	00008067          	ret
        __asm__ volatile("li a0, 0x01");
    80002c94:	00100513          	li	a0,1
    80002c98:	fe5ff06f          	j	80002c7c <_ZN3PCB18threadStartHandlerEv+0x24>

0000000080002c9c <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80002c9c:	fd010113          	addi	sp,sp,-48
    80002ca0:	02113423          	sd	ra,40(sp)
    80002ca4:	02813023          	sd	s0,32(sp)
    80002ca8:	00913c23          	sd	s1,24(sp)
    80002cac:	01213823          	sd	s2,16(sp)
    80002cb0:	01313423          	sd	s3,8(sp)
    80002cb4:	01413023          	sd	s4,0(sp)
    80002cb8:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002cbc:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002cc0:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002cc4:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args,
                          //stack_space,
                          (void *) PCB::savedRegA4,
                          DEFAULT_TIME_SLICE);
    80002cc8:	06000513          	li	a0,96
    80002ccc:	00000097          	auipc	ra,0x0
    80002cd0:	c24080e7          	jalr	-988(ra) # 800028f0 <_ZN3PCBnwEm>
    80002cd4:	00050493          	mv	s1,a0
    80002cd8:	02050063          	beqz	a0,80002cf8 <_ZN3PCB20threadMakePCBHandlerEv+0x5c>
    80002cdc:	00200713          	li	a4,2
    80002ce0:	00006697          	auipc	a3,0x6
    80002ce4:	d406b683          	ld	a3,-704(a3) # 80008a20 <_ZN3PCB10savedRegA4E>
    80002ce8:	000a0613          	mv	a2,s4
    80002cec:	00098593          	mv	a1,s3
    80002cf0:	00000097          	auipc	ra,0x0
    80002cf4:	afc080e7          	jalr	-1284(ra) # 800027ec <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002cf8:	00993023          	sd	s1,0(s2)

    if (newPCB == nullptr)
    80002cfc:	02048863          	beqz	s1,80002d2c <_ZN3PCB20threadMakePCBHandlerEv+0x90>
    {
        __asm__ volatile("li a0, 0x01");
    }
    else
        __asm__ volatile("li a0, 0");
    80002d00:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002d04:	00002097          	auipc	ra,0x2
    80002d08:	938080e7          	jalr	-1736(ra) # 8000463c <_ZN5Riscv13w_a0_sscratchEv>
}
    80002d0c:	02813083          	ld	ra,40(sp)
    80002d10:	02013403          	ld	s0,32(sp)
    80002d14:	01813483          	ld	s1,24(sp)
    80002d18:	01013903          	ld	s2,16(sp)
    80002d1c:	00813983          	ld	s3,8(sp)
    80002d20:	00013a03          	ld	s4,0(sp)
    80002d24:	03010113          	addi	sp,sp,48
    80002d28:	00008067          	ret
        __asm__ volatile("li a0, 0x01");
    80002d2c:	00100513          	li	a0,1
    80002d30:	fd5ff06f          	j	80002d04 <_ZN3PCB20threadMakePCBHandlerEv+0x68>

0000000080002d34 <_ZN3PCB19threadDelPCBHandlerEv>:

void PCB::threadDelPCBHandler()
{
    80002d34:	fe010113          	addi	sp,sp,-32
    80002d38:	00113c23          	sd	ra,24(sp)
    80002d3c:	00813823          	sd	s0,16(sp)
    80002d40:	00913423          	sd	s1,8(sp)
    80002d44:	02010413          	addi	s0,sp,32
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002d48:	00058493          	mv	s1,a1
    if(pcb != nullptr)
    80002d4c:	02048e63          	beqz	s1,80002d88 <_ZN3PCB19threadDelPCBHandlerEv+0x54>
    {
        delete pcb;
    80002d50:	00048513          	mv	a0,s1
    80002d54:	00000097          	auipc	ra,0x0
    80002d58:	c08080e7          	jalr	-1016(ra) # 8000295c <_ZN3PCBD1Ev>
    80002d5c:	00048513          	mv	a0,s1
    80002d60:	00000097          	auipc	ra,0x0
    80002d64:	bc4080e7          	jalr	-1084(ra) # 80002924 <_ZN3PCBdlEPv>
        __asm__ volatile("li a0, 0x0");
    80002d68:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x1");
    }
    Riscv::w_a0_sscratch();
    80002d6c:	00002097          	auipc	ra,0x2
    80002d70:	8d0080e7          	jalr	-1840(ra) # 8000463c <_ZN5Riscv13w_a0_sscratchEv>
}
    80002d74:	01813083          	ld	ra,24(sp)
    80002d78:	01013403          	ld	s0,16(sp)
    80002d7c:	00813483          	ld	s1,8(sp)
    80002d80:	02010113          	addi	sp,sp,32
    80002d84:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80002d88:	00100513          	li	a0,1
    80002d8c:	fe1ff06f          	j	80002d6c <_ZN3PCB19threadDelPCBHandlerEv+0x38>

0000000080002d90 <_Z12getBlockAddrm>:
    addBlocks(addr, level); //adds free blocks
    buddy->numOfFreeBlocks += (1 << level);
}

size_t getBlockAddr(size_t addr)
{
    80002d90:	ff010113          	addi	sp,sp,-16
    80002d94:	00813423          	sd	s0,8(sp)
    80002d98:	01010413          	addi	s0,sp,16
    size_t mask = ((size_t)-1) << BLOCK_SIZE_POWER_2;
    return addr & mask;
}
    80002d9c:	fffff7b7          	lui	a5,0xfffff
    80002da0:	00f57533          	and	a0,a0,a5
    80002da4:	00813403          	ld	s0,8(sp)
    80002da8:	01010113          	addi	sp,sp,16
    80002dac:	00008067          	ret

0000000080002db0 <_Z16getNextBlockAddrm>:
size_t getNextBlockAddr(size_t addr)
{
    80002db0:	ff010113          	addi	sp,sp,-16
    80002db4:	00113423          	sd	ra,8(sp)
    80002db8:	00813023          	sd	s0,0(sp)
    80002dbc:	01010413          	addi	s0,sp,16
    size_t currBlock = getBlockAddr(addr);
    80002dc0:	00000097          	auipc	ra,0x0
    80002dc4:	fd0080e7          	jalr	-48(ra) # 80002d90 <_Z12getBlockAddrm>
    return currBlock + BLOCK_SIZE;
}
    80002dc8:	000017b7          	lui	a5,0x1
    80002dcc:	00f50533          	add	a0,a0,a5
    80002dd0:	00813083          	ld	ra,8(sp)
    80002dd4:	00013403          	ld	s0,0(sp)
    80002dd8:	01010113          	addi	sp,sp,16
    80002ddc:	00008067          	ret

0000000080002de0 <_Z12getDeg2Floorm>:

size_t getDeg2Floor(size_t num)
{
    80002de0:	ff010113          	addi	sp,sp,-16
    80002de4:	00813423          	sd	s0,8(sp)
    80002de8:	01010413          	addi	s0,sp,16
    size_t x = 1;
    size_t deg = 0;
    80002dec:	00000713          	li	a4,0
    size_t x = 1;
    80002df0:	00100793          	li	a5,1
    while(x <= num)
    80002df4:	00f56863          	bltu	a0,a5,80002e04 <_Z12getDeg2Floorm+0x24>
    {
        deg++;
    80002df8:	00170713          	addi	a4,a4,1
        x<<=1;
    80002dfc:	00179793          	slli	a5,a5,0x1
    while(x <= num)
    80002e00:	ff5ff06f          	j	80002df4 <_Z12getDeg2Floorm+0x14>
    }
    return deg - 1;
}
    80002e04:	fff70513          	addi	a0,a4,-1
    80002e08:	00813403          	ld	s0,8(sp)
    80002e0c:	01010113          	addi	sp,sp,16
    80002e10:	00008067          	ret

0000000080002e14 <_Z11getDeg2Ceilm>:

size_t getDeg2Ceil(size_t num)
{
    80002e14:	ff010113          	addi	sp,sp,-16
    80002e18:	00813423          	sd	s0,8(sp)
    80002e1c:	01010413          	addi	s0,sp,16
    80002e20:	00050713          	mv	a4,a0
    size_t x = 1;
    size_t deg = 0;
    80002e24:	00000513          	li	a0,0
    size_t x = 1;
    80002e28:	00100793          	li	a5,1
    while(x < num)
    80002e2c:	00e7f863          	bgeu	a5,a4,80002e3c <_Z11getDeg2Ceilm+0x28>
    {
        deg++;
    80002e30:	00150513          	addi	a0,a0,1
        x<<=1;
    80002e34:	00179793          	slli	a5,a5,0x1
    while(x < num)
    80002e38:	ff5ff06f          	j	80002e2c <_Z11getDeg2Ceilm+0x18>
    }
    return deg;
}
    80002e3c:	00813403          	ld	s0,8(sp)
    80002e40:	01010113          	addi	sp,sp,16
    80002e44:	00008067          	ret

0000000080002e48 <_Z15addBlockToLevelPvm>:
    addBlockToLevel(addr, level);
}

//adds free block to level
void addBlockToLevel(void* addr, size_t level)
{
    80002e48:	ff010113          	addi	sp,sp,-16
    80002e4c:	00813423          	sd	s0,8(sp)
    80002e50:	01010413          	addi	s0,sp,16
    buddyBlock* newBlock = (buddyBlock*)addr;
    newBlock->next = nullptr;
    80002e54:	00053023          	sd	zero,0(a0)
    if(buddy->bucket[level].first == nullptr)
    80002e58:	00006717          	auipc	a4,0x6
    80002e5c:	bd073703          	ld	a4,-1072(a4) # 80008a28 <_ZL5buddy>
    80002e60:	00258793          	addi	a5,a1,2
    80002e64:	00479793          	slli	a5,a5,0x4
    80002e68:	00f707b3          	add	a5,a4,a5
    80002e6c:	0007b783          	ld	a5,0(a5) # 1000 <_entry-0x7ffff000>
    80002e70:	02078463          	beqz	a5,80002e98 <_Z15addBlockToLevelPvm+0x50>
    {
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    }
    else
    {
        buddy->bucket[level].last->next = newBlock;
    80002e74:	00258593          	addi	a1,a1,2
    80002e78:	00459593          	slli	a1,a1,0x4
    80002e7c:	00b705b3          	add	a1,a4,a1
    80002e80:	0085b783          	ld	a5,8(a1)
    80002e84:	00a7b023          	sd	a0,0(a5)
        buddy->bucket[level].last = newBlock;
    80002e88:	00a5b423          	sd	a0,8(a1)
    }
}
    80002e8c:	00813403          	ld	s0,8(sp)
    80002e90:	01010113          	addi	sp,sp,16
    80002e94:	00008067          	ret
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    80002e98:	00258593          	addi	a1,a1,2
    80002e9c:	00459793          	slli	a5,a1,0x4
    80002ea0:	00f707b3          	add	a5,a4,a5
    80002ea4:	00a7b423          	sd	a0,8(a5)
    80002ea8:	00a7b023          	sd	a0,0(a5)
    80002eac:	fe1ff06f          	j	80002e8c <_Z15addBlockToLevelPvm+0x44>

0000000080002eb0 <_Z17getBuddyBlockAddrPvm>:

size_t getBuddyBlockAddr(void* addr, size_t level)
{
    80002eb0:	ff010113          	addi	sp,sp,-16
    80002eb4:	00813423          	sd	s0,8(sp)
    80002eb8:	01010413          	addi	s0,sp,16
    size_t diff = BLOCK_SIZE << level;
    80002ebc:	000017b7          	lui	a5,0x1
    80002ec0:	00b795bb          	sllw	a1,a5,a1
    size_t off = (size_t)addr - (size_t)buddy->startAddr;
    80002ec4:	00006797          	auipc	a5,0x6
    80002ec8:	b647b783          	ld	a5,-1180(a5) # 80008a28 <_ZL5buddy>
    80002ecc:	0087b783          	ld	a5,8(a5)
    80002ed0:	40f507b3          	sub	a5,a0,a5
    if(diff & off)
    80002ed4:	00f5f7b3          	and	a5,a1,a5
    80002ed8:	00078a63          	beqz	a5,80002eec <_Z17getBuddyBlockAddrPvm+0x3c>
        return (size_t)addr - diff;
    80002edc:	40b50533          	sub	a0,a0,a1
    else
        return (size_t)addr + diff;
}
    80002ee0:	00813403          	ld	s0,8(sp)
    80002ee4:	01010113          	addi	sp,sp,16
    80002ee8:	00008067          	ret
        return (size_t)addr + diff;
    80002eec:	00b50533          	add	a0,a0,a1
    80002ef0:	ff1ff06f          	j	80002ee0 <_Z17getBuddyBlockAddrPvm+0x30>

0000000080002ef4 <_Z5splitPvmmb>:
{
    80002ef4:	fd010113          	addi	sp,sp,-48
    80002ef8:	02113423          	sd	ra,40(sp)
    80002efc:	02813023          	sd	s0,32(sp)
    80002f00:	00913c23          	sd	s1,24(sp)
    80002f04:	01213823          	sd	s2,16(sp)
    80002f08:	01313423          	sd	s3,8(sp)
    80002f0c:	03010413          	addi	s0,sp,48
    80002f10:	00050993          	mv	s3,a0
    if(!splitMore)
    80002f14:	06068263          	beqz	a3,80002f78 <_Z5splitPvmmb+0x84>
    80002f18:	00058913          	mv	s2,a1
        if(currLevel == finalLevel)
    80002f1c:	04b60063          	beq	a2,a1,80002f5c <_Z5splitPvmmb+0x68>
        size_t buddyBlock = getBuddyBlockAddr(addr, currLevel - 1); // currLevel - 1 for next step
    80002f20:	fff60493          	addi	s1,a2,-1
    80002f24:	00048593          	mv	a1,s1
    80002f28:	00000097          	auipc	ra,0x0
    80002f2c:	f88080e7          	jalr	-120(ra) # 80002eb0 <_Z17getBuddyBlockAddrPvm>
        split((void*)buddyBlock, finalLevel, currLevel - 1, false); // continue splitting
    80002f30:	00000693          	li	a3,0
    80002f34:	00048613          	mv	a2,s1
    80002f38:	00090593          	mv	a1,s2
    80002f3c:	00000097          	auipc	ra,0x0
    80002f40:	fb8080e7          	jalr	-72(ra) # 80002ef4 <_Z5splitPvmmb>
        split(addr, finalLevel, currLevel - 1, true); // continue splitting
    80002f44:	00100693          	li	a3,1
    80002f48:	00048613          	mv	a2,s1
    80002f4c:	00090593          	mv	a1,s2
    80002f50:	00098513          	mv	a0,s3
    80002f54:	00000097          	auipc	ra,0x0
    80002f58:	fa0080e7          	jalr	-96(ra) # 80002ef4 <_Z5splitPvmmb>
}
    80002f5c:	02813083          	ld	ra,40(sp)
    80002f60:	02013403          	ld	s0,32(sp)
    80002f64:	01813483          	ld	s1,24(sp)
    80002f68:	01013903          	ld	s2,16(sp)
    80002f6c:	00813983          	ld	s3,8(sp)
    80002f70:	03010113          	addi	sp,sp,48
    80002f74:	00008067          	ret
        addBlockToLevel(addr, currLevel);
    80002f78:	00060593          	mv	a1,a2
    80002f7c:	00000097          	auipc	ra,0x0
    80002f80:	ecc080e7          	jalr	-308(ra) # 80002e48 <_Z15addBlockToLevelPvm>
    80002f84:	fd9ff06f          	j	80002f5c <_Z5splitPvmmb+0x68>

0000000080002f88 <_Z11buddy_allocm>:
{
    80002f88:	fe010113          	addi	sp,sp,-32
    80002f8c:	00113c23          	sd	ra,24(sp)
    80002f90:	00813823          	sd	s0,16(sp)
    80002f94:	00913423          	sd	s1,8(sp)
    80002f98:	01213023          	sd	s2,0(sp)
    80002f9c:	02010413          	addi	s0,sp,32
    size_t level = getDeg2Ceil(numOfBlocks);
    80002fa0:	00000097          	auipc	ra,0x0
    80002fa4:	e74080e7          	jalr	-396(ra) # 80002e14 <_Z11getDeg2Ceilm>
    80002fa8:	00050913          	mv	s2,a0
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002fac:	00050613          	mv	a2,a0
    80002fb0:	00006717          	auipc	a4,0x6
    80002fb4:	a7873703          	ld	a4,-1416(a4) # 80008a28 <_ZL5buddy>
    80002fb8:	01873783          	ld	a5,24(a4)
    80002fbc:	08c7e063          	bltu	a5,a2,8000303c <_Z11buddy_allocm+0xb4>
        if(buddy->bucket[i].first != nullptr)
    80002fc0:	00260793          	addi	a5,a2,2
    80002fc4:	00479793          	slli	a5,a5,0x4
    80002fc8:	00f707b3          	add	a5,a4,a5
    80002fcc:	0007b483          	ld	s1,0(a5)
    80002fd0:	00049663          	bnez	s1,80002fdc <_Z11buddy_allocm+0x54>
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002fd4:	00160613          	addi	a2,a2,1
    80002fd8:	fd9ff06f          	j	80002fb0 <_Z11buddy_allocm+0x28>
            buddy->bucket[i].first = ret->next;
    80002fdc:	0004b683          	ld	a3,0(s1)
    80002fe0:	00260793          	addi	a5,a2,2
    80002fe4:	00479793          	slli	a5,a5,0x4
    80002fe8:	00f707b3          	add	a5,a4,a5
    80002fec:	00d7b023          	sd	a3,0(a5)
            if(buddy->bucket[i].first == nullptr)
    80002ff0:	02068c63          	beqz	a3,80003028 <_Z11buddy_allocm+0xa0>
            split((void*)ret, level, i, true);
    80002ff4:	00100693          	li	a3,1
    80002ff8:	00090593          	mv	a1,s2
    80002ffc:	00048513          	mv	a0,s1
    80003000:	00000097          	auipc	ra,0x0
    80003004:	ef4080e7          	jalr	-268(ra) # 80002ef4 <_Z5splitPvmmb>
            buddy->numOfFreeBlocks-= (1 << level);
    80003008:	00006797          	auipc	a5,0x6
    8000300c:	a207b783          	ld	a5,-1504(a5) # 80008a28 <_ZL5buddy>
    80003010:	00100513          	li	a0,1
    80003014:	0125153b          	sllw	a0,a0,s2
    80003018:	0107b903          	ld	s2,16(a5)
    8000301c:	40a90933          	sub	s2,s2,a0
    80003020:	0127b823          	sd	s2,16(a5)
            return ret;
    80003024:	01c0006f          	j	80003040 <_Z11buddy_allocm+0xb8>
                buddy->bucket[i].last = nullptr;
    80003028:	00260793          	addi	a5,a2,2
    8000302c:	00479793          	slli	a5,a5,0x4
    80003030:	00f70733          	add	a4,a4,a5
    80003034:	00073423          	sd	zero,8(a4)
    80003038:	fbdff06f          	j	80002ff4 <_Z11buddy_allocm+0x6c>
    return nullptr;
    8000303c:	00000493          	li	s1,0
}
    80003040:	00048513          	mv	a0,s1
    80003044:	01813083          	ld	ra,24(sp)
    80003048:	01013403          	ld	s0,16(sp)
    8000304c:	00813483          	ld	s1,8(sp)
    80003050:	00013903          	ld	s2,0(sp)
    80003054:	02010113          	addi	sp,sp,32
    80003058:	00008067          	ret

000000008000305c <_Z9addBlocksPvm>:
{
    8000305c:	fd010113          	addi	sp,sp,-48
    80003060:	02113423          	sd	ra,40(sp)
    80003064:	02813023          	sd	s0,32(sp)
    80003068:	00913c23          	sd	s1,24(sp)
    8000306c:	01213823          	sd	s2,16(sp)
    80003070:	01313423          	sd	s3,8(sp)
    80003074:	03010413          	addi	s0,sp,48
    80003078:	00050913          	mv	s2,a0
    8000307c:	00058493          	mv	s1,a1
    if(level == buddy->maxLevel)
    80003080:	00006997          	auipc	s3,0x6
    80003084:	9a89b983          	ld	s3,-1624(s3) # 80008a28 <_ZL5buddy>
    80003088:	0189b783          	ld	a5,24(s3)
    8000308c:	02b78a63          	beq	a5,a1,800030c0 <_Z9addBlocksPvm+0x64>
    size_t buddyBlockAddr = getBuddyBlockAddr(addr,level);
    80003090:	00000097          	auipc	ra,0x0
    80003094:	e20080e7          	jalr	-480(ra) # 80002eb0 <_Z17getBuddyBlockAddrPvm>
    buddyBlock* curr = buddy->bucket[level].first;
    80003098:	00248793          	addi	a5,s1,2
    8000309c:	00479793          	slli	a5,a5,0x4
    800030a0:	00f987b3          	add	a5,s3,a5
    800030a4:	0007b783          	ld	a5,0(a5)
    buddyBlock* prev = nullptr;
    800030a8:	00000713          	li	a4,0
    while(curr != nullptr)
    800030ac:	0a078863          	beqz	a5,8000315c <_Z9addBlocksPvm+0x100>
        if((size_t)curr == buddyBlockAddr)
    800030b0:	00a78e63          	beq	a5,a0,800030cc <_Z9addBlocksPvm+0x70>
        prev = curr;
    800030b4:	00078713          	mv	a4,a5
        curr = curr->next;
    800030b8:	0007b783          	ld	a5,0(a5)
    while(curr != nullptr)
    800030bc:	ff1ff06f          	j	800030ac <_Z9addBlocksPvm+0x50>
        addBlockToLevel(addr, level);
    800030c0:	00000097          	auipc	ra,0x0
    800030c4:	d88080e7          	jalr	-632(ra) # 80002e48 <_Z15addBlockToLevelPvm>
        return;
    800030c8:	0a40006f          	j	8000316c <_Z9addBlocksPvm+0x110>
            if(prev != nullptr)
    800030cc:	04070663          	beqz	a4,80003118 <_Z9addBlocksPvm+0xbc>
                prev->next = curr->next;
    800030d0:	0007b683          	ld	a3,0(a5)
    800030d4:	00d73023          	sd	a3,0(a4)
                if(curr == buddy->bucket[level].last)
    800030d8:	00248693          	addi	a3,s1,2
    800030dc:	00469693          	slli	a3,a3,0x4
    800030e0:	00d986b3          	add	a3,s3,a3
    800030e4:	0086b683          	ld	a3,8(a3)
    800030e8:	00f68e63          	beq	a3,a5,80003104 <_Z9addBlocksPvm+0xa8>
            if((size_t)addr < buddyBlockAddr) addBlocks(addr, level + 1); //merge two chunks
    800030ec:	06a97063          	bgeu	s2,a0,8000314c <_Z9addBlocksPvm+0xf0>
    800030f0:	00148593          	addi	a1,s1,1
    800030f4:	00090513          	mv	a0,s2
    800030f8:	00000097          	auipc	ra,0x0
    800030fc:	f64080e7          	jalr	-156(ra) # 8000305c <_Z9addBlocksPvm>
    80003100:	06c0006f          	j	8000316c <_Z9addBlocksPvm+0x110>
                    buddy->bucket[level].last = prev;
    80003104:	00248793          	addi	a5,s1,2
    80003108:	00479793          	slli	a5,a5,0x4
    8000310c:	00f989b3          	add	s3,s3,a5
    80003110:	00e9b423          	sd	a4,8(s3)
    80003114:	fd9ff06f          	j	800030ec <_Z9addBlocksPvm+0x90>
                if(curr->next == nullptr)
    80003118:	0007b783          	ld	a5,0(a5)
    8000311c:	00078c63          	beqz	a5,80003134 <_Z9addBlocksPvm+0xd8>
                    buddy->bucket[level].first = curr->next;
    80003120:	00248713          	addi	a4,s1,2
    80003124:	00471713          	slli	a4,a4,0x4
    80003128:	00e989b3          	add	s3,s3,a4
    8000312c:	00f9b023          	sd	a5,0(s3)
    80003130:	fbdff06f          	j	800030ec <_Z9addBlocksPvm+0x90>
                    buddy->bucket[level].first = buddy->bucket[level].last = nullptr;
    80003134:	00248793          	addi	a5,s1,2
    80003138:	00479793          	slli	a5,a5,0x4
    8000313c:	00f989b3          	add	s3,s3,a5
    80003140:	0009b423          	sd	zero,8(s3)
    80003144:	0009b023          	sd	zero,0(s3)
    80003148:	fa5ff06f          	j	800030ec <_Z9addBlocksPvm+0x90>
            else addBlocks((void*)buddyBlockAddr, level + 1); //merge two chunks
    8000314c:	00148593          	addi	a1,s1,1
    80003150:	00000097          	auipc	ra,0x0
    80003154:	f0c080e7          	jalr	-244(ra) # 8000305c <_Z9addBlocksPvm>
            return;
    80003158:	0140006f          	j	8000316c <_Z9addBlocksPvm+0x110>
    addBlockToLevel(addr, level);
    8000315c:	00048593          	mv	a1,s1
    80003160:	00090513          	mv	a0,s2
    80003164:	00000097          	auipc	ra,0x0
    80003168:	ce4080e7          	jalr	-796(ra) # 80002e48 <_Z15addBlockToLevelPvm>
}
    8000316c:	02813083          	ld	ra,40(sp)
    80003170:	02013403          	ld	s0,32(sp)
    80003174:	01813483          	ld	s1,24(sp)
    80003178:	01013903          	ld	s2,16(sp)
    8000317c:	00813983          	ld	s3,8(sp)
    80003180:	03010113          	addi	sp,sp,48
    80003184:	00008067          	ret

0000000080003188 <_Z10buddy_initPvm>:
{
    80003188:	fd010113          	addi	sp,sp,-48
    8000318c:	02113423          	sd	ra,40(sp)
    80003190:	02813023          	sd	s0,32(sp)
    80003194:	00913c23          	sd	s1,24(sp)
    80003198:	01213823          	sd	s2,16(sp)
    8000319c:	01313423          	sd	s3,8(sp)
    800031a0:	03010413          	addi	s0,sp,48
    800031a4:	00058913          	mv	s2,a1
    size_t blockAddr = getBlockAddr((size_t)addr); //alling the address
    800031a8:	00050993          	mv	s3,a0
    800031ac:	00000097          	auipc	ra,0x0
    800031b0:	be4080e7          	jalr	-1052(ra) # 80002d90 <_Z12getBlockAddrm>
    if((size_t)addr != blockAddr) // if start address not aligned
    800031b4:	00a98a63          	beq	s3,a0,800031c8 <_Z10buddy_initPvm+0x40>
        buddyAddr = getNextBlockAddr(blockAddr);
    800031b8:	00000097          	auipc	ra,0x0
    800031bc:	bf8080e7          	jalr	-1032(ra) # 80002db0 <_Z16getNextBlockAddrm>
    800031c0:	00050993          	mv	s3,a0
        numOfBlocks--; //have to discard one block
    800031c4:	fff90913          	addi	s2,s2,-1
    numOfBlocks--; // take one block for buddy metadata
    800031c8:	fff90913          	addi	s2,s2,-1
    buddy = (buddyAllocator*)buddyAddr;
    800031cc:	00098493          	mv	s1,s3
    800031d0:	00006797          	auipc	a5,0x6
    800031d4:	8537bc23          	sd	s3,-1960(a5) # 80008a28 <_ZL5buddy>
    buddy->startAddr = (void*)getNextBlockAddr(buddyAddr);
    800031d8:	00098513          	mv	a0,s3
    800031dc:	00000097          	auipc	ra,0x0
    800031e0:	bd4080e7          	jalr	-1068(ra) # 80002db0 <_Z16getNextBlockAddrm>
    800031e4:	00a9b423          	sd	a0,8(s3)
    buddy->numOfBlocks = numOfBlocks;
    800031e8:	0129b023          	sd	s2,0(s3)
    buddy->numOfFreeBlocks = numOfBlocks;
    800031ec:	0129b823          	sd	s2,16(s3)
    buddy->maxLevel = getDeg2Floor(numOfBlocks);
    800031f0:	00090513          	mv	a0,s2
    800031f4:	00000097          	auipc	ra,0x0
    800031f8:	bec080e7          	jalr	-1044(ra) # 80002de0 <_Z12getDeg2Floorm>
    800031fc:	00a9bc23          	sd	a0,24(s3)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    80003200:	00000713          	li	a4,0
    80003204:	0184b783          	ld	a5,24(s1)
    80003208:	02e7e063          	bltu	a5,a4,80003228 <_Z10buddy_initPvm+0xa0>
        buddy->bucket[i].first = buddy->bucket[i].last = nullptr;
    8000320c:	00270793          	addi	a5,a4,2
    80003210:	00479793          	slli	a5,a5,0x4
    80003214:	00f487b3          	add	a5,s1,a5
    80003218:	0007b423          	sd	zero,8(a5)
    8000321c:	0007b023          	sd	zero,0(a5)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    80003220:	00170713          	addi	a4,a4,1
    80003224:	fe1ff06f          	j	80003204 <_Z10buddy_initPvm+0x7c>
    for(size_t i = 0;i < numOfBlocks;i++)
    80003228:	00000493          	li	s1,0
    8000322c:	0324f663          	bgeu	s1,s2,80003258 <_Z10buddy_initPvm+0xd0>
        addBlocks((block*)buddy->startAddr + i, 0);
    80003230:	00005797          	auipc	a5,0x5
    80003234:	7f87b783          	ld	a5,2040(a5) # 80008a28 <_ZL5buddy>
    80003238:	0087b503          	ld	a0,8(a5)
    8000323c:	00c49793          	slli	a5,s1,0xc
    80003240:	00000593          	li	a1,0
    80003244:	00f50533          	add	a0,a0,a5
    80003248:	00000097          	auipc	ra,0x0
    8000324c:	e14080e7          	jalr	-492(ra) # 8000305c <_Z9addBlocksPvm>
    for(size_t i = 0;i < numOfBlocks;i++)
    80003250:	00148493          	addi	s1,s1,1
    80003254:	fd9ff06f          	j	8000322c <_Z10buddy_initPvm+0xa4>
}
    80003258:	00005517          	auipc	a0,0x5
    8000325c:	7d053503          	ld	a0,2000(a0) # 80008a28 <_ZL5buddy>
    80003260:	02813083          	ld	ra,40(sp)
    80003264:	02013403          	ld	s0,32(sp)
    80003268:	01813483          	ld	s1,24(sp)
    8000326c:	01013903          	ld	s2,16(sp)
    80003270:	00813983          	ld	s3,8(sp)
    80003274:	03010113          	addi	sp,sp,48
    80003278:	00008067          	ret

000000008000327c <_Z10buddy_freePvm>:
{
    8000327c:	fe010113          	addi	sp,sp,-32
    80003280:	00113c23          	sd	ra,24(sp)
    80003284:	00813823          	sd	s0,16(sp)
    80003288:	00913423          	sd	s1,8(sp)
    8000328c:	01213023          	sd	s2,0(sp)
    80003290:	02010413          	addi	s0,sp,32
    80003294:	00050913          	mv	s2,a0
    size_t level = getDeg2Ceil(numOfBlocks);
    80003298:	00058513          	mv	a0,a1
    8000329c:	00000097          	auipc	ra,0x0
    800032a0:	b78080e7          	jalr	-1160(ra) # 80002e14 <_Z11getDeg2Ceilm>
    800032a4:	00050493          	mv	s1,a0
    addBlocks(addr, level); //adds free blocks
    800032a8:	00050593          	mv	a1,a0
    800032ac:	00090513          	mv	a0,s2
    800032b0:	00000097          	auipc	ra,0x0
    800032b4:	dac080e7          	jalr	-596(ra) # 8000305c <_Z9addBlocksPvm>
    buddy->numOfFreeBlocks += (1 << level);
    800032b8:	00005797          	auipc	a5,0x5
    800032bc:	7707b783          	ld	a5,1904(a5) # 80008a28 <_ZL5buddy>
    800032c0:	00100513          	li	a0,1
    800032c4:	0095153b          	sllw	a0,a0,s1
    800032c8:	0107b483          	ld	s1,16(a5)
    800032cc:	00a484b3          	add	s1,s1,a0
    800032d0:	0097b823          	sd	s1,16(a5)
}
    800032d4:	01813083          	ld	ra,24(sp)
    800032d8:	01013403          	ld	s0,16(sp)
    800032dc:	00813483          	ld	s1,8(sp)
    800032e0:	00013903          	ld	s2,0(sp)
    800032e4:	02010113          	addi	sp,sp,32
    800032e8:	00008067          	ret

00000000800032ec <_Z14printBuddyInfov>:

void printBuddyInfo()
{
    800032ec:	fe010113          	addi	sp,sp,-32
    800032f0:	00113c23          	sd	ra,24(sp)
    800032f4:	00813823          	sd	s0,16(sp)
    800032f8:	00913423          	sd	s1,8(sp)
    800032fc:	01213023          	sd	s2,0(sp)
    80003300:	02010413          	addi	s0,sp,32
    KConsole::trapPrintString("Buddy info-------------------------------------------\n");
    80003304:	00005517          	auipc	a0,0x5
    80003308:	f7450513          	addi	a0,a0,-140 # 80008278 <CONSOLE_STATUS+0x268>
    8000330c:	00000097          	auipc	ra,0x0
    80003310:	61c080e7          	jalr	1564(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Buddy starting address ", (size_t)buddy->startAddr, 16);
    80003314:	00005497          	auipc	s1,0x5
    80003318:	71448493          	addi	s1,s1,1812 # 80008a28 <_ZL5buddy>
    8000331c:	0004b783          	ld	a5,0(s1)
    80003320:	01000613          	li	a2,16
    80003324:	0087b583          	ld	a1,8(a5)
    80003328:	00005517          	auipc	a0,0x5
    8000332c:	f8850513          	addi	a0,a0,-120 # 800082b0 <CONSOLE_STATUS+0x2a0>
    80003330:	00000097          	auipc	ra,0x0
    80003334:	6d0080e7          	jalr	1744(ra) # 80003a00 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Buddy number of blocks ", buddy->numOfBlocks);
    80003338:	0004b783          	ld	a5,0(s1)
    8000333c:	00a00613          	li	a2,10
    80003340:	0007b583          	ld	a1,0(a5)
    80003344:	00005517          	auipc	a0,0x5
    80003348:	f8450513          	addi	a0,a0,-124 # 800082c8 <CONSOLE_STATUS+0x2b8>
    8000334c:	00000097          	auipc	ra,0x0
    80003350:	6b4080e7          	jalr	1716(ra) # 80003a00 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Buddy number of free blocks ", buddy->numOfFreeBlocks);
    80003354:	0004b783          	ld	a5,0(s1)
    80003358:	00a00613          	li	a2,10
    8000335c:	0107b583          	ld	a1,16(a5)
    80003360:	00005517          	auipc	a0,0x5
    80003364:	f8050513          	addi	a0,a0,-128 # 800082e0 <CONSOLE_STATUS+0x2d0>
    80003368:	00000097          	auipc	ra,0x0
    8000336c:	698080e7          	jalr	1688(ra) # 80003a00 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    for(int i = buddy->maxLevel;i>=0;i--)
    80003370:	0004b783          	ld	a5,0(s1)
    80003374:	0187a903          	lw	s2,24(a5)
    80003378:	0080006f          	j	80003380 <_Z14printBuddyInfov+0x94>
    8000337c:	fff9091b          	addiw	s2,s2,-1
    80003380:	06094a63          	bltz	s2,800033f4 <_Z14printBuddyInfov+0x108>
    {
        KConsole::trapPrintStringInt("Level ",i);
    80003384:	00a00613          	li	a2,10
    80003388:	00090593          	mv	a1,s2
    8000338c:	00005517          	auipc	a0,0x5
    80003390:	f7450513          	addi	a0,a0,-140 # 80008300 <CONSOLE_STATUS+0x2f0>
    80003394:	00000097          	auipc	ra,0x0
    80003398:	66c080e7          	jalr	1644(ra) # 80003a00 <_ZN8KConsole18trapPrintStringIntEPKcmi>
        KConsole::trapPrintString("Free blocks on this level\n");
    8000339c:	00005517          	auipc	a0,0x5
    800033a0:	f6c50513          	addi	a0,a0,-148 # 80008308 <CONSOLE_STATUS+0x2f8>
    800033a4:	00000097          	auipc	ra,0x0
    800033a8:	584080e7          	jalr	1412(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
        buddyBlock* curr = buddy->bucket[i].first;
    800033ac:	00290793          	addi	a5,s2,2
    800033b0:	00479713          	slli	a4,a5,0x4
    800033b4:	00005797          	auipc	a5,0x5
    800033b8:	6747b783          	ld	a5,1652(a5) # 80008a28 <_ZL5buddy>
    800033bc:	00e787b3          	add	a5,a5,a4
    800033c0:	0007b483          	ld	s1,0(a5)
        while(curr != 0)
    800033c4:	fa048ce3          	beqz	s1,8000337c <_Z14printBuddyInfov+0x90>
        {
            KConsole::trapPrintInt((size_t)curr, 16);
    800033c8:	00000613          	li	a2,0
    800033cc:	01000593          	li	a1,16
    800033d0:	00048513          	mv	a0,s1
    800033d4:	00000097          	auipc	ra,0x0
    800033d8:	598080e7          	jalr	1432(ra) # 8000396c <_ZN8KConsole12trapPrintIntEmii>
            KConsole::trapPrintString("\n");
    800033dc:	00005517          	auipc	a0,0x5
    800033e0:	dc450513          	addi	a0,a0,-572 # 800081a0 <CONSOLE_STATUS+0x190>
    800033e4:	00000097          	auipc	ra,0x0
    800033e8:	544080e7          	jalr	1348(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
            curr = curr->next;
    800033ec:	0004b483          	ld	s1,0(s1)
        while(curr != 0)
    800033f0:	fd5ff06f          	j	800033c4 <_Z14printBuddyInfov+0xd8>
        }
    }
    KConsole::trapPrintString("End of buddy info-------------------------------------------\n");
    800033f4:	00005517          	auipc	a0,0x5
    800033f8:	f3450513          	addi	a0,a0,-204 # 80008328 <CONSOLE_STATUS+0x318>
    800033fc:	00000097          	auipc	ra,0x0
    80003400:	52c080e7          	jalr	1324(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
}
    80003404:	01813083          	ld	ra,24(sp)
    80003408:	01013403          	ld	s0,16(sp)
    8000340c:	00813483          	ld	s1,8(sp)
    80003410:	00013903          	ld	s2,0(sp)
    80003414:	02010113          	addi	sp,sp,32
    80003418:	00008067          	ret

000000008000341c <_Z8getBuddyv>:

void* getBuddy()
{
    8000341c:	ff010113          	addi	sp,sp,-16
    80003420:	00813423          	sd	s0,8(sp)
    80003424:	01010413          	addi	s0,sp,16
    return (void*)buddy;
    80003428:	00005517          	auipc	a0,0x5
    8000342c:	60053503          	ld	a0,1536(a0) # 80008a28 <_ZL5buddy>
    80003430:	00813403          	ld	s0,8(sp)
    80003434:	01010113          	addi	sp,sp,16
    80003438:	00008067          	ret

000000008000343c <_ZN8KConsole10initializeEv>:
char* KConsole::outputBuffer = nullptr;
uint64 KConsole::pendingPutc = 0;
bool KConsole::finished = false;

void KConsole::initialize()
{
    8000343c:	fe010113          	addi	sp,sp,-32
    80003440:	00113c23          	sd	ra,24(sp)
    80003444:	00813823          	sd	s0,16(sp)
    80003448:	00913423          	sd	s1,8(sp)
    8000344c:	01213023          	sd	s2,0(sp)
    80003450:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80003454:	01800513          	li	a0,24
    80003458:	00002097          	auipc	ra,0x2
    8000345c:	348080e7          	jalr	840(ra) # 800057a0 <_ZN10KSemaphorenwEm>
    80003460:	00050493          	mv	s1,a0
    80003464:	00050863          	beqz	a0,80003474 <_ZN8KConsole10initializeEv+0x38>
    80003468:	00000593          	li	a1,0
    8000346c:	00002097          	auipc	ra,0x2
    80003470:	0d0080e7          	jalr	208(ra) # 8000553c <_ZN10KSemaphoreC1Ei>
    80003474:	00005797          	auipc	a5,0x5
    80003478:	5a97be23          	sd	s1,1468(a5) # 80008a30 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    8000347c:	01800513          	li	a0,24
    80003480:	00002097          	auipc	ra,0x2
    80003484:	320080e7          	jalr	800(ra) # 800057a0 <_ZN10KSemaphorenwEm>
    80003488:	00050493          	mv	s1,a0
    8000348c:	00050863          	beqz	a0,8000349c <_ZN8KConsole10initializeEv+0x60>
    80003490:	00000593          	li	a1,0
    80003494:	00002097          	auipc	ra,0x2
    80003498:	0a8080e7          	jalr	168(ra) # 8000553c <_ZN10KSemaphoreC1Ei>
    8000349c:	00005917          	auipc	s2,0x5
    800034a0:	59490913          	addi	s2,s2,1428 # 80008a30 <_ZN8KConsole18hasCharactersInputE>
    800034a4:	00993423          	sd	s1,8(s2)
    inputBuffer = (char*)kmalloc(bufferSize);
    800034a8:	00004537          	lui	a0,0x4
    800034ac:	fffff097          	auipc	ra,0xfffff
    800034b0:	e34080e7          	jalr	-460(ra) # 800022e0 <_Z7kmallocm>
    800034b4:	00a93823          	sd	a0,16(s2)
    outputBuffer = (char*)kmalloc(bufferSize);
    800034b8:	00004537          	lui	a0,0x4
    800034bc:	fffff097          	auipc	ra,0xfffff
    800034c0:	e24080e7          	jalr	-476(ra) # 800022e0 <_Z7kmallocm>
    800034c4:	00a93c23          	sd	a0,24(s2)
}
    800034c8:	01813083          	ld	ra,24(sp)
    800034cc:	01013403          	ld	s0,16(sp)
    800034d0:	00813483          	ld	s1,8(sp)
    800034d4:	00013903          	ld	s2,0(sp)
    800034d8:	02010113          	addi	sp,sp,32
    800034dc:	00008067          	ret
    800034e0:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    800034e4:	00048513          	mv	a0,s1
    800034e8:	00002097          	auipc	ra,0x2
    800034ec:	368080e7          	jalr	872(ra) # 80005850 <_ZN10KSemaphoredlEPv>
    800034f0:	00090513          	mv	a0,s2
    800034f4:	00006097          	auipc	ra,0x6
    800034f8:	6c4080e7          	jalr	1732(ra) # 80009bb8 <_Unwind_Resume>
    800034fc:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80003500:	00048513          	mv	a0,s1
    80003504:	00002097          	auipc	ra,0x2
    80003508:	34c080e7          	jalr	844(ra) # 80005850 <_ZN10KSemaphoredlEPv>
    8000350c:	00090513          	mv	a0,s2
    80003510:	00006097          	auipc	ra,0x6
    80003514:	6a8080e7          	jalr	1704(ra) # 80009bb8 <_Unwind_Resume>

0000000080003518 <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    80003518:	00005697          	auipc	a3,0x5
    8000351c:	51868693          	addi	a3,a3,1304 # 80008a30 <_ZN8KConsole18hasCharactersInputE>
    80003520:	0206b603          	ld	a2,32(a3)
    80003524:	00160793          	addi	a5,a2,1
    80003528:	00004737          	lui	a4,0x4
    8000352c:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    80003530:	00e7f7b3          	and	a5,a5,a4
    80003534:	0286b703          	ld	a4,40(a3)
    80003538:	04e78c63          	beq	a5,a4,80003590 <_ZN8KConsole17putCharacterInputEc+0x78>
{
    8000353c:	ff010113          	addi	sp,sp,-16
    80003540:	00113423          	sd	ra,8(sp)
    80003544:	00813023          	sd	s0,0(sp)
    80003548:	01010413          	addi	s0,sp,16
        return;
    inputBuffer[inputTail] = c;
    8000354c:	00068713          	mv	a4,a3
    80003550:	0106b783          	ld	a5,16(a3)
    80003554:	00c78633          	add	a2,a5,a2
    80003558:	00a60023          	sb	a0,0(a2)
    inputTail = (inputTail+1)%bufferSize;
    8000355c:	0206b783          	ld	a5,32(a3)
    80003560:	00178793          	addi	a5,a5,1
    80003564:	000046b7          	lui	a3,0x4
    80003568:	fff68693          	addi	a3,a3,-1 # 3fff <_entry-0x7fffc001>
    8000356c:	00d7f7b3          	and	a5,a5,a3
    80003570:	02f73023          	sd	a5,32(a4)
    hasCharactersInput->signal();
    80003574:	00073503          	ld	a0,0(a4)
    80003578:	00002097          	auipc	ra,0x2
    8000357c:	1e0080e7          	jalr	480(ra) # 80005758 <_ZN10KSemaphore6signalEv>
}
    80003580:	00813083          	ld	ra,8(sp)
    80003584:	00013403          	ld	s0,0(sp)
    80003588:	01010113          	addi	sp,sp,16
    8000358c:	00008067          	ret
    80003590:	00008067          	ret

0000000080003594 <_ZN8KConsole24getCharactersFromConsoleEv>:
    uint64 operation = *(uint8*)CONSOLE_STATUS;
    80003594:	00005797          	auipc	a5,0x5
    80003598:	3647b783          	ld	a5,868(a5) # 800088f8 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000359c:	0007b783          	ld	a5,0(a5)
    800035a0:	0007c783          	lbu	a5,0(a5)
    if(operation & KConsole::STATUS_READ_MASK)
    800035a4:	0017f793          	andi	a5,a5,1
    800035a8:	02078063          	beqz	a5,800035c8 <_ZN8KConsole24getCharactersFromConsoleEv+0x34>
        char c = *(uint8*)CONSOLE_TX_DATA;
    800035ac:	00005797          	auipc	a5,0x5
    800035b0:	3847b783          	ld	a5,900(a5) # 80008930 <_GLOBAL_OFFSET_TABLE_+0x48>
    800035b4:	0007b783          	ld	a5,0(a5)
    800035b8:	0007c503          	lbu	a0,0(a5)
        if(KConsole::pendingGetc > 0)
    800035bc:	00005797          	auipc	a5,0x5
    800035c0:	4a47b783          	ld	a5,1188(a5) # 80008a60 <_ZN8KConsole11pendingGetcE>
    800035c4:	00079463          	bnez	a5,800035cc <_ZN8KConsole24getCharactersFromConsoleEv+0x38>
    800035c8:	00008067          	ret
{
    800035cc:	ff010113          	addi	sp,sp,-16
    800035d0:	00113423          	sd	ra,8(sp)
    800035d4:	00813023          	sd	s0,0(sp)
    800035d8:	01010413          	addi	s0,sp,16
            KConsole::pendingGetc--;
    800035dc:	fff78793          	addi	a5,a5,-1
    800035e0:	00005717          	auipc	a4,0x5
    800035e4:	48f73023          	sd	a5,1152(a4) # 80008a60 <_ZN8KConsole11pendingGetcE>
            KConsole::putCharacterInput(c);
    800035e8:	00000097          	auipc	ra,0x0
    800035ec:	f30080e7          	jalr	-208(ra) # 80003518 <_ZN8KConsole17putCharacterInputEc>
}
    800035f0:	00813083          	ld	ra,8(sp)
    800035f4:	00013403          	ld	s0,0(sp)
    800035f8:	01010113          	addi	sp,sp,16
    800035fc:	00008067          	ret

0000000080003600 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80003600:	fe010113          	addi	sp,sp,-32
    80003604:	00113c23          	sd	ra,24(sp)
    80003608:	00813823          	sd	s0,16(sp)
    8000360c:	00913423          	sd	s1,8(sp)
    80003610:	02010413          	addi	s0,sp,32
    hasCharactersInput->wait();
    80003614:	00005497          	auipc	s1,0x5
    80003618:	41c48493          	addi	s1,s1,1052 # 80008a30 <_ZN8KConsole18hasCharactersInputE>
    8000361c:	0004b503          	ld	a0,0(s1)
    80003620:	00002097          	auipc	ra,0x2
    80003624:	fc0080e7          	jalr	-64(ra) # 800055e0 <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    80003628:	0284b783          	ld	a5,40(s1)
    8000362c:	0204b703          	ld	a4,32(s1)
    80003630:	02e78c63          	beq	a5,a4,80003668 <_ZN8KConsole17getCharacterInputEv+0x68>
        return -1;
    char c = inputBuffer[inputHead];
    80003634:	0104b703          	ld	a4,16(s1)
    80003638:	00f70733          	add	a4,a4,a5
    8000363c:	00074503          	lbu	a0,0(a4)
    inputHead = (inputHead+1)%bufferSize;
    80003640:	00178793          	addi	a5,a5,1
    80003644:	00004737          	lui	a4,0x4
    80003648:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    8000364c:	00e7f7b3          	and	a5,a5,a4
    80003650:	02f4b423          	sd	a5,40(s1)
    return c;
}
    80003654:	01813083          	ld	ra,24(sp)
    80003658:	01013403          	ld	s0,16(sp)
    8000365c:	00813483          	ld	s1,8(sp)
    80003660:	02010113          	addi	sp,sp,32
    80003664:	00008067          	ret
        return -1;
    80003668:	0ff00513          	li	a0,255
    8000366c:	fe9ff06f          	j	80003654 <_ZN8KConsole17getCharacterInputEv+0x54>

0000000080003670 <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    if((outputTail+1)%bufferSize == outputHead)
    80003670:	00005697          	auipc	a3,0x5
    80003674:	3c068693          	addi	a3,a3,960 # 80008a30 <_ZN8KConsole18hasCharactersInputE>
    80003678:	0386b603          	ld	a2,56(a3)
    8000367c:	00160793          	addi	a5,a2,1
    80003680:	00004737          	lui	a4,0x4
    80003684:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    80003688:	00e7f7b3          	and	a5,a5,a4
    8000368c:	0406b703          	ld	a4,64(a3)
    80003690:	06e78263          	beq	a5,a4,800036f4 <_ZN8KConsole18putCharacterOutputEc+0x84>
{
    80003694:	ff010113          	addi	sp,sp,-16
    80003698:	00113423          	sd	ra,8(sp)
    8000369c:	00813023          	sd	s0,0(sp)
    800036a0:	01010413          	addi	s0,sp,16
        return;
    pendingPutc++;
    800036a4:	00068793          	mv	a5,a3
    800036a8:	0486b703          	ld	a4,72(a3)
    800036ac:	00170713          	addi	a4,a4,1
    800036b0:	04e6b423          	sd	a4,72(a3)
    outputBuffer[outputTail] = c;
    800036b4:	0186b703          	ld	a4,24(a3)
    800036b8:	00c70633          	add	a2,a4,a2
    800036bc:	00a60023          	sb	a0,0(a2)
    outputTail = (outputTail+1)%bufferSize;
    800036c0:	0386b703          	ld	a4,56(a3)
    800036c4:	00170713          	addi	a4,a4,1
    800036c8:	000046b7          	lui	a3,0x4
    800036cc:	fff68693          	addi	a3,a3,-1 # 3fff <_entry-0x7fffc001>
    800036d0:	00d77733          	and	a4,a4,a3
    800036d4:	02e7bc23          	sd	a4,56(a5)
    hasCharactersOutput->signal();
    800036d8:	0087b503          	ld	a0,8(a5)
    800036dc:	00002097          	auipc	ra,0x2
    800036e0:	07c080e7          	jalr	124(ra) # 80005758 <_ZN10KSemaphore6signalEv>
}
    800036e4:	00813083          	ld	ra,8(sp)
    800036e8:	00013403          	ld	s0,0(sp)
    800036ec:	01010113          	addi	sp,sp,16
    800036f0:	00008067          	ret
    800036f4:	00008067          	ret

00000000800036f8 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    800036f8:	fe010113          	addi	sp,sp,-32
    800036fc:	00113c23          	sd	ra,24(sp)
    80003700:	00813823          	sd	s0,16(sp)
    80003704:	00913423          	sd	s1,8(sp)
    80003708:	02010413          	addi	s0,sp,32
    hasCharactersOutput->wait();
    8000370c:	00005497          	auipc	s1,0x5
    80003710:	32448493          	addi	s1,s1,804 # 80008a30 <_ZN8KConsole18hasCharactersInputE>
    80003714:	0084b503          	ld	a0,8(s1)
    80003718:	00002097          	auipc	ra,0x2
    8000371c:	ec8080e7          	jalr	-312(ra) # 800055e0 <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    80003720:	0404b783          	ld	a5,64(s1)
    80003724:	0384b703          	ld	a4,56(s1)
    80003728:	02e78c63          	beq	a5,a4,80003760 <_ZN8KConsole18getCharacterOutputEv+0x68>
        return -1;
    char c = outputBuffer[outputHead];
    8000372c:	0184b703          	ld	a4,24(s1)
    80003730:	00f70733          	add	a4,a4,a5
    80003734:	00074503          	lbu	a0,0(a4)
    outputHead = (outputHead+1)%bufferSize;
    80003738:	00178793          	addi	a5,a5,1
    8000373c:	00004737          	lui	a4,0x4
    80003740:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    80003744:	00e7f7b3          	and	a5,a5,a4
    80003748:	04f4b023          	sd	a5,64(s1)
    return c;
}
    8000374c:	01813083          	ld	ra,24(sp)
    80003750:	01013403          	ld	s0,16(sp)
    80003754:	00813483          	ld	s1,8(sp)
    80003758:	02010113          	addi	sp,sp,32
    8000375c:	00008067          	ret
        return -1;
    80003760:	0ff00513          	li	a0,255
    80003764:	fe9ff06f          	j	8000374c <_ZN8KConsole18getCharacterOutputEv+0x54>

0000000080003768 <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    80003768:	ff010113          	addi	sp,sp,-16
    8000376c:	00113423          	sd	ra,8(sp)
    80003770:	00813023          	sd	s0,0(sp)
    80003774:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    80003778:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    8000377c:	0ff57513          	andi	a0,a0,255
    80003780:	00000097          	auipc	ra,0x0
    80003784:	ef0080e7          	jalr	-272(ra) # 80003670 <_ZN8KConsole18putCharacterOutputEc>
}
    80003788:	00813083          	ld	ra,8(sp)
    8000378c:	00013403          	ld	s0,0(sp)
    80003790:	01010113          	addi	sp,sp,16
    80003794:	00008067          	ret

0000000080003798 <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    80003798:	fe010113          	addi	sp,sp,-32
    8000379c:	00113c23          	sd	ra,24(sp)
    800037a0:	00813823          	sd	s0,16(sp)
    800037a4:	00913423          	sd	s1,8(sp)
    800037a8:	02010413          	addi	s0,sp,32
    pendingGetc++;
    800037ac:	00005717          	auipc	a4,0x5
    800037b0:	28470713          	addi	a4,a4,644 # 80008a30 <_ZN8KConsole18hasCharactersInputE>
    800037b4:	03073783          	ld	a5,48(a4)
    800037b8:	00178793          	addi	a5,a5,1
    800037bc:	02f73823          	sd	a5,48(a4)
    char ch;
    ch = getCharacterInput();
    800037c0:	00000097          	auipc	ra,0x0
    800037c4:	e40080e7          	jalr	-448(ra) # 80003600 <_ZN8KConsole17getCharacterInputEv>
    800037c8:	00050493          	mv	s1,a0
    if(ch!=0x01b)
    800037cc:	01b00793          	li	a5,27
    800037d0:	02f51663          	bne	a0,a5,800037fc <_ZN8KConsole11getcHandlerEv+0x64>
        putCharacterOutput(ch);

    if(ch==13)
    800037d4:	00d00793          	li	a5,13
    800037d8:	02f48863          	beq	s1,a5,80003808 <_ZN8KConsole11getcHandlerEv+0x70>
    {
        putCharacterOutput(13);
        putCharacterOutput(10);
    }

    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    800037dc:	00048513          	mv	a0,s1
    Riscv::w_a0_sscratch();
    800037e0:	00001097          	auipc	ra,0x1
    800037e4:	e5c080e7          	jalr	-420(ra) # 8000463c <_ZN5Riscv13w_a0_sscratchEv>
}
    800037e8:	01813083          	ld	ra,24(sp)
    800037ec:	01013403          	ld	s0,16(sp)
    800037f0:	00813483          	ld	s1,8(sp)
    800037f4:	02010113          	addi	sp,sp,32
    800037f8:	00008067          	ret
        putCharacterOutput(ch);
    800037fc:	00000097          	auipc	ra,0x0
    80003800:	e74080e7          	jalr	-396(ra) # 80003670 <_ZN8KConsole18putCharacterOutputEc>
    80003804:	fd1ff06f          	j	800037d4 <_ZN8KConsole11getcHandlerEv+0x3c>
        putCharacterOutput(13);
    80003808:	00d00513          	li	a0,13
    8000380c:	00000097          	auipc	ra,0x0
    80003810:	e64080e7          	jalr	-412(ra) # 80003670 <_ZN8KConsole18putCharacterOutputEc>
        putCharacterOutput(10);
    80003814:	00a00513          	li	a0,10
    80003818:	00000097          	auipc	ra,0x0
    8000381c:	e58080e7          	jalr	-424(ra) # 80003670 <_ZN8KConsole18putCharacterOutputEc>
    80003820:	fbdff06f          	j	800037dc <_ZN8KConsole11getcHandlerEv+0x44>

0000000080003824 <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty()
{
    80003824:	ff010113          	addi	sp,sp,-16
    80003828:	00813423          	sd	s0,8(sp)
    8000382c:	01010413          	addi	s0,sp,16
    return pendingPutc == 0;
}
    80003830:	00005517          	auipc	a0,0x5
    80003834:	24853503          	ld	a0,584(a0) # 80008a78 <_ZN8KConsole11pendingPutcE>
    80003838:	00153513          	seqz	a0,a0
    8000383c:	00813403          	ld	s0,8(sp)
    80003840:	01010113          	addi	sp,sp,16
    80003844:	00008067          	ret

0000000080003848 <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    80003848:	fe010113          	addi	sp,sp,-32
    8000384c:	00113c23          	sd	ra,24(sp)
    80003850:	00813823          	sd	s0,16(sp)
    80003854:	02010413          	addi	s0,sp,32
    80003858:	0180006f          	j	80003870 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>
                thread_exit_kernel();
    8000385c:	ffffe097          	auipc	ra,0xffffe
    80003860:	a24080e7          	jalr	-1500(ra) # 80001280 <_Z18thread_exit_kernelv>
    80003864:	0340006f          	j	80003898 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
                thread_dispatch_kernel();
    80003868:	ffffe097          	auipc	ra,0xffffe
    8000386c:	9d0080e7          	jalr	-1584(ra) # 80001238 <_Z22thread_dispatch_kernelv>
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
    80003870:	00005797          	auipc	a5,0x5
    80003874:	1007b783          	ld	a5,256(a5) # 80008970 <_GLOBAL_OFFSET_TABLE_+0x88>
    80003878:	0007c783          	lbu	a5,0(a5)
    8000387c:	00078e63          	beqz	a5,80003898 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80003880:	00000097          	auipc	ra,0x0
    80003884:	fa4080e7          	jalr	-92(ra) # 80003824 <_ZN8KConsole17outputBufferEmptyEv>
    80003888:	00050863          	beqz	a0,80003898 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    8000388c:	00005797          	auipc	a5,0x5
    80003890:	1d47b783          	ld	a5,468(a5) # 80008a60 <_ZN8KConsole11pendingGetcE>
    80003894:	fc0784e3          	beqz	a5,8000385c <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
            uint64 operation = *(uint8*)CONSOLE_STATUS;
    80003898:	00005797          	auipc	a5,0x5
    8000389c:	0607b783          	ld	a5,96(a5) # 800088f8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800038a0:	0007b783          	ld	a5,0(a5)
    800038a4:	0007c783          	lbu	a5,0(a5)
            if ((operation & STATUS_WRITE_MASK) && pendingPutc > 0)
    800038a8:	0207f793          	andi	a5,a5,32
    800038ac:	fa078ee3          	beqz	a5,80003868 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
    800038b0:	00005797          	auipc	a5,0x5
    800038b4:	1c87b783          	ld	a5,456(a5) # 80008a78 <_ZN8KConsole11pendingPutcE>
    800038b8:	fa0788e3          	beqz	a5,80003868 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
                char volatile c = sysCallGetCharOutput();
    800038bc:	ffffe097          	auipc	ra,0xffffe
    800038c0:	99c080e7          	jalr	-1636(ra) # 80001258 <_Z20sysCallGetCharOutputv>
    800038c4:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    800038c8:	00005717          	auipc	a4,0x5
    800038cc:	16870713          	addi	a4,a4,360 # 80008a30 <_ZN8KConsole18hasCharactersInputE>
    800038d0:	04873783          	ld	a5,72(a4)
    800038d4:	fff78793          	addi	a5,a5,-1
    800038d8:	04f73423          	sd	a5,72(a4)
                *(uint8*)CONSOLE_RX_DATA = c;
    800038dc:	00005797          	auipc	a5,0x5
    800038e0:	0147b783          	ld	a5,20(a5) # 800088f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800038e4:	0007b783          	ld	a5,0(a5)
    800038e8:	fef44703          	lbu	a4,-17(s0)
    800038ec:	00e78023          	sb	a4,0(a5)
    800038f0:	f81ff06f          	j	80003870 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>

00000000800038f4 <_ZN8KConsole14getCharHandlerEv>:

void KConsole::getCharHandler()
{
    800038f4:	ff010113          	addi	sp,sp,-16
    800038f8:	00113423          	sd	ra,8(sp)
    800038fc:	00813023          	sd	s0,0(sp)
    80003900:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterOutput();
    80003904:	00000097          	auipc	ra,0x0
    80003908:	df4080e7          	jalr	-524(ra) # 800036f8 <_ZN8KConsole18getCharacterOutputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    8000390c:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80003910:	00001097          	auipc	ra,0x1
    80003914:	d2c080e7          	jalr	-724(ra) # 8000463c <_ZN5Riscv13w_a0_sscratchEv>
}
    80003918:	00813083          	ld	ra,8(sp)
    8000391c:	00013403          	ld	s0,0(sp)
    80003920:	01010113          	addi	sp,sp,16
    80003924:	00008067          	ret

0000000080003928 <_ZN8KConsole15trapPrintStringEPKc>:

void KConsole::trapPrintString(const char *string)
{
    80003928:	fe010113          	addi	sp,sp,-32
    8000392c:	00113c23          	sd	ra,24(sp)
    80003930:	00813823          	sd	s0,16(sp)
    80003934:	00913423          	sd	s1,8(sp)
    80003938:	02010413          	addi	s0,sp,32
    8000393c:	00050493          	mv	s1,a0
    while (*string != '\0')
    80003940:	0004c503          	lbu	a0,0(s1)
    80003944:	00050a63          	beqz	a0,80003958 <_ZN8KConsole15trapPrintStringEPKc+0x30>
    {
        KConsole::putCharacterOutput(*string);
    80003948:	00000097          	auipc	ra,0x0
    8000394c:	d28080e7          	jalr	-728(ra) # 80003670 <_ZN8KConsole18putCharacterOutputEc>
        string++;
    80003950:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80003954:	fedff06f          	j	80003940 <_ZN8KConsole15trapPrintStringEPKc+0x18>
    }
}
    80003958:	01813083          	ld	ra,24(sp)
    8000395c:	01013403          	ld	s0,16(sp)
    80003960:	00813483          	ld	s1,8(sp)
    80003964:	02010113          	addi	sp,sp,32
    80003968:	00008067          	ret

000000008000396c <_ZN8KConsole12trapPrintIntEmii>:

void KConsole::trapPrintInt(size_t xx, int base, int sgn)
{
    8000396c:	fb010113          	addi	sp,sp,-80
    80003970:	04113423          	sd	ra,72(sp)
    80003974:	04813023          	sd	s0,64(sp)
    80003978:	02913c23          	sd	s1,56(sp)
    8000397c:	05010413          	addi	s0,sp,80
    char digits[] = "0123456789ABCDEF";
    80003980:	00005797          	auipc	a5,0x5
    80003984:	9e878793          	addi	a5,a5,-1560 # 80008368 <CONSOLE_STATUS+0x358>
    80003988:	0007b703          	ld	a4,0(a5)
    8000398c:	fce43423          	sd	a4,-56(s0)
    80003990:	0087b703          	ld	a4,8(a5)
    80003994:	fce43823          	sd	a4,-48(s0)
    80003998:	0107c783          	lbu	a5,16(a5)
    8000399c:	fcf40c23          	sb	a5,-40(s0)
        x = -xx;
    } else {
        x = xx;
    }

    i = 0;
    800039a0:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    800039a4:	02b57733          	remu	a4,a0,a1
    800039a8:	fe040693          	addi	a3,s0,-32
    800039ac:	00e68733          	add	a4,a3,a4
    800039b0:	fe874703          	lbu	a4,-24(a4)
    800039b4:	009687b3          	add	a5,a3,s1
    800039b8:	0014849b          	addiw	s1,s1,1
    800039bc:	fce78c23          	sb	a4,-40(a5)
    }while((x /= base) != 0);
    800039c0:	00050793          	mv	a5,a0
    800039c4:	02b55533          	divu	a0,a0,a1
    800039c8:	fcb7fee3          	bgeu	a5,a1,800039a4 <_ZN8KConsole12trapPrintIntEmii+0x38>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    800039cc:	fff4849b          	addiw	s1,s1,-1
    800039d0:	0004ce63          	bltz	s1,800039ec <_ZN8KConsole12trapPrintIntEmii+0x80>
        KConsole::putCharacterOutput(buf[i]);
    800039d4:	fe040793          	addi	a5,s0,-32
    800039d8:	009787b3          	add	a5,a5,s1
    800039dc:	fd87c503          	lbu	a0,-40(a5)
    800039e0:	00000097          	auipc	ra,0x0
    800039e4:	c90080e7          	jalr	-880(ra) # 80003670 <_ZN8KConsole18putCharacterOutputEc>
    800039e8:	fe5ff06f          	j	800039cc <_ZN8KConsole12trapPrintIntEmii+0x60>
}
    800039ec:	04813083          	ld	ra,72(sp)
    800039f0:	04013403          	ld	s0,64(sp)
    800039f4:	03813483          	ld	s1,56(sp)
    800039f8:	05010113          	addi	sp,sp,80
    800039fc:	00008067          	ret

0000000080003a00 <_ZN8KConsole18trapPrintStringIntEPKcmi>:

void KConsole::trapPrintStringInt(const char *string, size_t xx, int base)
{
    80003a00:	fe010113          	addi	sp,sp,-32
    80003a04:	00113c23          	sd	ra,24(sp)
    80003a08:	00813823          	sd	s0,16(sp)
    80003a0c:	00913423          	sd	s1,8(sp)
    80003a10:	01213023          	sd	s2,0(sp)
    80003a14:	02010413          	addi	s0,sp,32
    80003a18:	00058493          	mv	s1,a1
    80003a1c:	00060913          	mv	s2,a2
    trapPrintString(string);
    80003a20:	00000097          	auipc	ra,0x0
    80003a24:	f08080e7          	jalr	-248(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    trapPrintInt(xx,base);
    80003a28:	00000613          	li	a2,0
    80003a2c:	00090593          	mv	a1,s2
    80003a30:	00048513          	mv	a0,s1
    80003a34:	00000097          	auipc	ra,0x0
    80003a38:	f38080e7          	jalr	-200(ra) # 8000396c <_ZN8KConsole12trapPrintIntEmii>
    trapPrintString("\n");
    80003a3c:	00004517          	auipc	a0,0x4
    80003a40:	76450513          	addi	a0,a0,1892 # 800081a0 <CONSOLE_STATUS+0x190>
    80003a44:	00000097          	auipc	ra,0x0
    80003a48:	ee4080e7          	jalr	-284(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
}
    80003a4c:	01813083          	ld	ra,24(sp)
    80003a50:	01013403          	ld	s0,16(sp)
    80003a54:	00813483          	ld	s1,8(sp)
    80003a58:	00013903          	ld	s2,0(sp)
    80003a5c:	02010113          	addi	sp,sp,32
    80003a60:	00008067          	ret

0000000080003a64 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../../h/Riscv.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80003a64:	ff010113          	addi	sp,sp,-16
    80003a68:	00813423          	sd	s0,8(sp)
    80003a6c:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    80003a70:	00005797          	auipc	a5,0x5
    80003a74:	f107b783          	ld	a5,-240(a5) # 80008980 <_GLOBAL_OFFSET_TABLE_+0x98>
    80003a78:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    80003a7c:	00500793          	li	a5,5
    80003a80:	04f62023          	sw	a5,64(a2)
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80003a84:	00005797          	auipc	a5,0x5
    80003a88:	0047b783          	ld	a5,4(a5) # 80008a88 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80003a8c:	00000593          	li	a1,0
    while(curr != 0)
    80003a90:	02078063          	beqz	a5,80003ab0 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80003a94:	02063683          	ld	a3,32(a2)
    80003a98:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    80003a9c:	00e6e863          	bltu	a3,a4,80003aac <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    80003aa0:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    80003aa4:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003aa8:	fe9ff06f          	j	80003a90 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    80003aac:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    80003ab0:	00058a63          	beqz	a1,80003ac4 <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    80003ab4:	00c5b423          	sd	a2,8(a1)
}
    80003ab8:	00813403          	ld	s0,8(sp)
    80003abc:	01010113          	addi	sp,sp,16
    80003ac0:	00008067          	ret
        sleepingPCBHead = PCB::running;
    80003ac4:	00005797          	auipc	a5,0x5
    80003ac8:	fcc7b223          	sd	a2,-60(a5) # 80008a88 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80003acc:	fedff06f          	j	80003ab8 <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

0000000080003ad0 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    PCB* curr = sleepingPCBHead;
    80003ad0:	00005517          	auipc	a0,0x5
    80003ad4:	fb853503          	ld	a0,-72(a0) # 80008a88 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80003ad8:	06050e63          	beqz	a0,80003b54 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
        return;

    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003adc:	06050c63          	beqz	a0,80003b54 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    80003ae0:	02053783          	ld	a5,32(a0)
    80003ae4:	00005717          	auipc	a4,0x5
    80003ae8:	e6473703          	ld	a4,-412(a4) # 80008948 <_GLOBAL_OFFSET_TABLE_+0x60>
    80003aec:	00073703          	ld	a4,0(a4)
    80003af0:	06f76263          	bltu	a4,a5,80003b54 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    80003af4:	fe010113          	addi	sp,sp,-32
    80003af8:	00113c23          	sd	ra,24(sp)
    80003afc:	00813823          	sd	s0,16(sp)
    80003b00:	00913423          	sd	s1,8(sp)
    80003b04:	02010413          	addi	s0,sp,32
    80003b08:	0180006f          	j	80003b20 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80003b0c:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003b10:	00005717          	auipc	a4,0x5
    80003b14:	e3873703          	ld	a4,-456(a4) # 80008948 <_GLOBAL_OFFSET_TABLE_+0x60>
    80003b18:	00073703          	ld	a4,0(a4)
    80003b1c:	02f76263          	bltu	a4,a5,80003b40 <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    80003b20:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    80003b24:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    80003b28:	00000097          	auipc	ra,0x0
    80003b2c:	0b8080e7          	jalr	184(ra) # 80003be0 <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    80003b30:	00005797          	auipc	a5,0x5
    80003b34:	f497bc23          	sd	s1,-168(a5) # 80008a88 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    80003b38:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003b3c:	fc0498e3          	bnez	s1,80003b0c <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    80003b40:	01813083          	ld	ra,24(sp)
    80003b44:	01013403          	ld	s0,16(sp)
    80003b48:	00813483          	ld	s1,8(sp)
    80003b4c:	02010113          	addi	sp,sp,32
    80003b50:	00008067          	ret
    80003b54:	00008067          	ret

0000000080003b58 <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    80003b58:	ff010113          	addi	sp,sp,-16
    80003b5c:	00113423          	sd	ra,8(sp)
    80003b60:	00813023          	sd	s0,0(sp)
    80003b64:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    80003b68:	00001097          	auipc	ra,0x1
    80003b6c:	208080e7          	jalr	520(ra) # 80004d70 <_ZN15MemoryAllocator7kmallocEm>
}
    80003b70:	00813083          	ld	ra,8(sp)
    80003b74:	00013403          	ld	s0,0(sp)
    80003b78:	01010113          	addi	sp,sp,16
    80003b7c:	00008067          	ret

0000000080003b80 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    80003b80:	ff010113          	addi	sp,sp,-16
    80003b84:	00113423          	sd	ra,8(sp)
    80003b88:	00813023          	sd	s0,0(sp)
    80003b8c:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80003b90:	00001097          	auipc	ra,0x1
    80003b94:	250080e7          	jalr	592(ra) # 80004de0 <_ZN15MemoryAllocator5kfreeEPv>
}
    80003b98:	00813083          	ld	ra,8(sp)
    80003b9c:	00013403          	ld	s0,0(sp)
    80003ba0:	01010113          	addi	sp,sp,16
    80003ba4:	00008067          	ret

0000000080003ba8 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80003ba8:	ff010113          	addi	sp,sp,-16
    80003bac:	00813423          	sd	s0,8(sp)
    80003bb0:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    80003bb4:	00005797          	auipc	a5,0x5
    80003bb8:	edc7b783          	ld	a5,-292(a5) # 80008a90 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80003bbc:	00000513          	li	a0,0
    while(curr != 0)
    80003bc0:	00078863          	beqz	a5,80003bd0 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    80003bc4:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80003bc8:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003bcc:	ff5ff06f          	j	80003bc0 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    80003bd0:	0005051b          	sext.w	a0,a0
    80003bd4:	00813403          	ld	s0,8(sp)
    80003bd8:	01010113          	addi	sp,sp,16
    80003bdc:	00008067          	ret

0000000080003be0 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    80003be0:	ff010113          	addi	sp,sp,-16
    80003be4:	00813423          	sd	s0,8(sp)
    80003be8:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    80003bec:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    80003bf0:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    80003bf4:	00005797          	auipc	a5,0x5
    80003bf8:	e9c7b783          	ld	a5,-356(a5) # 80008a90 <_ZN9Scheduler16schedulerPCBHeadE>
    80003bfc:	02078263          	beqz	a5,80003c20 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80003c00:	00005797          	auipc	a5,0x5
    80003c04:	e9078793          	addi	a5,a5,-368 # 80008a90 <_ZN9Scheduler16schedulerPCBHeadE>
    80003c08:	0087b703          	ld	a4,8(a5)
    80003c0c:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    80003c10:	00a7b423          	sd	a0,8(a5)
    }
}
    80003c14:	00813403          	ld	s0,8(sp)
    80003c18:	01010113          	addi	sp,sp,16
    80003c1c:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    80003c20:	00005797          	auipc	a5,0x5
    80003c24:	e7078793          	addi	a5,a5,-400 # 80008a90 <_ZN9Scheduler16schedulerPCBHeadE>
    80003c28:	00a7b423          	sd	a0,8(a5)
    80003c2c:	00a7b023          	sd	a0,0(a5)
    80003c30:	fe5ff06f          	j	80003c14 <_ZN9Scheduler3putEP3PCB+0x34>

0000000080003c34 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    80003c34:	ff010113          	addi	sp,sp,-16
    80003c38:	00813423          	sd	s0,8(sp)
    80003c3c:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    80003c40:	00005517          	auipc	a0,0x5
    80003c44:	e5053503          	ld	a0,-432(a0) # 80008a90 <_ZN9Scheduler16schedulerPCBHeadE>
    80003c48:	00050c63          	beqz	a0,80003c60 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80003c4c:	00853783          	ld	a5,8(a0)
    80003c50:	00078e63          	beqz	a5,80003c6c <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    80003c54:	00005717          	auipc	a4,0x5
    80003c58:	e2f73e23          	sd	a5,-452(a4) # 80008a90 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80003c5c:	00053423          	sd	zero,8(a0)
    return retval;
}
    80003c60:	00813403          	ld	s0,8(sp)
    80003c64:	01010113          	addi	sp,sp,16
    80003c68:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80003c6c:	00005797          	auipc	a5,0x5
    80003c70:	e2478793          	addi	a5,a5,-476 # 80008a90 <_ZN9Scheduler16schedulerPCBHeadE>
    80003c74:	0007b423          	sd	zero,8(a5)
    80003c78:	0007b023          	sd	zero,0(a5)
    80003c7c:	fe1ff06f          	j	80003c5c <_ZN9Scheduler3getEv+0x28>

0000000080003c80 <_ZN9Scheduler5printEv>:

void Scheduler::print()
{
    80003c80:	fe010113          	addi	sp,sp,-32
    80003c84:	00113c23          	sd	ra,24(sp)
    80003c88:	00813823          	sd	s0,16(sp)
    80003c8c:	00913423          	sd	s1,8(sp)
    80003c90:	02010413          	addi	s0,sp,32
    //trapPrintString("Scheduler print\n");
    PCB* curr = schedulerPCBHead;
    80003c94:	00005497          	auipc	s1,0x5
    80003c98:	dfc4b483          	ld	s1,-516(s1) # 80008a90 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    80003c9c:	02048863          	beqz	s1,80003ccc <_ZN9Scheduler5printEv+0x4c>
    {
        KConsole::trapPrintInt((uint64)curr, 16);
    80003ca0:	00000613          	li	a2,0
    80003ca4:	01000593          	li	a1,16
    80003ca8:	00048513          	mv	a0,s1
    80003cac:	00000097          	auipc	ra,0x0
    80003cb0:	cc0080e7          	jalr	-832(ra) # 8000396c <_ZN8KConsole12trapPrintIntEmii>
        KConsole::trapPrintString("\n");
    80003cb4:	00004517          	auipc	a0,0x4
    80003cb8:	4ec50513          	addi	a0,a0,1260 # 800081a0 <CONSOLE_STATUS+0x190>
    80003cbc:	00000097          	auipc	ra,0x0
    80003cc0:	c6c080e7          	jalr	-916(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
        curr = curr->nextPCB;
    80003cc4:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003cc8:	fd5ff06f          	j	80003c9c <_ZN9Scheduler5printEv+0x1c>
    }
}
    80003ccc:	01813083          	ld	ra,24(sp)
    80003cd0:	01013403          	ld	s0,16(sp)
    80003cd4:	00813483          	ld	s1,8(sp)
    80003cd8:	02010113          	addi	sp,sp,32
    80003cdc:	00008067          	ret

0000000080003ce0 <main>:
#include "../../h/Riscv.hpp"

void main()
{
    80003ce0:	ff010113          	addi	sp,sp,-16
    80003ce4:	00113423          	sd	ra,8(sp)
    80003ce8:	00813023          	sd	s0,0(sp)
    80003cec:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    80003cf0:	00001097          	auipc	ra,0x1
    80003cf4:	854080e7          	jalr	-1964(ra) # 80004544 <_ZN5Riscv10kernelMainEv>
    80003cf8:	00813083          	ld	ra,8(sp)
    80003cfc:	00013403          	ld	s0,0(sp)
    80003d00:	01010113          	addi	sp,sp,16
    80003d04:	00008067          	ret

0000000080003d08 <_Z14buddyInitTest1v>:
#include "../../h/buddyTests.hpp"
#include "../../h/KConsole.hpp"
#include "../../h/MemoryAllocator.hpp"

void buddyInitTest1()
{
    80003d08:	ff010113          	addi	sp,sp,-16
    80003d0c:	00113423          	sd	ra,8(sp)
    80003d10:	00813023          	sd	s0,0(sp)
    80003d14:	01010413          	addi	s0,sp,16
    printBuddyInfo();
    80003d18:	fffff097          	auipc	ra,0xfffff
    80003d1c:	5d4080e7          	jalr	1492(ra) # 800032ec <_Z14printBuddyInfov>
}
    80003d20:	00813083          	ld	ra,8(sp)
    80003d24:	00013403          	ld	s0,0(sp)
    80003d28:	01010113          	addi	sp,sp,16
    80003d2c:	00008067          	ret

0000000080003d30 <_Z20buddyOnlyAllocsTest1v>:

void buddyOnlyAllocsTest1()
{
    80003d30:	ff010113          	addi	sp,sp,-16
    80003d34:	00113423          	sd	ra,8(sp)
    80003d38:	00813023          	sd	s0,0(sp)
    80003d3c:	01010413          	addi	s0,sp,16
    printBuddyInfo();
    80003d40:	fffff097          	auipc	ra,0xfffff
    80003d44:	5ac080e7          	jalr	1452(ra) # 800032ec <_Z14printBuddyInfov>
    buddy_alloc(1);
    80003d48:	00100513          	li	a0,1
    80003d4c:	fffff097          	auipc	ra,0xfffff
    80003d50:	23c080e7          	jalr	572(ra) # 80002f88 <_Z11buddy_allocm>
    printBuddyInfo();
    80003d54:	fffff097          	auipc	ra,0xfffff
    80003d58:	598080e7          	jalr	1432(ra) # 800032ec <_Z14printBuddyInfov>
    buddy_alloc(1);
    80003d5c:	00100513          	li	a0,1
    80003d60:	fffff097          	auipc	ra,0xfffff
    80003d64:	228080e7          	jalr	552(ra) # 80002f88 <_Z11buddy_allocm>
    printBuddyInfo();
    80003d68:	fffff097          	auipc	ra,0xfffff
    80003d6c:	584080e7          	jalr	1412(ra) # 800032ec <_Z14printBuddyInfov>
    buddy_alloc(1);
    80003d70:	00100513          	li	a0,1
    80003d74:	fffff097          	auipc	ra,0xfffff
    80003d78:	214080e7          	jalr	532(ra) # 80002f88 <_Z11buddy_allocm>
    printBuddyInfo();
    80003d7c:	fffff097          	auipc	ra,0xfffff
    80003d80:	570080e7          	jalr	1392(ra) # 800032ec <_Z14printBuddyInfov>
    buddy_alloc(3);
    80003d84:	00300513          	li	a0,3
    80003d88:	fffff097          	auipc	ra,0xfffff
    80003d8c:	200080e7          	jalr	512(ra) # 80002f88 <_Z11buddy_allocm>
    printBuddyInfo();
    80003d90:	fffff097          	auipc	ra,0xfffff
    80003d94:	55c080e7          	jalr	1372(ra) # 800032ec <_Z14printBuddyInfov>
}
    80003d98:	00813083          	ld	ra,8(sp)
    80003d9c:	00013403          	ld	s0,0(sp)
    80003da0:	01010113          	addi	sp,sp,16
    80003da4:	00008067          	ret

0000000080003da8 <_Z20buddyOnlyAllocsTest2v>:

void buddyOnlyAllocsTest2()
{
    80003da8:	ff010113          	addi	sp,sp,-16
    80003dac:	00113423          	sd	ra,8(sp)
    80003db0:	00813023          	sd	s0,0(sp)
    80003db4:	01010413          	addi	s0,sp,16
    void* adr = buddy_alloc(100);
    80003db8:	06400513          	li	a0,100
    80003dbc:	fffff097          	auipc	ra,0xfffff
    80003dc0:	1cc080e7          	jalr	460(ra) # 80002f88 <_Z11buddy_allocm>
    if(adr == nullptr)
    80003dc4:	00050a63          	beqz	a0,80003dd8 <_Z20buddyOnlyAllocsTest2v+0x30>
    {
        printBuddyInfo();
    }
}
    80003dc8:	00813083          	ld	ra,8(sp)
    80003dcc:	00013403          	ld	s0,0(sp)
    80003dd0:	01010113          	addi	sp,sp,16
    80003dd4:	00008067          	ret
        printBuddyInfo();
    80003dd8:	fffff097          	auipc	ra,0xfffff
    80003ddc:	514080e7          	jalr	1300(ra) # 800032ec <_Z14printBuddyInfov>
}
    80003de0:	fe9ff06f          	j	80003dc8 <_Z20buddyOnlyAllocsTest2v+0x20>

0000000080003de4 <_Z19buddyAllocFreeTest1v>:

void buddyAllocFreeTest1()
{
    80003de4:	fe010113          	addi	sp,sp,-32
    80003de8:	00113c23          	sd	ra,24(sp)
    80003dec:	00813823          	sd	s0,16(sp)
    80003df0:	00913423          	sd	s1,8(sp)
    80003df4:	01213023          	sd	s2,0(sp)
    80003df8:	02010413          	addi	s0,sp,32
    printBuddyInfo();
    80003dfc:	fffff097          	auipc	ra,0xfffff
    80003e00:	4f0080e7          	jalr	1264(ra) # 800032ec <_Z14printBuddyInfov>
    void* adr = buddy_alloc(1);
    80003e04:	00100513          	li	a0,1
    80003e08:	fffff097          	auipc	ra,0xfffff
    80003e0c:	180080e7          	jalr	384(ra) # 80002f88 <_Z11buddy_allocm>
    80003e10:	00050493          	mv	s1,a0
    printBuddyInfo();
    80003e14:	fffff097          	auipc	ra,0xfffff
    80003e18:	4d8080e7          	jalr	1240(ra) # 800032ec <_Z14printBuddyInfov>
    buddy_free(adr, 1);
    80003e1c:	00100593          	li	a1,1
    80003e20:	00048513          	mv	a0,s1
    80003e24:	fffff097          	auipc	ra,0xfffff
    80003e28:	458080e7          	jalr	1112(ra) # 8000327c <_Z10buddy_freePvm>
    printBuddyInfo();
    80003e2c:	fffff097          	auipc	ra,0xfffff
    80003e30:	4c0080e7          	jalr	1216(ra) # 800032ec <_Z14printBuddyInfov>

    adr = buddy_alloc(2);
    80003e34:	00200513          	li	a0,2
    80003e38:	fffff097          	auipc	ra,0xfffff
    80003e3c:	150080e7          	jalr	336(ra) # 80002f88 <_Z11buddy_allocm>
    80003e40:	00050493          	mv	s1,a0
    void* adr2 = buddy_alloc(3);
    80003e44:	00300513          	li	a0,3
    80003e48:	fffff097          	auipc	ra,0xfffff
    80003e4c:	140080e7          	jalr	320(ra) # 80002f88 <_Z11buddy_allocm>
    80003e50:	00050913          	mv	s2,a0
    printBuddyInfo();
    80003e54:	fffff097          	auipc	ra,0xfffff
    80003e58:	498080e7          	jalr	1176(ra) # 800032ec <_Z14printBuddyInfov>

    buddy_free(adr, 2);
    80003e5c:	00200593          	li	a1,2
    80003e60:	00048513          	mv	a0,s1
    80003e64:	fffff097          	auipc	ra,0xfffff
    80003e68:	418080e7          	jalr	1048(ra) # 8000327c <_Z10buddy_freePvm>
    printBuddyInfo();
    80003e6c:	fffff097          	auipc	ra,0xfffff
    80003e70:	480080e7          	jalr	1152(ra) # 800032ec <_Z14printBuddyInfov>
    adr = buddy_alloc(1);
    80003e74:	00100513          	li	a0,1
    80003e78:	fffff097          	auipc	ra,0xfffff
    80003e7c:	110080e7          	jalr	272(ra) # 80002f88 <_Z11buddy_allocm>
    80003e80:	00050493          	mv	s1,a0
    printBuddyInfo();
    80003e84:	fffff097          	auipc	ra,0xfffff
    80003e88:	468080e7          	jalr	1128(ra) # 800032ec <_Z14printBuddyInfov>

    buddy_free(adr2, 3);
    80003e8c:	00300593          	li	a1,3
    80003e90:	00090513          	mv	a0,s2
    80003e94:	fffff097          	auipc	ra,0xfffff
    80003e98:	3e8080e7          	jalr	1000(ra) # 8000327c <_Z10buddy_freePvm>
    printBuddyInfo();
    80003e9c:	fffff097          	auipc	ra,0xfffff
    80003ea0:	450080e7          	jalr	1104(ra) # 800032ec <_Z14printBuddyInfov>
    buddy_free(adr, 1);
    80003ea4:	00100593          	li	a1,1
    80003ea8:	00048513          	mv	a0,s1
    80003eac:	fffff097          	auipc	ra,0xfffff
    80003eb0:	3d0080e7          	jalr	976(ra) # 8000327c <_Z10buddy_freePvm>
    printBuddyInfo();
    80003eb4:	fffff097          	auipc	ra,0xfffff
    80003eb8:	438080e7          	jalr	1080(ra) # 800032ec <_Z14printBuddyInfov>
}
    80003ebc:	01813083          	ld	ra,24(sp)
    80003ec0:	01013403          	ld	s0,16(sp)
    80003ec4:	00813483          	ld	s1,8(sp)
    80003ec8:	00013903          	ld	s2,0(sp)
    80003ecc:	02010113          	addi	sp,sp,32
    80003ed0:	00008067          	ret

0000000080003ed4 <_Z13buddyTestMixav>:

void buddyTestMixa()
{
    80003ed4:	fd010113          	addi	sp,sp,-48
    80003ed8:	02113423          	sd	ra,40(sp)
    80003edc:	02813023          	sd	s0,32(sp)
    80003ee0:	00913c23          	sd	s1,24(sp)
    80003ee4:	01213823          	sd	s2,16(sp)
    80003ee8:	01313423          	sd	s3,8(sp)
    80003eec:	01413023          	sd	s4,0(sp)
    80003ef0:	03010413          	addi	s0,sp,48
    void** x = (void**)MemoryAllocator::kmalloc(5000*sizeof(void*));
    80003ef4:	0000a537          	lui	a0,0xa
    80003ef8:	c4050513          	addi	a0,a0,-960 # 9c40 <_entry-0x7fff63c0>
    80003efc:	00001097          	auipc	ra,0x1
    80003f00:	e74080e7          	jalr	-396(ra) # 80004d70 <_ZN15MemoryAllocator7kmallocEm>
    80003f04:	00050993          	mv	s3,a0
    printBuddyInfo();
    80003f08:	fffff097          	auipc	ra,0xfffff
    80003f0c:	3e4080e7          	jalr	996(ra) # 800032ec <_Z14printBuddyInfov>
    for(int i = 0; i < 5000;i++)
    80003f10:	00000493          	li	s1,0
    80003f14:	0080006f          	j	80003f1c <_Z13buddyTestMixav+0x48>
    80003f18:	0014849b          	addiw	s1,s1,1
    80003f1c:	000017b7          	lui	a5,0x1
    80003f20:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    80003f24:	0697c063          	blt	a5,s1,80003f84 <_Z13buddyTestMixav+0xb0>
    {
        x[i] = buddy_alloc(2);
    80003f28:	00349913          	slli	s2,s1,0x3
    80003f2c:	01298933          	add	s2,s3,s2
    80003f30:	00200513          	li	a0,2
    80003f34:	fffff097          	auipc	ra,0xfffff
    80003f38:	054080e7          	jalr	84(ra) # 80002f88 <_Z11buddy_allocm>
    80003f3c:	00a93023          	sd	a0,0(s2)
        if(x[i] == nullptr)
    80003f40:	fc051ce3          	bnez	a0,80003f18 <_Z13buddyTestMixav+0x44>
        {
            KConsole::trapPrintStringInt("Bad allocation ", i);
    80003f44:	00a00613          	li	a2,10
    80003f48:	00048593          	mv	a1,s1
    80003f4c:	00004517          	auipc	a0,0x4
    80003f50:	43450513          	addi	a0,a0,1076 # 80008380 <CONSOLE_STATUS+0x370>
    80003f54:	00000097          	auipc	ra,0x0
    80003f58:	aac080e7          	jalr	-1364(ra) # 80003a00 <_ZN8KConsole18trapPrintStringIntEPKcmi>
            for(int j = 0;j < i;j++)
    80003f5c:	00000913          	li	s2,0
    80003f60:	02995263          	bge	s2,s1,80003f84 <_Z13buddyTestMixav+0xb0>
            {
                buddy_free(x[j], 2);
    80003f64:	00391793          	slli	a5,s2,0x3
    80003f68:	00f987b3          	add	a5,s3,a5
    80003f6c:	00200593          	li	a1,2
    80003f70:	0007b503          	ld	a0,0(a5)
    80003f74:	fffff097          	auipc	ra,0xfffff
    80003f78:	308080e7          	jalr	776(ra) # 8000327c <_Z10buddy_freePvm>
            for(int j = 0;j < i;j++)
    80003f7c:	0019091b          	addiw	s2,s2,1
    80003f80:	fe1ff06f          	j	80003f60 <_Z13buddyTestMixav+0x8c>
            }
            break;
        }
    }
    printBuddyInfo();
    80003f84:	fffff097          	auipc	ra,0xfffff
    80003f88:	368080e7          	jalr	872(ra) # 800032ec <_Z14printBuddyInfov>
}
    80003f8c:	02813083          	ld	ra,40(sp)
    80003f90:	02013403          	ld	s0,32(sp)
    80003f94:	01813483          	ld	s1,24(sp)
    80003f98:	01013903          	ld	s2,16(sp)
    80003f9c:	00813983          	ld	s3,8(sp)
    80003fa0:	00013a03          	ld	s4,0(sp)
    80003fa4:	03010113          	addi	sp,sp,48
    80003fa8:	00008067          	ret

0000000080003fac <_ZN5Riscv17initVirtualMemoryEv>:
extern char *userDataStart;
extern char *kernelTextStart;
extern char *kernelDataStart;

void Riscv::initVirtualMemory()
{
    80003fac:	ff010113          	addi	sp,sp,-16
    80003fb0:	00813423          	sd	s0,8(sp)
    80003fb4:	01010413          	addi	s0,sp,16
    //size_t addr = (size_t)getNextBlockAddr((size_t)HEAP_START_ADDR);

    //size_t pmtSize = (1 << 9);
    //size_t descSize = 64;
    //size_t
}
    80003fb8:	00813403          	ld	s0,8(sp)
    80003fbc:	01010113          	addi	sp,sp,16
    80003fc0:	00008067          	ret

0000000080003fc4 <_ZN5Riscv16enableInterruptsEv>:
        thread_dispatch_kernel();
    }
    disableInterrupts();
}

void Riscv::enableInterrupts() {
    80003fc4:	ff010113          	addi	sp,sp,-16
    80003fc8:	00813423          	sd	s0,8(sp)
    80003fcc:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003fd0:	00200793          	li	a5,2
    80003fd4:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    80003fd8:	00813403          	ld	s0,8(sp)
    80003fdc:	01010113          	addi	sp,sp,16
    80003fe0:	00008067          	ret

0000000080003fe4 <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    80003fe4:	ff010113          	addi	sp,sp,-16
    80003fe8:	00813423          	sd	s0,8(sp)
    80003fec:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003ff0:	00200793          	li	a5,2
    80003ff4:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    80003ff8:	00813403          	ld	s0,8(sp)
    80003ffc:	01010113          	addi	sp,sp,16
    80004000:	00008067          	ret

0000000080004004 <_ZN5Riscv9endSystemEv>:
{
    80004004:	ff010113          	addi	sp,sp,-16
    80004008:	00113423          	sd	ra,8(sp)
    8000400c:	00813023          	sd	s0,0(sp)
    80004010:	01010413          	addi	s0,sp,16
    disableInterrupts();
    80004014:	00000097          	auipc	ra,0x0
    80004018:	fd0080e7          	jalr	-48(ra) # 80003fe4 <_ZN5Riscv17disableInterruptsEv>
    finishSystem = true;
    8000401c:	00100793          	li	a5,1
    80004020:	00005717          	auipc	a4,0x5
    80004024:	a8f70023          	sb	a5,-1408(a4) # 80008aa0 <_ZN5Riscv12finishSystemE>
        pcb = Scheduler::get();
    80004028:	00000097          	auipc	ra,0x0
    8000402c:	c0c080e7          	jalr	-1012(ra) # 80003c34 <_ZN9Scheduler3getEv>
        if(pcb == 0) break;
    80004030:	fe051ce3          	bnez	a0,80004028 <_ZN5Riscv9endSystemEv+0x24>
    Scheduler::put(PCB::consolePCB);
    80004034:	00005797          	auipc	a5,0x5
    80004038:	92c7b783          	ld	a5,-1748(a5) # 80008960 <_GLOBAL_OFFSET_TABLE_+0x78>
    8000403c:	0007b503          	ld	a0,0(a5)
    80004040:	00000097          	auipc	ra,0x0
    80004044:	ba0080e7          	jalr	-1120(ra) # 80003be0 <_ZN9Scheduler3putEP3PCB>
    KConsole::pendingGetc = 0;
    80004048:	00005797          	auipc	a5,0x5
    8000404c:	8e07b783          	ld	a5,-1824(a5) # 80008928 <_GLOBAL_OFFSET_TABLE_+0x40>
    80004050:	0007b023          	sd	zero,0(a5)
    enableInterrupts();
    80004054:	00000097          	auipc	ra,0x0
    80004058:	f70080e7          	jalr	-144(ra) # 80003fc4 <_ZN5Riscv16enableInterruptsEv>
    while(!PCB::consolePCB->isFinished())
    8000405c:	00005797          	auipc	a5,0x5
    80004060:	9047b783          	ld	a5,-1788(a5) # 80008960 <_GLOBAL_OFFSET_TABLE_+0x78>
    80004064:	0007b503          	ld	a0,0(a5)
    80004068:	fffff097          	auipc	ra,0xfffff
    8000406c:	a48080e7          	jalr	-1464(ra) # 80002ab0 <_ZN3PCB10isFinishedEv>
    80004070:	00051863          	bnez	a0,80004080 <_ZN5Riscv9endSystemEv+0x7c>
        thread_dispatch_kernel();
    80004074:	ffffd097          	auipc	ra,0xffffd
    80004078:	1c4080e7          	jalr	452(ra) # 80001238 <_Z22thread_dispatch_kernelv>
    while(!PCB::consolePCB->isFinished())
    8000407c:	fe1ff06f          	j	8000405c <_ZN5Riscv9endSystemEv+0x58>
    disableInterrupts();
    80004080:	00000097          	auipc	ra,0x0
    80004084:	f64080e7          	jalr	-156(ra) # 80003fe4 <_ZN5Riscv17disableInterruptsEv>
}
    80004088:	00813083          	ld	ra,8(sp)
    8000408c:	00013403          	ld	s0,0(sp)
    80004090:	01010113          	addi	sp,sp,16
    80004094:	00008067          	ret

0000000080004098 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    80004098:	ff010113          	addi	sp,sp,-16
    8000409c:	00813423          	sd	s0,8(sp)
    800040a0:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread) {
    800040a4:	00005797          	auipc	a5,0x5
    800040a8:	8dc7b783          	ld	a5,-1828(a5) # 80008980 <_GLOBAL_OFFSET_TABLE_+0x98>
    800040ac:	0007b783          	ld	a5,0(a5)
    800040b0:	0007c703          	lbu	a4,0(a5)
    800040b4:	00070c63          	beqz	a4,800040cc <_ZN5Riscv10popSppSpieEv+0x34>
        __asm__ volatile ("csrw sepc, ra");
    800040b8:	14109073          	csrw	sepc,ra
        __asm__ volatile ("sret");
    800040bc:	10200073          	sret
        __asm__ volatile("mv a0, %0"::"r"((size_t)PCB::running->body));
        __asm__ volatile("mv a1, %0"::"r"((size_t)PCB::running->args));
        __asm__ volatile("csrw sepc, %0"::"r"(ra));
        __asm__ volatile ("sret");
    }
}
    800040c0:	00813403          	ld	s0,8(sp)
    800040c4:	01010113          	addi	sp,sp,16
    800040c8:	00008067          	ret
        __asm__ volatile("mv a0, %0"::"r"((size_t)PCB::running->body));
    800040cc:	0287b703          	ld	a4,40(a5)
    800040d0:	00070513          	mv	a0,a4
        __asm__ volatile("mv a1, %0"::"r"((size_t)PCB::running->args));
    800040d4:	0307b783          	ld	a5,48(a5)
    800040d8:	00078593          	mv	a1,a5
        __asm__ volatile("csrw sepc, %0"::"r"(ra));
    800040dc:	00005797          	auipc	a5,0x5
    800040e0:	8bc7b783          	ld	a5,-1860(a5) # 80008998 <_GLOBAL_OFFSET_TABLE_+0xb0>
    800040e4:	14179073          	csrw	sepc,a5
        __asm__ volatile ("sret");
    800040e8:	10200073          	sret
}
    800040ec:	fd5ff06f          	j	800040c0 <_ZN5Riscv10popSppSpieEv+0x28>

00000000800040f0 <_ZN5Riscv14setVirtualAddrEmmm>:

void Riscv::setVirtualAddr(size_t addr, size_t mask, size_t maskLeaf)
{
    800040f0:	fb010113          	addi	sp,sp,-80
    800040f4:	04113423          	sd	ra,72(sp)
    800040f8:	04813023          	sd	s0,64(sp)
    800040fc:	02913c23          	sd	s1,56(sp)
    80004100:	03213823          	sd	s2,48(sp)
    80004104:	03313423          	sd	s3,40(sp)
    80004108:	03413023          	sd	s4,32(sp)
    8000410c:	01513c23          	sd	s5,24(sp)
    80004110:	01613823          	sd	s6,16(sp)
    80004114:	01713423          	sd	s7,8(sp)
    80004118:	05010413          	addi	s0,sp,80
    8000411c:	00058993          	mv	s3,a1
    80004120:	00060a13          	mv	s4,a2
    size_t l2 = addr >> 30;
    80004124:	01e55b93          	srli	s7,a0,0x1e
    size_t l1 = (addr >> 21) & (0x1ff);
    80004128:	01555b13          	srli	s6,a0,0x15
    8000412c:	1ffb7b13          	andi	s6,s6,511
    size_t l0 = (addr >> 12) & (0x1ff);
    80004130:	00c55493          	srli	s1,a0,0xc
    80004134:	1ff4f913          	andi	s2,s1,511
    size_t pmt2Desc = ((size_t*)mainPMT)[l2];
    80004138:	003b9b93          	slli	s7,s7,0x3
    8000413c:	00005797          	auipc	a5,0x5
    80004140:	96c7b783          	ld	a5,-1684(a5) # 80008aa8 <_ZN5Riscv7mainPMTE>
    80004144:	017787b3          	add	a5,a5,s7
    80004148:	0007b503          	ld	a0,0(a5)
    void* pmt1 = nullptr;
    if(pmt2Desc == 0)
    8000414c:	06050663          	beqz	a0,800041b8 <_ZN5Riscv14setVirtualAddrEmmm+0xc8>
        size_t newDesc = (((size_t)pmt1 >> 12) << 10) | mask;
        ((size_t*)mainPMT)[l2] = newDesc;
    }
    else
    {
        pmt1 = (void*)((pmt2Desc >> 10) << 12);
    80004150:	00a55513          	srli	a0,a0,0xa
    80004154:	00c51513          	slli	a0,a0,0xc
    }
    size_t pmt1Desc = ((size_t*)pmt1)[l1];
    80004158:	003b1a93          	slli	s5,s6,0x3
    8000415c:	01550ab3          	add	s5,a0,s5
    80004160:	000ab503          	ld	a0,0(s5)
    void* pmt0 = nullptr;
    if(pmt1Desc == 0)
    80004164:	0a050063          	beqz	a0,80004204 <_ZN5Riscv14setVirtualAddrEmmm+0x114>
        size_t newDesc = (((size_t)pmt0 >> 12) << 10) | mask;
        ((size_t*)pmt1)[l1] = newDesc;
    }
    else
    {
        pmt0 = (void*)((pmt1Desc >> 10) << 12);
    80004168:	00a55513          	srli	a0,a0,0xa
    8000416c:	00c51513          	slli	a0,a0,0xc
    }

    size_t pmt0Desc = ((size_t*)pmt0)[l0];
    80004170:	00391913          	slli	s2,s2,0x3
    80004174:	01250533          	add	a0,a0,s2
    80004178:	00053783          	ld	a5,0(a0)
    if(pmt0Desc == 0)
    8000417c:	00079863          	bnez	a5,8000418c <_ZN5Riscv14setVirtualAddrEmmm+0x9c>
    {
        ((size_t*)pmt0)[l0] = ((addr >> 12) << 10) | maskLeaf;
    80004180:	00a49493          	slli	s1,s1,0xa
    80004184:	0144ea33          	or	s4,s1,s4
    80004188:	01453023          	sd	s4,0(a0)
    }
}
    8000418c:	04813083          	ld	ra,72(sp)
    80004190:	04013403          	ld	s0,64(sp)
    80004194:	03813483          	ld	s1,56(sp)
    80004198:	03013903          	ld	s2,48(sp)
    8000419c:	02813983          	ld	s3,40(sp)
    800041a0:	02013a03          	ld	s4,32(sp)
    800041a4:	01813a83          	ld	s5,24(sp)
    800041a8:	01013b03          	ld	s6,16(sp)
    800041ac:	00813b83          	ld	s7,8(sp)
    800041b0:	05010113          	addi	sp,sp,80
    800041b4:	00008067          	ret
        pmt1 = buddy_alloc(1);
    800041b8:	00100513          	li	a0,1
    800041bc:	fffff097          	auipc	ra,0xfffff
    800041c0:	dcc080e7          	jalr	-564(ra) # 80002f88 <_Z11buddy_allocm>
        for(int i = 0; i < NUM_OF_ENTRIES;i++)
    800041c4:	00000793          	li	a5,0
    800041c8:	1ff00713          	li	a4,511
    800041cc:	00f74c63          	blt	a4,a5,800041e4 <_ZN5Riscv14setVirtualAddrEmmm+0xf4>
            ((size_t*)pmt1)[i] = 0;
    800041d0:	00379713          	slli	a4,a5,0x3
    800041d4:	00e50733          	add	a4,a0,a4
    800041d8:	00073023          	sd	zero,0(a4)
        for(int i = 0; i < NUM_OF_ENTRIES;i++)
    800041dc:	0017879b          	addiw	a5,a5,1
    800041e0:	fe9ff06f          	j	800041c8 <_ZN5Riscv14setVirtualAddrEmmm+0xd8>
        size_t newDesc = (((size_t)pmt1 >> 12) << 10) | mask;
    800041e4:	00c55793          	srli	a5,a0,0xc
    800041e8:	00a79793          	slli	a5,a5,0xa
    800041ec:	0137e7b3          	or	a5,a5,s3
        ((size_t*)mainPMT)[l2] = newDesc;
    800041f0:	00005717          	auipc	a4,0x5
    800041f4:	8b873703          	ld	a4,-1864(a4) # 80008aa8 <_ZN5Riscv7mainPMTE>
    800041f8:	01770bb3          	add	s7,a4,s7
    800041fc:	00fbb023          	sd	a5,0(s7)
    80004200:	f59ff06f          	j	80004158 <_ZN5Riscv14setVirtualAddrEmmm+0x68>
        pmt0 = buddy_alloc(1);
    80004204:	00100513          	li	a0,1
    80004208:	fffff097          	auipc	ra,0xfffff
    8000420c:	d80080e7          	jalr	-640(ra) # 80002f88 <_Z11buddy_allocm>
        for(int i = 0; i < NUM_OF_ENTRIES;i++)
    80004210:	00000793          	li	a5,0
    80004214:	1ff00713          	li	a4,511
    80004218:	00f74c63          	blt	a4,a5,80004230 <_ZN5Riscv14setVirtualAddrEmmm+0x140>
            ((size_t*)pmt0)[i] = 0;
    8000421c:	00379713          	slli	a4,a5,0x3
    80004220:	00e50733          	add	a4,a0,a4
    80004224:	00073023          	sd	zero,0(a4)
        for(int i = 0; i < NUM_OF_ENTRIES;i++)
    80004228:	0017879b          	addiw	a5,a5,1
    8000422c:	fe9ff06f          	j	80004214 <_ZN5Riscv14setVirtualAddrEmmm+0x124>
        size_t newDesc = (((size_t)pmt0 >> 12) << 10) | mask;
    80004230:	00c55793          	srli	a5,a0,0xc
    80004234:	00a79793          	slli	a5,a5,0xa
    80004238:	0137e9b3          	or	s3,a5,s3
        ((size_t*)pmt1)[l1] = newDesc;
    8000423c:	013ab023          	sd	s3,0(s5)
    80004240:	f31ff06f          	j	80004170 <_ZN5Riscv14setVirtualAddrEmmm+0x80>

0000000080004244 <_ZN5Riscv19setVirtualAddrRangeEmmi>:
{
    80004244:	fd010113          	addi	sp,sp,-48
    80004248:	02113423          	sd	ra,40(sp)
    8000424c:	02813023          	sd	s0,32(sp)
    80004250:	00913c23          	sd	s1,24(sp)
    80004254:	01213823          	sd	s2,16(sp)
    80004258:	01313423          	sd	s3,8(sp)
    8000425c:	03010413          	addi	s0,sp,48
    80004260:	00050493          	mv	s1,a0
    80004264:	00058913          	mv	s2,a1
    80004268:	00060993          	mv	s3,a2
    for(size_t i = startAddr; i < endAddr; i+=BLOCK_NUM_OF_BYTES)
    8000426c:	0324f263          	bgeu	s1,s2,80004290 <_ZN5Riscv19setVirtualAddrRangeEmmi+0x4c>
        setVirtualAddr(i, VMEM_V_BIT, permission);
    80004270:	00098613          	mv	a2,s3
    80004274:	00100593          	li	a1,1
    80004278:	00048513          	mv	a0,s1
    8000427c:	00000097          	auipc	ra,0x0
    80004280:	e74080e7          	jalr	-396(ra) # 800040f0 <_ZN5Riscv14setVirtualAddrEmmm>
    for(size_t i = startAddr; i < endAddr; i+=BLOCK_NUM_OF_BYTES)
    80004284:	000017b7          	lui	a5,0x1
    80004288:	00f484b3          	add	s1,s1,a5
    8000428c:	fe1ff06f          	j	8000426c <_ZN5Riscv19setVirtualAddrRangeEmmi+0x28>
}
    80004290:	02813083          	ld	ra,40(sp)
    80004294:	02013403          	ld	s0,32(sp)
    80004298:	01813483          	ld	s1,24(sp)
    8000429c:	01013903          	ld	s2,16(sp)
    800042a0:	00813983          	ld	s3,8(sp)
    800042a4:	03010113          	addi	sp,sp,48
    800042a8:	00008067          	ret

00000000800042ac <_ZN5Riscv10initSystemEv>:
{
    800042ac:	fc010113          	addi	sp,sp,-64
    800042b0:	02113c23          	sd	ra,56(sp)
    800042b4:	02813823          	sd	s0,48(sp)
    800042b8:	02913423          	sd	s1,40(sp)
    800042bc:	03213023          	sd	s2,32(sp)
    800042c0:	01313c23          	sd	s3,24(sp)
    800042c4:	01413823          	sd	s4,16(sp)
    800042c8:	01513423          	sd	s5,8(sp)
    800042cc:	01613023          	sd	s6,0(sp)
    800042d0:	04010413          	addi	s0,sp,64
    w_stvec((uint64)&Riscv::supervisorTrap);
    800042d4:	00004797          	auipc	a5,0x4
    800042d8:	63c7b783          	ld	a5,1596(a5) # 80008910 <_GLOBAL_OFFSET_TABLE_+0x28>
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    800042dc:	10579073          	csrw	stvec,a5
    size_t heapStartBlock = getBlockAddr((size_t)HEAP_START_ADDR);
    800042e0:	00004917          	auipc	s2,0x4
    800042e4:	62093903          	ld	s2,1568(s2) # 80008900 <_GLOBAL_OFFSET_TABLE_+0x18>
    800042e8:	00093503          	ld	a0,0(s2)
    800042ec:	fffff097          	auipc	ra,0xfffff
    800042f0:	aa4080e7          	jalr	-1372(ra) # 80002d90 <_Z12getBlockAddrm>
    void* newStartAddr = (void*)(heapStartBlock + numOfBlocks*BLOCK_NUM_OF_BYTES);
    800042f4:	010017b7          	lui	a5,0x1001
    800042f8:	00f504b3          	add	s1,a0,a5
    MemoryAllocator::initMemory(newStartAddr);
    800042fc:	00048513          	mv	a0,s1
    80004300:	00000097          	auipc	ra,0x0
    80004304:	680080e7          	jalr	1664(ra) # 80004980 <_ZN15MemoryAllocator10initMemoryEPv>
    kmem_init((void*)HEAP_START_ADDR, numOfBlocks);
    80004308:	000015b7          	lui	a1,0x1
    8000430c:	00158593          	addi	a1,a1,1 # 1001 <_entry-0x7fffefff>
    80004310:	00093503          	ld	a0,0(s2)
    80004314:	ffffe097          	auipc	ra,0xffffe
    80004318:	aac080e7          	jalr	-1364(ra) # 80001dc0 <_Z9kmem_initPvi>
    pcbCache = kmem_cache_create("Cache of PCBs", sizeof(PCB), nullptr, nullptr);
    8000431c:	00000693          	li	a3,0
    80004320:	00000613          	li	a2,0
    80004324:	06000593          	li	a1,96
    80004328:	00004517          	auipc	a0,0x4
    8000432c:	06850513          	addi	a0,a0,104 # 80008390 <CONSOLE_STATUS+0x380>
    80004330:	ffffe097          	auipc	ra,0xffffe
    80004334:	9ec080e7          	jalr	-1556(ra) # 80001d1c <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004338:	00004917          	auipc	s2,0x4
    8000433c:	76890913          	addi	s2,s2,1896 # 80008aa0 <_ZN5Riscv12finishSystemE>
    80004340:	00a93823          	sd	a0,16(s2)
    semaphoreCache = kmem_cache_create("Cache of KSemaphore", sizeof(KSemaphore), nullptr, nullptr);
    80004344:	00000693          	li	a3,0
    80004348:	00000613          	li	a2,0
    8000434c:	01800593          	li	a1,24
    80004350:	00004517          	auipc	a0,0x4
    80004354:	05050513          	addi	a0,a0,80 # 800083a0 <CONSOLE_STATUS+0x390>
    80004358:	ffffe097          	auipc	ra,0xffffe
    8000435c:	9c4080e7          	jalr	-1596(ra) # 80001d1c <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004360:	00a93c23          	sd	a0,24(s2)
    PCB::initialize();
    80004364:	ffffe097          	auipc	ra,0xffffe
    80004368:	624080e7          	jalr	1572(ra) # 80002988 <_ZN3PCB10initializeEv>
    KConsole::initialize();
    8000436c:	fffff097          	auipc	ra,0xfffff
    80004370:	0d0080e7          	jalr	208(ra) # 8000343c <_ZN8KConsole10initializeEv>
    mainPMT = buddy_alloc(1);
    80004374:	00100513          	li	a0,1
    80004378:	fffff097          	auipc	ra,0xfffff
    8000437c:	c10080e7          	jalr	-1008(ra) # 80002f88 <_Z11buddy_allocm>
    80004380:	00a93423          	sd	a0,8(s2)
    for(size_t i = 0; i < NUM_OF_ENTRIES;i++)
    80004384:	00000793          	li	a5,0
    80004388:	1ff00713          	li	a4,511
    8000438c:	02f76063          	bltu	a4,a5,800043ac <_ZN5Riscv10initSystemEv+0x100>
        ((size_t*)mainPMT)[i] = 0;
    80004390:	00379693          	slli	a3,a5,0x3
    80004394:	00004717          	auipc	a4,0x4
    80004398:	71473703          	ld	a4,1812(a4) # 80008aa8 <_ZN5Riscv7mainPMTE>
    8000439c:	00d70733          	add	a4,a4,a3
    800043a0:	00073023          	sd	zero,0(a4)
    for(size_t i = 0; i < NUM_OF_ENTRIES;i++)
    800043a4:	00178793          	addi	a5,a5,1 # 1001001 <_entry-0x7effefff>
    800043a8:	fe1ff06f          	j	80004388 <_ZN5Riscv10initSystemEv+0xdc>
    KConsole::trapPrintStringInt("main PMT ", (size_t)mainPMT,16);
    800043ac:	00004917          	auipc	s2,0x4
    800043b0:	6f490913          	addi	s2,s2,1780 # 80008aa0 <_ZN5Riscv12finishSystemE>
    800043b4:	01000613          	li	a2,16
    800043b8:	00893583          	ld	a1,8(s2)
    800043bc:	00004517          	auipc	a0,0x4
    800043c0:	ffc50513          	addi	a0,a0,-4 # 800083b8 <CONSOLE_STATUS+0x3a8>
    800043c4:	fffff097          	auipc	ra,0xfffff
    800043c8:	63c080e7          	jalr	1596(ra) # 80003a00 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    uint64 kTextStart = (uint64)(&kernelTextStart);
    800043cc:	00004b17          	auipc	s6,0x4
    800043d0:	54cb3b03          	ld	s6,1356(s6) # 80008918 <_GLOBAL_OFFSET_TABLE_+0x30>
    uint64 kDataStart = (uint64)(&kernelDataStart);
    800043d4:	00004a97          	auipc	s5,0x4
    800043d8:	54caba83          	ld	s5,1356(s5) # 80008920 <_GLOBAL_OFFSET_TABLE_+0x38>
    uint64 uTextStart = (uint64)(&userTextStart);
    800043dc:	00004997          	auipc	s3,0x4
    800043e0:	59c9b983          	ld	s3,1436(s3) # 80008978 <_GLOBAL_OFFSET_TABLE_+0x90>
    uint64 uDataStart = (uint64)(&userDataStart);
    800043e4:	00004a17          	auipc	s4,0x4
    800043e8:	5bca3a03          	ld	s4,1468(s4) # 800089a0 <_GLOBAL_OFFSET_TABLE_+0xb8>
    setVirtualAddrRange(programStartAddr, kTextStart, KERNEL_RX); // before kernel instructions
    800043ec:	00b00613          	li	a2,11
    800043f0:	000b0593          	mv	a1,s6
    800043f4:	00004517          	auipc	a0,0x4
    800043f8:	4c453503          	ld	a0,1220(a0) # 800088b8 <_ZN5Riscv16programStartAddrE>
    800043fc:	00000097          	auipc	ra,0x0
    80004400:	e48080e7          	jalr	-440(ra) # 80004244 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange(kTextStart, kDataStart,KERNEL_RX); // kernel instructions
    80004404:	00b00613          	li	a2,11
    80004408:	000a8593          	mv	a1,s5
    8000440c:	000b0513          	mv	a0,s6
    80004410:	00000097          	auipc	ra,0x0
    80004414:	e34080e7          	jalr	-460(ra) # 80004244 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange((size_t)(&kernelDataStart), uTextStart, KERNEL_RW); // kernel data
    80004418:	00700613          	li	a2,7
    8000441c:	00098593          	mv	a1,s3
    80004420:	000a8513          	mv	a0,s5
    80004424:	00000097          	auipc	ra,0x0
    80004428:	e20080e7          	jalr	-480(ra) # 80004244 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange((size_t)(&userTextStart), uDataStart, USER_RX); //user instructions
    8000442c:	01b00613          	li	a2,27
    80004430:	000a0593          	mv	a1,s4
    80004434:	00098513          	mv	a0,s3
    80004438:	00000097          	auipc	ra,0x0
    8000443c:	e0c080e7          	jalr	-500(ra) # 80004244 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange((size_t)(&userDataStart), (size_t)HEAP_START_ADDR, USER_RW); // user data
    80004440:	00004997          	auipc	s3,0x4
    80004444:	4c09b983          	ld	s3,1216(s3) # 80008900 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004448:	01700613          	li	a2,23
    8000444c:	0009b583          	ld	a1,0(s3)
    80004450:	000a0513          	mv	a0,s4
    80004454:	00000097          	auipc	ra,0x0
    80004458:	df0080e7          	jalr	-528(ra) # 80004244 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange((size_t)HEAP_START_ADDR, (size_t)newStartAddr, KERNEL_RW); // kernel heap data
    8000445c:	00700613          	li	a2,7
    80004460:	00048593          	mv	a1,s1
    80004464:	0009b503          	ld	a0,0(s3)
    80004468:	00000097          	auipc	ra,0x0
    8000446c:	ddc080e7          	jalr	-548(ra) # 80004244 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange((size_t)newStartAddr, (size_t)HEAP_END_ADDR + 1,USER_RW); // user heap data
    80004470:	00004797          	auipc	a5,0x4
    80004474:	5187b783          	ld	a5,1304(a5) # 80008988 <_GLOBAL_OFFSET_TABLE_+0xa0>
    80004478:	0007b583          	ld	a1,0(a5)
    8000447c:	01700613          	li	a2,23
    80004480:	00158593          	addi	a1,a1,1
    80004484:	00048513          	mv	a0,s1
    80004488:	00000097          	auipc	ra,0x0
    8000448c:	dbc080e7          	jalr	-580(ra) # 80004244 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddr((size_t)CONSOLE_RX_DATA,0x1,0xf);
    80004490:	00f00613          	li	a2,15
    80004494:	00100593          	li	a1,1
    80004498:	00004797          	auipc	a5,0x4
    8000449c:	4587b783          	ld	a5,1112(a5) # 800088f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800044a0:	0007b503          	ld	a0,0(a5)
    800044a4:	00000097          	auipc	ra,0x0
    800044a8:	c4c080e7          	jalr	-948(ra) # 800040f0 <_ZN5Riscv14setVirtualAddrEmmm>
    setVirtualAddr((size_t)CONSOLE_TX_DATA,0x1,0xf);
    800044ac:	00f00613          	li	a2,15
    800044b0:	00100593          	li	a1,1
    800044b4:	00004797          	auipc	a5,0x4
    800044b8:	47c7b783          	ld	a5,1148(a5) # 80008930 <_GLOBAL_OFFSET_TABLE_+0x48>
    800044bc:	0007b503          	ld	a0,0(a5)
    800044c0:	00000097          	auipc	ra,0x0
    800044c4:	c30080e7          	jalr	-976(ra) # 800040f0 <_ZN5Riscv14setVirtualAddrEmmm>
    setVirtualAddr((size_t)CONSOLE_STATUS,0x1,0xf);
    800044c8:	00f00613          	li	a2,15
    800044cc:	00100593          	li	a1,1
    800044d0:	00004797          	auipc	a5,0x4
    800044d4:	4287b783          	ld	a5,1064(a5) # 800088f8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800044d8:	0007b503          	ld	a0,0(a5)
    800044dc:	00000097          	auipc	ra,0x0
    800044e0:	c14080e7          	jalr	-1004(ra) # 800040f0 <_ZN5Riscv14setVirtualAddrEmmm>
    setVirtualAddr(0xc201004,0x1,0xf);
    800044e4:	00f00613          	li	a2,15
    800044e8:	00100593          	li	a1,1
    800044ec:	0c201537          	lui	a0,0xc201
    800044f0:	00450513          	addi	a0,a0,4 # c201004 <_entry-0x73dfeffc>
    800044f4:	00000097          	auipc	ra,0x0
    800044f8:	bfc080e7          	jalr	-1028(ra) # 800040f0 <_ZN5Riscv14setVirtualAddrEmmm>
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800044fc:	000407b7          	lui	a5,0x40
    80004500:	1007a073          	csrs	sstatus,a5
    size_t satp = ((size_t)1 << 63) | ((size_t)mainPMT >> 12);
    80004504:	00893783          	ld	a5,8(s2)
    80004508:	00c7d793          	srli	a5,a5,0xc
    8000450c:	fff00713          	li	a4,-1
    80004510:	03f71713          	slli	a4,a4,0x3f
    80004514:	00e7e7b3          	or	a5,a5,a4
    __asm__ volatile("csrw satp, %0" : :"r"(satp));
    80004518:	18079073          	csrw	satp,a5
}
    8000451c:	03813083          	ld	ra,56(sp)
    80004520:	03013403          	ld	s0,48(sp)
    80004524:	02813483          	ld	s1,40(sp)
    80004528:	02013903          	ld	s2,32(sp)
    8000452c:	01813983          	ld	s3,24(sp)
    80004530:	01013a03          	ld	s4,16(sp)
    80004534:	00813a83          	ld	s5,8(sp)
    80004538:	00013b03          	ld	s6,0(sp)
    8000453c:	04010113          	addi	sp,sp,64
    80004540:	00008067          	ret

0000000080004544 <_ZN5Riscv10kernelMainEv>:
    if(kernelMainCalled) return;
    80004544:	00004797          	auipc	a5,0x4
    80004548:	57c7c783          	lbu	a5,1404(a5) # 80008ac0 <_ZN5Riscv16kernelMainCalledE>
    8000454c:	00078463          	beqz	a5,80004554 <_ZN5Riscv10kernelMainEv+0x10>
    80004550:	00008067          	ret
{
    80004554:	ff010113          	addi	sp,sp,-16
    80004558:	00113423          	sd	ra,8(sp)
    8000455c:	00813023          	sd	s0,0(sp)
    80004560:	01010413          	addi	s0,sp,16
    kernelMainCalled = true;
    80004564:	00100793          	li	a5,1
    80004568:	00004717          	auipc	a4,0x4
    8000456c:	54f70c23          	sb	a5,1368(a4) # 80008ac0 <_ZN5Riscv16kernelMainCalledE>
    initSystem();
    80004570:	00000097          	auipc	ra,0x0
    80004574:	d3c080e7          	jalr	-708(ra) # 800042ac <_ZN5Riscv10initSystemEv>
    enableInterrupts();
    80004578:	00000097          	auipc	ra,0x0
    8000457c:	a4c080e7          	jalr	-1460(ra) # 80003fc4 <_ZN5Riscv16enableInterruptsEv>
    while(!PCB::userPCB->isFinished())
    80004580:	00004797          	auipc	a5,0x4
    80004584:	3e87b783          	ld	a5,1000(a5) # 80008968 <_GLOBAL_OFFSET_TABLE_+0x80>
    80004588:	0007b503          	ld	a0,0(a5)
    8000458c:	ffffe097          	auipc	ra,0xffffe
    80004590:	524080e7          	jalr	1316(ra) # 80002ab0 <_ZN3PCB10isFinishedEv>
    80004594:	00051863          	bnez	a0,800045a4 <_ZN5Riscv10kernelMainEv+0x60>
        thread_dispatch_kernel();
    80004598:	ffffd097          	auipc	ra,0xffffd
    8000459c:	ca0080e7          	jalr	-864(ra) # 80001238 <_Z22thread_dispatch_kernelv>
    while(!PCB::userPCB->isFinished())
    800045a0:	fe1ff06f          	j	80004580 <_ZN5Riscv10kernelMainEv+0x3c>
    endSystem();
    800045a4:	00000097          	auipc	ra,0x0
    800045a8:	a60080e7          	jalr	-1440(ra) # 80004004 <_ZN5Riscv9endSystemEv>
}
    800045ac:	00813083          	ld	ra,8(sp)
    800045b0:	00013403          	ld	s0,0(sp)
    800045b4:	01010113          	addi	sp,sp,16
    800045b8:	00008067          	ret

00000000800045bc <_ZN5Riscv14addVirtualAddrEm>:

void Riscv::addVirtualAddr(size_t addr)
{
    800045bc:	ff010113          	addi	sp,sp,-16
    800045c0:	00113423          	sd	ra,8(sp)
    800045c4:	00813023          	sd	s0,0(sp)
    800045c8:	01010413          	addi	s0,sp,16
    setVirtualAddr(addr, 0x1, 0xf);
    800045cc:	00f00613          	li	a2,15
    800045d0:	00100593          	li	a1,1
    800045d4:	00000097          	auipc	ra,0x0
    800045d8:	b1c080e7          	jalr	-1252(ra) # 800040f0 <_ZN5Riscv14setVirtualAddrEmmm>
}
    800045dc:	00813083          	ld	ra,8(sp)
    800045e0:	00013403          	ld	s0,0(sp)
    800045e4:	01010113          	addi	sp,sp,16
    800045e8:	00008067          	ret

00000000800045ec <_ZN5Riscv19addVirtualAddrInstrEm>:

void Riscv::addVirtualAddrInstr(size_t addr)
{
    800045ec:	ff010113          	addi	sp,sp,-16
    800045f0:	00113423          	sd	ra,8(sp)
    800045f4:	00813023          	sd	s0,0(sp)
    800045f8:	01010413          	addi	s0,sp,16
    setVirtualAddr(addr, 0x1, 0xf);
    800045fc:	00f00613          	li	a2,15
    80004600:	00100593          	li	a1,1
    80004604:	00000097          	auipc	ra,0x0
    80004608:	aec080e7          	jalr	-1300(ra) # 800040f0 <_ZN5Riscv14setVirtualAddrEmmm>
}
    8000460c:	00813083          	ld	ra,8(sp)
    80004610:	00013403          	ld	s0,0(sp)
    80004614:	01010113          	addi	sp,sp,16
    80004618:	00008067          	ret

000000008000461c <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    8000461c:	ff010113          	addi	sp,sp,-16
    80004620:	00813423          	sd	s0,8(sp)
    80004624:	01010413          	addi	s0,sp,16
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    80004628:	00200793          	li	a5,2
    8000462c:	1047b073          	csrc	sie,a5
}
    80004630:	00813403          	ld	s0,8(sp)
    80004634:	01010113          	addi	sp,sp,16
    80004638:	00008067          	ret

000000008000463c <_ZN5Riscv13w_a0_sscratchEv>:

void Riscv::w_a0_sscratch()
{
    8000463c:	ff010113          	addi	sp,sp,-16
    80004640:	00813423          	sd	s0,8(sp)
    80004644:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    80004648:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    8000464c:	00004717          	auipc	a4,0x4
    80004650:	33473703          	ld	a4,820(a4) # 80008980 <_GLOBAL_OFFSET_TABLE_+0x98>
    80004654:	00073703          	ld	a4,0(a4)
    80004658:	01073703          	ld	a4,16(a4)
    8000465c:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    80004660:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80004664:	00078593          	mv	a1,a5
}
    80004668:	00813403          	ld	s0,8(sp)
    8000466c:	01010113          	addi	sp,sp,16
    80004670:	00008067          	ret

0000000080004674 <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    80004674:	ff010113          	addi	sp,sp,-16
    80004678:	00813423          	sd	s0,8(sp)
    8000467c:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread)
    80004680:	00004797          	auipc	a5,0x4
    80004684:	3007b783          	ld	a5,768(a5) # 80008980 <_GLOBAL_OFFSET_TABLE_+0x98>
    80004688:	0007b783          	ld	a5,0(a5)
    8000468c:	0007c783          	lbu	a5,0(a5)
    80004690:	00078c63          	beqz	a5,800046a8 <_ZN5Riscv14changePrivModeEv+0x34>
    80004694:	10000793          	li	a5,256
    80004698:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    8000469c:	00813403          	ld	s0,8(sp)
    800046a0:	01010113          	addi	sp,sp,16
    800046a4:	00008067          	ret
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    800046a8:	10000793          	li	a5,256
    800046ac:	1007b073          	csrc	sstatus,a5
    800046b0:	fedff06f          	j	8000469c <_ZN5Riscv14changePrivModeEv+0x28>

00000000800046b4 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    800046b4:	f9010113          	addi	sp,sp,-112
    800046b8:	06113423          	sd	ra,104(sp)
    800046bc:	06813023          	sd	s0,96(sp)
    800046c0:	04913c23          	sd	s1,88(sp)
    800046c4:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    800046c8:	00070713          	mv	a4,a4
    800046cc:	00004797          	auipc	a5,0x4
    800046d0:	2dc7b783          	ld	a5,732(a5) # 800089a8 <_GLOBAL_OFFSET_TABLE_+0xc0>
    800046d4:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    800046d8:	00004797          	auipc	a5,0x4
    800046dc:	2a87b783          	ld	a5,680(a5) # 80008980 <_GLOBAL_OFFSET_TABLE_+0x98>
    800046e0:	0007b783          	ld	a5,0(a5)
    800046e4:	14002773          	csrr	a4,sscratch
    800046e8:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    800046ec:	142027f3          	csrr	a5,scause
    800046f0:	faf43c23          	sd	a5,-72(s0)
    return scause;
    800046f4:	fb843783          	ld	a5,-72(s0)

    static const size_t storePF = 15;
    static const size_t loadPF = 13;
    static const size_t instrPF = 12;

    switch(scause)
    800046f8:	00f00713          	li	a4,15
    800046fc:	02f76863          	bltu	a4,a5,8000472c <_ZN5Riscv20handleSupervisorTrapEv+0x78>
    80004700:	00200713          	li	a4,2
    80004704:	10e7e863          	bltu	a5,a4,80004814 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
    80004708:	00f00713          	li	a4,15
    8000470c:	10f76463          	bltu	a4,a5,80004814 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
    80004710:	00279793          	slli	a5,a5,0x2
    80004714:	00004717          	auipc	a4,0x4
    80004718:	cb070713          	addi	a4,a4,-848 # 800083c4 <CONSOLE_STATUS+0x3b4>
    8000471c:	00e787b3          	add	a5,a5,a4
    80004720:	0007a783          	lw	a5,0(a5)
    80004724:	00e787b3          	add	a5,a5,a4
    80004728:	00078067          	jr	a5
    8000472c:	fff00713          	li	a4,-1
    80004730:	03f71713          	slli	a4,a4,0x3f
    80004734:	00170713          	addi	a4,a4,1
    80004738:	04e78a63          	beq	a5,a4,8000478c <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
    8000473c:	fff00713          	li	a4,-1
    80004740:	03f71713          	slli	a4,a4,0x3f
    80004744:	00970713          	addi	a4,a4,9
    80004748:	0ce79663          	bne	a5,a4,80004814 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            changePrivMode();
            break;
        }
        case hwInterrupt:
        {
            KConsole::getCharactersFromConsole();
    8000474c:	fffff097          	auipc	ra,0xfffff
    80004750:	e48080e7          	jalr	-440(ra) # 80003594 <_ZN8KConsole24getCharactersFromConsoleEv>
            plic_complete(plic_claim());
    80004754:	00002097          	auipc	ra,0x2
    80004758:	a80080e7          	jalr	-1408(ra) # 800061d4 <plic_claim>
    8000475c:	00002097          	auipc	ra,0x2
    80004760:	ab0080e7          	jalr	-1360(ra) # 8000620c <plic_complete>
            break;
    80004764:	0b00006f          	j	80004814 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            PCB::threadExitHandler();
    80004768:	ffffe097          	auipc	ra,0xffffe
    8000476c:	36c080e7          	jalr	876(ra) # 80002ad4 <_ZN3PCB17threadExitHandlerEv>
            break;
    80004770:	0a40006f          	j	80004814 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            PCB::threadExitHandler();
    80004774:	ffffe097          	auipc	ra,0xffffe
    80004778:	360080e7          	jalr	864(ra) # 80002ad4 <_ZN3PCB17threadExitHandlerEv>
            break;
    8000477c:	0980006f          	j	80004814 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            PCB::threadExitHandler();
    80004780:	ffffe097          	auipc	ra,0xffffe
    80004784:	354080e7          	jalr	852(ra) # 80002ad4 <_ZN3PCB17threadExitHandlerEv>
            break;
    80004788:	08c0006f          	j	80004814 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    8000478c:	141027f3          	csrr	a5,sepc
    80004790:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80004794:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    80004798:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    8000479c:	100027f3          	csrr	a5,sstatus
    800047a0:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    800047a4:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    800047a8:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    800047ac:	00200793          	li	a5,2
    800047b0:	1447b073          	csrc	sip,a5
            totalTime++;
    800047b4:	00004717          	auipc	a4,0x4
    800047b8:	2ec70713          	addi	a4,a4,748 # 80008aa0 <_ZN5Riscv12finishSystemE>
    800047bc:	02873783          	ld	a5,40(a4)
    800047c0:	00178793          	addi	a5,a5,1
    800047c4:	02f73423          	sd	a5,40(a4)
            PCB::timeSliceCounter++;
    800047c8:	00004497          	auipc	s1,0x4
    800047cc:	1704b483          	ld	s1,368(s1) # 80008938 <_GLOBAL_OFFSET_TABLE_+0x50>
    800047d0:	0004b783          	ld	a5,0(s1)
    800047d4:	00178793          	addi	a5,a5,1
    800047d8:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    800047dc:	fffff097          	auipc	ra,0xfffff
    800047e0:	2f4080e7          	jalr	756(ra) # 80003ad0 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    800047e4:	00004797          	auipc	a5,0x4
    800047e8:	19c7b783          	ld	a5,412(a5) # 80008980 <_GLOBAL_OFFSET_TABLE_+0x98>
    800047ec:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    800047f0:	0187b783          	ld	a5,24(a5)
    800047f4:	0004b703          	ld	a4,0(s1)
    800047f8:	02f77863          	bgeu	a4,a5,80004828 <_ZN5Riscv20handleSupervisorTrapEv+0x174>
            Riscv::w_sstatus(sstatus);
    800047fc:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80004800:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80004804:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80004808:	14179073          	csrw	sepc,a5
            changePrivMode();
    8000480c:	00000097          	auipc	ra,0x0
    80004810:	e68080e7          	jalr	-408(ra) # 80004674 <_ZN5Riscv14changePrivModeEv>
            Riscv::w_sepc(sepc);
            changePrivMode();
            break;
        }
    }
}
    80004814:	06813083          	ld	ra,104(sp)
    80004818:	06013403          	ld	s0,96(sp)
    8000481c:	05813483          	ld	s1,88(sp)
    80004820:	07010113          	addi	sp,sp,112
    80004824:	00008067          	ret
                PCB::timeSliceCounter = 0;
    80004828:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    8000482c:	ffffe097          	auipc	ra,0xffffe
    80004830:	038080e7          	jalr	56(ra) # 80002864 <_ZN3PCB8dispatchEv>
    80004834:	fc9ff06f          	j	800047fc <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            PCB::threadExitHandler();
    80004838:	ffffe097          	auipc	ra,0xffffe
    8000483c:	29c080e7          	jalr	668(ra) # 80002ad4 <_ZN3PCB17threadExitHandlerEv>
            break;
    80004840:	fd5ff06f          	j	80004814 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            PCB::threadExitHandler();
    80004844:	ffffe097          	auipc	ra,0xffffe
    80004848:	290080e7          	jalr	656(ra) # 80002ad4 <_ZN3PCB17threadExitHandlerEv>
            break;
    8000484c:	fc9ff06f          	j	80004814 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            PCB::threadExitHandler();
    80004850:	ffffe097          	auipc	ra,0xffffe
    80004854:	284080e7          	jalr	644(ra) # 80002ad4 <_ZN3PCB17threadExitHandlerEv>
            break;
    80004858:	fbdff06f          	j	80004814 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    8000485c:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80004860:	14102773          	csrr	a4,sepc
    80004864:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    80004868:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    8000486c:	00470713          	addi	a4,a4,4
    80004870:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80004874:	10002773          	csrr	a4,sstatus
    80004878:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    8000487c:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80004880:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    80004884:	04300713          	li	a4,67
    80004888:	02f76463          	bltu	a4,a5,800048b0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
    8000488c:	00279793          	slli	a5,a5,0x2
    80004890:	00004717          	auipc	a4,0x4
    80004894:	b7470713          	addi	a4,a4,-1164 # 80008404 <CONSOLE_STATUS+0x3f4>
    80004898:	00e787b3          	add	a5,a5,a4
    8000489c:	0007a783          	lw	a5,0(a5)
    800048a0:	00e787b3          	add	a5,a5,a4
    800048a4:	00078067          	jr	a5
                    MemoryAllocator::memAllocHandler();
    800048a8:	00000097          	auipc	ra,0x0
    800048ac:	4f0080e7          	jalr	1264(ra) # 80004d98 <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    800048b0:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800048b4:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    800048b8:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    800048bc:	14179073          	csrw	sepc,a5
            changePrivMode();
    800048c0:	00000097          	auipc	ra,0x0
    800048c4:	db4080e7          	jalr	-588(ra) # 80004674 <_ZN5Riscv14changePrivModeEv>
}
    800048c8:	f4dff06f          	j	80004814 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
                    MemoryAllocator::memFreeHandler();
    800048cc:	00000097          	auipc	ra,0x0
    800048d0:	53c080e7          	jalr	1340(ra) # 80004e08 <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    800048d4:	fddff06f          	j	800048b0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadMakePCBHandler();
    800048d8:	ffffe097          	auipc	ra,0xffffe
    800048dc:	3c4080e7          	jalr	964(ra) # 80002c9c <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    800048e0:	fd1ff06f          	j	800048b0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadCreateHandler();
    800048e4:	ffffe097          	auipc	ra,0xffffe
    800048e8:	2d0080e7          	jalr	720(ra) # 80002bb4 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    800048ec:	fc5ff06f          	j	800048b0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadStartHandler();
    800048f0:	ffffe097          	auipc	ra,0xffffe
    800048f4:	368080e7          	jalr	872(ra) # 80002c58 <_ZN3PCB18threadStartHandlerEv>
                    break;
    800048f8:	fb9ff06f          	j	800048b0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadDispatchHandler();
    800048fc:	ffffe097          	auipc	ra,0xffffe
    80004900:	224080e7          	jalr	548(ra) # 80002b20 <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    80004904:	fadff06f          	j	800048b0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadExitHandler();
    80004908:	ffffe097          	auipc	ra,0xffffe
    8000490c:	1cc080e7          	jalr	460(ra) # 80002ad4 <_ZN3PCB17threadExitHandlerEv>
                    break;
    80004910:	fa1ff06f          	j	800048b0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadSleepHandler();
    80004914:	ffffe097          	auipc	ra,0xffffe
    80004918:	23c080e7          	jalr	572(ra) # 80002b50 <_ZN3PCB18threadSleepHandlerEv>
                    break;
    8000491c:	f95ff06f          	j	800048b0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadDelPCBHandler();
    80004920:	ffffe097          	auipc	ra,0xffffe
    80004924:	414080e7          	jalr	1044(ra) # 80002d34 <_ZN3PCB19threadDelPCBHandlerEv>
                    break;
    80004928:	f89ff06f          	j	800048b0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semOpenHandler();
    8000492c:	00001097          	auipc	ra,0x1
    80004930:	ea8080e7          	jalr	-344(ra) # 800057d4 <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    80004934:	f7dff06f          	j	800048b0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semWaitHandler();
    80004938:	00001097          	auipc	ra,0x1
    8000493c:	f50080e7          	jalr	-176(ra) # 80005888 <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    80004940:	f71ff06f          	j	800048b0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semSignalHandler();
    80004944:	00001097          	auipc	ra,0x1
    80004948:	f98080e7          	jalr	-104(ra) # 800058dc <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    8000494c:	f65ff06f          	j	800048b0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semCloseHandler();
    80004950:	00001097          	auipc	ra,0x1
    80004954:	fd0080e7          	jalr	-48(ra) # 80005920 <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    80004958:	f59ff06f          	j	800048b0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KConsole::getcHandler();
    8000495c:	fffff097          	auipc	ra,0xfffff
    80004960:	e3c080e7          	jalr	-452(ra) # 80003798 <_ZN8KConsole11getcHandlerEv>
                    break;
    80004964:	f4dff06f          	j	800048b0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KConsole::putcHandler();
    80004968:	fffff097          	auipc	ra,0xfffff
    8000496c:	e00080e7          	jalr	-512(ra) # 80003768 <_ZN8KConsole11putcHandlerEv>
                    break;
    80004970:	f41ff06f          	j	800048b0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KConsole::getCharHandler();
    80004974:	fffff097          	auipc	ra,0xfffff
    80004978:	f80080e7          	jalr	-128(ra) # 800038f4 <_ZN8KConsole14getCharHandlerEv>
                    break;
    8000497c:	f35ff06f          	j	800048b0 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>

0000000080004980 <_ZN15MemoryAllocator10initMemoryEPv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory(void* startAddr)
{
    80004980:	ff010113          	addi	sp,sp,-16
    80004984:	00813423          	sd	s0,8(sp)
    80004988:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    8000498c:	00004717          	auipc	a4,0x4
    80004990:	14472703          	lw	a4,324(a4) # 80008ad0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004994:	00100793          	li	a5,1
    80004998:	02f70c63          	beq	a4,a5,800049d0 <_ZN15MemoryAllocator10initMemoryEPv+0x50>
        return;
    memoryInitiliaized = 1;
    8000499c:	00004797          	auipc	a5,0x4
    800049a0:	13478793          	addi	a5,a5,308 # 80008ad0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800049a4:	00100713          	li	a4,1
    800049a8:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    800049ac:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)startAddr;
    800049b0:	00a7b823          	sd	a0,16(a5)
    headFree->next = 0;
    800049b4:	00053423          	sd	zero,8(a0)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)startAddr  + 1 - sizeof(BlockHeader));
    800049b8:	00004797          	auipc	a5,0x4
    800049bc:	fd07b783          	ld	a5,-48(a5) # 80008988 <_GLOBAL_OFFSET_TABLE_+0xa0>
    800049c0:	0007b783          	ld	a5,0(a5)
    800049c4:	40a787b3          	sub	a5,a5,a0
    800049c8:	ff178793          	addi	a5,a5,-15
    800049cc:	00f53023          	sd	a5,0(a0)
}
    800049d0:	00813403          	ld	s0,8(sp)
    800049d4:	01010113          	addi	sp,sp,16
    800049d8:	00008067          	ret

00000000800049dc <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>:

void MemoryAllocator::insertAllFragment(void *addr, size_t size, void* nxtAddr)
{
    800049dc:	ff010113          	addi	sp,sp,-16
    800049e0:	00813423          	sd	s0,8(sp)
    800049e4:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    800049e8:	00004797          	auipc	a5,0x4
    800049ec:	0e87a783          	lw	a5,232(a5) # 80008ad0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800049f0:	02078a63          	beqz	a5,80004a24 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>
        return;
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    800049f4:	00053423          	sd	zero,8(a0)
    newAllocated->size = size;
    800049f8:	00b53023          	sd	a1,0(a0)
    if(headAllocated == 0)
    800049fc:	00004797          	auipc	a5,0x4
    80004a00:	0dc7b783          	ld	a5,220(a5) # 80008ad8 <_ZN15MemoryAllocator13headAllocatedE>
    80004a04:	02078663          	beqz	a5,80004a30 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x54>
    {
        headAllocated = newAllocated;
    }
    else if(nxtAddr <= HEAP_END_ADDR)
    80004a08:	00004717          	auipc	a4,0x4
    80004a0c:	f8073703          	ld	a4,-128(a4) # 80008988 <_GLOBAL_OFFSET_TABLE_+0xa0>
    80004a10:	00073703          	ld	a4,0(a4)
    80004a14:	02c76463          	bltu	a4,a2,80004a3c <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>
    {
        BlockHeader * allFrag = (BlockHeader*)nxtAddr;
        newAllocated->next = allFrag->next;
    80004a18:	00863783          	ld	a5,8(a2)
    80004a1c:	00f53423          	sd	a5,8(a0)
        allFrag->next = newAllocated;
    80004a20:	00a63423          	sd	a0,8(a2)
    else
    {
        newAllocated->next = headAllocated;
        headAllocated = newAllocated;
    }
}
    80004a24:	00813403          	ld	s0,8(sp)
    80004a28:	01010113          	addi	sp,sp,16
    80004a2c:	00008067          	ret
        headAllocated = newAllocated;
    80004a30:	00004797          	auipc	a5,0x4
    80004a34:	0aa7b423          	sd	a0,168(a5) # 80008ad8 <_ZN15MemoryAllocator13headAllocatedE>
    80004a38:	fedff06f          	j	80004a24 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>
        newAllocated->next = headAllocated;
    80004a3c:	00f53423          	sd	a5,8(a0)
        headAllocated = newAllocated;
    80004a40:	00004797          	auipc	a5,0x4
    80004a44:	08a7bc23          	sd	a0,152(a5) # 80008ad8 <_ZN15MemoryAllocator13headAllocatedE>
    80004a48:	fddff06f          	j	80004a24 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>

0000000080004a4c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80004a4c:	ff010113          	addi	sp,sp,-16
    80004a50:	00813423          	sd	s0,8(sp)
    80004a54:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    80004a58:	00004797          	auipc	a5,0x4
    80004a5c:	0787a783          	lw	a5,120(a5) # 80008ad0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004a60:	02078c63          	beqz	a5,80004a98 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x4c>
        return;
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80004a64:	00004797          	auipc	a5,0x4
    80004a68:	0747b783          	ld	a5,116(a5) # 80008ad8 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80004a6c:	00053423          	sd	zero,8(a0)
    newAllocated->size = size;
    80004a70:	00b53023          	sd	a1,0(a0)
    BlockHeader* prev = 0;
    80004a74:	00000713          	li	a4,0
    while(curr != 0)
    80004a78:	00078c63          	beqz	a5,80004a90 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x44>
    {
        if((void*)curr > addr)
    80004a7c:	00f56863          	bltu	a0,a5,80004a8c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x40>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80004a80:	00078713          	mv	a4,a5
        curr = curr->next;
    80004a84:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80004a88:	ff1ff06f          	j	80004a78 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x2c>
            newAllocated->next = curr;
    80004a8c:	00f53423          	sd	a5,8(a0)
    }

    if(prev == 0)
    80004a90:	00070a63          	beqz	a4,80004aa4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x58>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80004a94:	00a73423          	sd	a0,8(a4)
}
    80004a98:	00813403          	ld	s0,8(sp)
    80004a9c:	01010113          	addi	sp,sp,16
    80004aa0:	00008067          	ret
        headAllocated = newAllocated;
    80004aa4:	00004797          	auipc	a5,0x4
    80004aa8:	02a7ba23          	sd	a0,52(a5) # 80008ad8 <_ZN15MemoryAllocator13headAllocatedE>
    80004aac:	fedff06f          	j	80004a98 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x4c>

0000000080004ab0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    //initMemory();
    if(memoryInitiliaized == 0)
    80004ab0:	00004797          	auipc	a5,0x4
    80004ab4:	0207a783          	lw	a5,32(a5) # 80008ad0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004ab8:	0e078e63          	beqz	a5,80004bb4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x104>
{
    80004abc:	fe010113          	addi	sp,sp,-32
    80004ac0:	00113c23          	sd	ra,24(sp)
    80004ac4:	00813823          	sd	s0,16(sp)
    80004ac8:	00913423          	sd	s1,8(sp)
    80004acc:	02010413          	addi	s0,sp,32
    80004ad0:	00050593          	mv	a1,a0
        return nullptr;
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004ad4:	00004497          	auipc	s1,0x4
    80004ad8:	00c4b483          	ld	s1,12(s1) # 80008ae0 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80004adc:	00000713          	li	a4,0
    while(curr != 0)
    80004ae0:	0a048e63          	beqz	s1,80004b9c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xec>
    {
        if(curr->size >= size)
    80004ae4:	0004b783          	ld	a5,0(s1)
    80004ae8:	00b7f863          	bgeu	a5,a1,80004af8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            //insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80004aec:	00048713          	mv	a4,s1
        curr = curr->next;
    80004af0:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004af4:	fedff06f          	j	80004ae0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80004af8:	01058693          	addi	a3,a1,16
    80004afc:	00d486b3          	add	a3,s1,a3
            void* nxtAllFrag = ((char*)curr + curr->size + sizeof(BlockHeader));
    80004b00:	01078613          	addi	a2,a5,16
    80004b04:	00c48633          	add	a2,s1,a2
            if(newAddr <= HEAP_END_ADDR)
    80004b08:	00004517          	auipc	a0,0x4
    80004b0c:	e8053503          	ld	a0,-384(a0) # 80008988 <_GLOBAL_OFFSET_TABLE_+0xa0>
    80004b10:	00053503          	ld	a0,0(a0)
    80004b14:	06d56063          	bltu	a0,a3,80004b74 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xc4>
                uint64 size2 = curr->size - size;
    80004b18:	40b78533          	sub	a0,a5,a1
                if(size2 > sizeof(BlockHeader))
    80004b1c:	01000813          	li	a6,16
    80004b20:	02a87663          	bgeu	a6,a0,80004b4c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
                    newFree->next = curr->next;
    80004b24:	0084b783          	ld	a5,8(s1)
    80004b28:	00f6b423          	sd	a5,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80004b2c:	ff050513          	addi	a0,a0,-16
    80004b30:	00a6b023          	sd	a0,0(a3)
                    if (prev != 0)
    80004b34:	00070663          	beqz	a4,80004b40 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x90>
                        prev->next = newFree;
    80004b38:	00d73423          	sd	a3,8(a4)
    80004b3c:	0400006f          	j	80004b7c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = newFree;
    80004b40:	00004797          	auipc	a5,0x4
    80004b44:	fad7b023          	sd	a3,-96(a5) # 80008ae0 <_ZN15MemoryAllocator8headFreeE>
    80004b48:	0340006f          	j	80004b7c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                    if(prev != 0)
    80004b4c:	00070a63          	beqz	a4,80004b60 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb0>
                        prev->next = curr->next;
    80004b50:	0084b683          	ld	a3,8(s1)
    80004b54:	00d73423          	sd	a3,8(a4)
                    size+=size2;
    80004b58:	00078593          	mv	a1,a5
    80004b5c:	0200006f          	j	80004b7c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = curr->next;
    80004b60:	0084b703          	ld	a4,8(s1)
    80004b64:	00004697          	auipc	a3,0x4
    80004b68:	f6e6be23          	sd	a4,-132(a3) # 80008ae0 <_ZN15MemoryAllocator8headFreeE>
                    size+=size2;
    80004b6c:	00078593          	mv	a1,a5
    80004b70:	00c0006f          	j	80004b7c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                if(prev != 0)
    80004b74:	00070e63          	beqz	a4,80004b90 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
                    prev->next = 0;
    80004b78:	00073423          	sd	zero,8(a4)
            insertAllFragment(oldAddr, size, nxtAllFrag);
    80004b7c:	00048513          	mv	a0,s1
    80004b80:	00000097          	auipc	ra,0x0
    80004b84:	e5c080e7          	jalr	-420(ra) # 800049dc <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80004b88:	01048513          	addi	a0,s1,16
            break;
    80004b8c:	0140006f          	j	80004ba0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf0>
                    headFree = 0;
    80004b90:	00004797          	auipc	a5,0x4
    80004b94:	f407b823          	sd	zero,-176(a5) # 80008ae0 <_ZN15MemoryAllocator8headFreeE>
    80004b98:	fe5ff06f          	j	80004b7c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
    uint64 retval = 0;
    80004b9c:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80004ba0:	01813083          	ld	ra,24(sp)
    80004ba4:	01013403          	ld	s0,16(sp)
    80004ba8:	00813483          	ld	s1,8(sp)
    80004bac:	02010113          	addi	sp,sp,32
    80004bb0:	00008067          	ret
        return nullptr;
    80004bb4:	00000513          	li	a0,0
}
    80004bb8:	00008067          	ret

0000000080004bbc <_ZN15MemoryAllocator9mem_allocEm>:
{
    80004bbc:	ff010113          	addi	sp,sp,-16
    80004bc0:	00113423          	sd	ra,8(sp)
    80004bc4:	00813023          	sd	s0,0(sp)
    80004bc8:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80004bcc:	00000097          	auipc	ra,0x0
    80004bd0:	ee4080e7          	jalr	-284(ra) # 80004ab0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80004bd4:	00813083          	ld	ra,8(sp)
    80004bd8:	00013403          	ld	s0,0(sp)
    80004bdc:	01010113          	addi	sp,sp,16
    80004be0:	00008067          	ret

0000000080004be4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80004be4:	ff010113          	addi	sp,sp,-16
    80004be8:	00813423          	sd	s0,8(sp)
    80004bec:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    80004bf0:	00004797          	auipc	a5,0x4
    80004bf4:	ee07a783          	lw	a5,-288(a5) # 80008ad0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004bf8:	06078263          	beqz	a5,80004c5c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>
        return;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004bfc:	00004797          	auipc	a5,0x4
    80004c00:	ee47b783          	ld	a5,-284(a5) # 80008ae0 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80004c04:	00b53023          	sd	a1,0(a0)
    newSegment->next = 0;
    80004c08:	00053423          	sd	zero,8(a0)
    BlockHeader* prev = 0;
    80004c0c:	00000713          	li	a4,0
    while(curr != 0)
    80004c10:	00078c63          	beqz	a5,80004c28 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x44>
    {
        if((void*)curr > addr)
    80004c14:	00f56863          	bltu	a0,a5,80004c24 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x40>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80004c18:	00078713          	mv	a4,a5
        curr = curr->next;
    80004c1c:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80004c20:	ff1ff06f          	j	80004c10 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x2c>
            newSegment->next = curr;
    80004c24:	00f53423          	sd	a5,8(a0)
    }

    if(prev == 0)
    80004c28:	04070063          	beqz	a4,80004c68 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x84>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80004c2c:	00a73423          	sd	a0,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80004c30:	00853783          	ld	a5,8(a0)
    80004c34:	00078a63          	beqz	a5,80004c48 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x64>
    80004c38:	00053603          	ld	a2,0(a0)
    80004c3c:	01060693          	addi	a3,a2,16
    80004c40:	00d506b3          	add	a3,a0,a3
    80004c44:	02d78863          	beq	a5,a3,80004c74 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x90>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80004c48:	00070a63          	beqz	a4,80004c5c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>
    80004c4c:	00073683          	ld	a3,0(a4)
    80004c50:	01068793          	addi	a5,a3,16
    80004c54:	00f707b3          	add	a5,a4,a5
    80004c58:	02a78c63          	beq	a5,a0,80004c90 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80004c5c:	00813403          	ld	s0,8(sp)
    80004c60:	01010113          	addi	sp,sp,16
    80004c64:	00008067          	ret
        headFree = newSegment;
    80004c68:	00004797          	auipc	a5,0x4
    80004c6c:	e6a7bc23          	sd	a0,-392(a5) # 80008ae0 <_ZN15MemoryAllocator8headFreeE>
    80004c70:	fc1ff06f          	j	80004c30 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x4c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80004c74:	0007b683          	ld	a3,0(a5)
    80004c78:	00d60633          	add	a2,a2,a3
    80004c7c:	01060613          	addi	a2,a2,16
    80004c80:	00c53023          	sd	a2,0(a0)
        newSegment->next = newSegment->next->next;
    80004c84:	0087b783          	ld	a5,8(a5)
    80004c88:	00f53423          	sd	a5,8(a0)
    80004c8c:	fbdff06f          	j	80004c48 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x64>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80004c90:	00053783          	ld	a5,0(a0)
    80004c94:	00f686b3          	add	a3,a3,a5
    80004c98:	01068693          	addi	a3,a3,16
    80004c9c:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80004ca0:	00853783          	ld	a5,8(a0)
    80004ca4:	00f73423          	sd	a5,8(a4)
    80004ca8:	fb5ff06f          	j	80004c5c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>

0000000080004cac <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    //initMemory();
    if(memoryInitiliaized == 0)
    80004cac:	00004797          	auipc	a5,0x4
    80004cb0:	e247a783          	lw	a5,-476(a5) # 80008ad0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004cb4:	08078263          	beqz	a5,80004d38 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x8c>
{
    80004cb8:	fe010113          	addi	sp,sp,-32
    80004cbc:	00113c23          	sd	ra,24(sp)
    80004cc0:	00813823          	sd	s0,16(sp)
    80004cc4:	00913423          	sd	s1,8(sp)
    80004cc8:	02010413          	addi	s0,sp,32
        return 1;
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80004ccc:	00004497          	auipc	s1,0x4
    80004cd0:	e0c4b483          	ld	s1,-500(s1) # 80008ad8 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80004cd4:	00000713          	li	a4,0
    while(curr != 0)
    80004cd8:	02048a63          	beqz	s1,80004d0c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x60>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80004cdc:	01048793          	addi	a5,s1,16
    80004ce0:	00a78863          	beq	a5,a0,80004cf0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x44>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80004ce4:	00048713          	mv	a4,s1
        curr = curr->next;
    80004ce8:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004cec:	fedff06f          	j	80004cd8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x2c>
            if(prev != 0)
    80004cf0:	02070c63          	beqz	a4,80004d28 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x7c>
                prev->next = curr->next;
    80004cf4:	0084b783          	ld	a5,8(s1)
    80004cf8:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80004cfc:	0004b583          	ld	a1,0(s1)
    80004d00:	00048513          	mv	a0,s1
    80004d04:	00000097          	auipc	ra,0x0
    80004d08:	ee0080e7          	jalr	-288(ra) # 80004be4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80004d0c:	02048a63          	beqz	s1,80004d40 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80004d10:	00000513          	li	a0,0
    else
        return 1;
}
    80004d14:	01813083          	ld	ra,24(sp)
    80004d18:	01013403          	ld	s0,16(sp)
    80004d1c:	00813483          	ld	s1,8(sp)
    80004d20:	02010113          	addi	sp,sp,32
    80004d24:	00008067          	ret
                headAllocated = curr->next;
    80004d28:	0084b783          	ld	a5,8(s1)
    80004d2c:	00004717          	auipc	a4,0x4
    80004d30:	daf73623          	sd	a5,-596(a4) # 80008ad8 <_ZN15MemoryAllocator13headAllocatedE>
    80004d34:	fc9ff06f          	j	80004cfc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x50>
        return 1;
    80004d38:	00100513          	li	a0,1
}
    80004d3c:	00008067          	ret
        return 1;
    80004d40:	00100513          	li	a0,1
    80004d44:	fd1ff06f          	j	80004d14 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x68>

0000000080004d48 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80004d48:	ff010113          	addi	sp,sp,-16
    80004d4c:	00113423          	sd	ra,8(sp)
    80004d50:	00813023          	sd	s0,0(sp)
    80004d54:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80004d58:	00000097          	auipc	ra,0x0
    80004d5c:	f54080e7          	jalr	-172(ra) # 80004cac <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80004d60:	00813083          	ld	ra,8(sp)
    80004d64:	00013403          	ld	s0,0(sp)
    80004d68:	01010113          	addi	sp,sp,16
    80004d6c:	00008067          	ret

0000000080004d70 <_ZN15MemoryAllocator7kmallocEm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* MemoryAllocator::kmalloc(size_t size)
{
    80004d70:	ff010113          	addi	sp,sp,-16
    80004d74:	00113423          	sd	ra,8(sp)
    80004d78:	00813023          	sd	s0,0(sp)
    80004d7c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80004d80:	00000097          	auipc	ra,0x0
    80004d84:	e3c080e7          	jalr	-452(ra) # 80004bbc <_ZN15MemoryAllocator9mem_allocEm>
}
    80004d88:	00813083          	ld	ra,8(sp)
    80004d8c:	00013403          	ld	s0,0(sp)
    80004d90:	01010113          	addi	sp,sp,16
    80004d94:	00008067          	ret

0000000080004d98 <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    80004d98:	ff010113          	addi	sp,sp,-16
    80004d9c:	00113423          	sd	ra,8(sp)
    80004da0:	00813023          	sd	s0,0(sp)
    80004da4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80004da8:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    80004dac:	00651513          	slli	a0,a0,0x6
    80004db0:	00000097          	auipc	ra,0x0
    80004db4:	fc0080e7          	jalr	-64(ra) # 80004d70 <_ZN15MemoryAllocator7kmallocEm>
    if(allocatedAddr == nullptr)
    80004db8:	02050063          	beqz	a0,80004dd8 <_ZN15MemoryAllocator15memAllocHandlerEv+0x40>
        __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80004dbc:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004dc0:	00000097          	auipc	ra,0x0
    80004dc4:	87c080e7          	jalr	-1924(ra) # 8000463c <_ZN5Riscv13w_a0_sscratchEv>
}
    80004dc8:	00813083          	ld	ra,8(sp)
    80004dcc:	00013403          	ld	s0,0(sp)
    80004dd0:	01010113          	addi	sp,sp,16
    80004dd4:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    80004dd8:	00000513          	li	a0,0
    80004ddc:	fe5ff06f          	j	80004dc0 <_ZN15MemoryAllocator15memAllocHandlerEv+0x28>

0000000080004de0 <_ZN15MemoryAllocator5kfreeEPv>:

uint64 MemoryAllocator::kfree(void* p)
{
    80004de0:	ff010113          	addi	sp,sp,-16
    80004de4:	00113423          	sd	ra,8(sp)
    80004de8:	00813023          	sd	s0,0(sp)
    80004dec:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80004df0:	00000097          	auipc	ra,0x0
    80004df4:	f58080e7          	jalr	-168(ra) # 80004d48 <_ZN15MemoryAllocator8mem_freeEPv>
    80004df8:	00813083          	ld	ra,8(sp)
    80004dfc:	00013403          	ld	s0,0(sp)
    80004e00:	01010113          	addi	sp,sp,16
    80004e04:	00008067          	ret

0000000080004e08 <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    80004e08:	ff010113          	addi	sp,sp,-16
    80004e0c:	00113423          	sd	ra,8(sp)
    80004e10:	00813023          	sd	s0,0(sp)
    80004e14:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    80004e18:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    80004e1c:	00000097          	auipc	ra,0x0
    80004e20:	fc4080e7          	jalr	-60(ra) # 80004de0 <_ZN15MemoryAllocator5kfreeEPv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004e24:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004e28:	00000097          	auipc	ra,0x0
    80004e2c:	814080e7          	jalr	-2028(ra) # 8000463c <_ZN5Riscv13w_a0_sscratchEv>
}
    80004e30:	00813083          	ld	ra,8(sp)
    80004e34:	00013403          	ld	s0,0(sp)
    80004e38:	01010113          	addi	sp,sp,16
    80004e3c:	00008067          	ret

0000000080004e40 <_Z12slabInitTestv>:
#include "../../h/slabTests.hpp"
#include "../../h/KConsole.hpp"

void slabInitTest()
{
    80004e40:	ff010113          	addi	sp,sp,-16
    80004e44:	00113423          	sd	ra,8(sp)
    80004e48:	00813023          	sd	s0,0(sp)
    80004e4c:	01010413          	addi	s0,sp,16
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004e50:	00f00593          	li	a1,15
    80004e54:	00004797          	auipc	a5,0x4
    80004e58:	aac7b783          	ld	a5,-1364(a5) # 80008900 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004e5c:	0007b503          	ld	a0,0(a5)
    80004e60:	ffffd097          	auipc	ra,0xffffd
    80004e64:	f60080e7          	jalr	-160(ra) # 80001dc0 <_Z9kmem_initPvi>
}
    80004e68:	00813083          	ld	ra,8(sp)
    80004e6c:	00013403          	ld	s0,0(sp)
    80004e70:	01010113          	addi	sp,sp,16
    80004e74:	00008067          	ret

0000000080004e78 <_Z19slabCacheCreateTestv>:

void slabCacheCreateTest()
{
    80004e78:	fe010113          	addi	sp,sp,-32
    80004e7c:	00113c23          	sd	ra,24(sp)
    80004e80:	00813823          	sd	s0,16(sp)
    80004e84:	00913423          	sd	s1,8(sp)
    80004e88:	01213023          	sd	s2,0(sp)
    80004e8c:	02010413          	addi	s0,sp,32
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004e90:	00f00593          	li	a1,15
    80004e94:	00004797          	auipc	a5,0x4
    80004e98:	a6c7b783          	ld	a5,-1428(a5) # 80008900 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004e9c:	0007b503          	ld	a0,0(a5)
    80004ea0:	ffffd097          	auipc	ra,0xffffd
    80004ea4:	f20080e7          	jalr	-224(ra) # 80001dc0 <_Z9kmem_initPvi>
    kmem_cache_t* cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    80004ea8:	00000693          	li	a3,0
    80004eac:	00000613          	li	a2,0
    80004eb0:	00a00593          	li	a1,10
    80004eb4:	00003517          	auipc	a0,0x3
    80004eb8:	66450513          	addi	a0,a0,1636 # 80008518 <CONSOLE_STATUS+0x508>
    80004ebc:	ffffd097          	auipc	ra,0xffffd
    80004ec0:	e60080e7          	jalr	-416(ra) # 80001d1c <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004ec4:	00050493          	mv	s1,a0
    kmem_cache_t* cache2 = kmem_cache_create("Cache test 2", 10, nullptr,nullptr);
    80004ec8:	00000693          	li	a3,0
    80004ecc:	00000613          	li	a2,0
    80004ed0:	00a00593          	li	a1,10
    80004ed4:	00003517          	auipc	a0,0x3
    80004ed8:	65450513          	addi	a0,a0,1620 # 80008528 <CONSOLE_STATUS+0x518>
    80004edc:	ffffd097          	auipc	ra,0xffffd
    80004ee0:	e40080e7          	jalr	-448(ra) # 80001d1c <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004ee4:	00050913          	mv	s2,a0
    kmem_cache_t* cache3 = kmem_cache_create("Cache test 3", 10, nullptr,nullptr);
    80004ee8:	00000693          	li	a3,0
    80004eec:	00000613          	li	a2,0
    80004ef0:	00a00593          	li	a1,10
    80004ef4:	00003517          	auipc	a0,0x3
    80004ef8:	64450513          	addi	a0,a0,1604 # 80008538 <CONSOLE_STATUS+0x528>
    80004efc:	ffffd097          	auipc	ra,0xffffd
    80004f00:	e20080e7          	jalr	-480(ra) # 80001d1c <_Z17kmem_cache_createPKcmPFvPvES3_>
    if(cache && cache2 && cache3)
    80004f04:	00048a63          	beqz	s1,80004f18 <_Z19slabCacheCreateTestv+0xa0>
    80004f08:	00090863          	beqz	s2,80004f18 <_Z19slabCacheCreateTestv+0xa0>
    80004f0c:	00050663          	beqz	a0,80004f18 <_Z19slabCacheCreateTestv+0xa0>
        printSlabAllocatorInfo();
    80004f10:	ffffd097          	auipc	ra,0xffffd
    80004f14:	2e8080e7          	jalr	744(ra) # 800021f8 <_Z22printSlabAllocatorInfov>
}
    80004f18:	01813083          	ld	ra,24(sp)
    80004f1c:	01013403          	ld	s0,16(sp)
    80004f20:	00813483          	ld	s1,8(sp)
    80004f24:	00013903          	ld	s2,0(sp)
    80004f28:	02010113          	addi	sp,sp,32
    80004f2c:	00008067          	ret

0000000080004f30 <_Z20slabCacheCreateTest2v>:

void slabCacheCreateTest2()
{
    80004f30:	fe010113          	addi	sp,sp,-32
    80004f34:	00113c23          	sd	ra,24(sp)
    80004f38:	00813823          	sd	s0,16(sp)
    80004f3c:	00913423          	sd	s1,8(sp)
    80004f40:	01213023          	sd	s2,0(sp)
    80004f44:	02010413          	addi	s0,sp,32
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004f48:	00f00593          	li	a1,15
    80004f4c:	00004797          	auipc	a5,0x4
    80004f50:	9b47b783          	ld	a5,-1612(a5) # 80008900 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004f54:	0007b503          	ld	a0,0(a5)
    80004f58:	ffffd097          	auipc	ra,0xffffd
    80004f5c:	e68080e7          	jalr	-408(ra) # 80001dc0 <_Z9kmem_initPvi>
    kmem_cache_t * cache = nullptr;
    for(int i = 1;i<=68;i++)
    80004f60:	00100493          	li	s1,1
    kmem_cache_t * cache = nullptr;
    80004f64:	00000913          	li	s2,0
    for(int i = 1;i<=68;i++)
    80004f68:	04400793          	li	a5,68
    80004f6c:	0297c663          	blt	a5,s1,80004f98 <_Z20slabCacheCreateTest2v+0x68>
    {
        cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    80004f70:	00000693          	li	a3,0
    80004f74:	00000613          	li	a2,0
    80004f78:	00a00593          	li	a1,10
    80004f7c:	00003517          	auipc	a0,0x3
    80004f80:	59c50513          	addi	a0,a0,1436 # 80008518 <CONSOLE_STATUS+0x508>
    80004f84:	ffffd097          	auipc	ra,0xffffd
    80004f88:	d98080e7          	jalr	-616(ra) # 80001d1c <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004f8c:	00050913          	mv	s2,a0
    for(int i = 1;i<=68;i++)
    80004f90:	0014849b          	addiw	s1,s1,1
    80004f94:	fd5ff06f          	j	80004f68 <_Z20slabCacheCreateTest2v+0x38>
    }
    printSlabAllocatorInfo();
    80004f98:	ffffd097          	auipc	ra,0xffffd
    80004f9c:	260080e7          	jalr	608(ra) # 800021f8 <_Z22printSlabAllocatorInfov>
    kmem_cache_destroy(cache);
    80004fa0:	00090513          	mv	a0,s2
    80004fa4:	ffffd097          	auipc	ra,0xffffd
    80004fa8:	5c0080e7          	jalr	1472(ra) # 80002564 <_Z18kmem_cache_destroyP12kmem_cache_s>
    printSlabAllocatorInfo();
    80004fac:	ffffd097          	auipc	ra,0xffffd
    80004fb0:	24c080e7          	jalr	588(ra) # 800021f8 <_Z22printSlabAllocatorInfov>
}
    80004fb4:	01813083          	ld	ra,24(sp)
    80004fb8:	01013403          	ld	s0,16(sp)
    80004fbc:	00813483          	ld	s1,8(sp)
    80004fc0:	00013903          	ld	s2,0(sp)
    80004fc4:	02010113          	addi	sp,sp,32
    80004fc8:	00008067          	ret

0000000080004fcc <_Z11testKmallocv>:

void testKmalloc()
{
    80004fcc:	fc010113          	addi	sp,sp,-64
    80004fd0:	02113c23          	sd	ra,56(sp)
    80004fd4:	02813823          	sd	s0,48(sp)
    80004fd8:	02913423          	sd	s1,40(sp)
    80004fdc:	03213023          	sd	s2,32(sp)
    80004fe0:	01313c23          	sd	s3,24(sp)
    80004fe4:	01413823          	sd	s4,16(sp)
    80004fe8:	01513423          	sd	s5,8(sp)
    80004fec:	04010413          	addi	s0,sp,64
    void** x = (void**)kmalloc(sizeof(void*)*200);
    80004ff0:	64000513          	li	a0,1600
    80004ff4:	ffffd097          	auipc	ra,0xffffd
    80004ff8:	2ec080e7          	jalr	748(ra) # 800022e0 <_Z7kmallocm>
    80004ffc:	00050a13          	mv	s4,a0
    int indeks = 0;
    for(int i = 0;i < 10;i++)
    80005000:	00000a93          	li	s5,0
    int indeks = 0;
    80005004:	00000493          	li	s1,0
    80005008:	0800006f          	j	80005088 <_Z11testKmallocv+0xbc>
    {
        for(int j = 5;j<=18;j++)
    8000500c:	0019091b          	addiw	s2,s2,1
        {
            void* adr = kmalloc(1 << j);
            x[indeks++] = adr;
    80005010:	00098493          	mv	s1,s3
        for(int j = 5;j<=18;j++)
    80005014:	01200793          	li	a5,18
    80005018:	0727c663          	blt	a5,s2,80005084 <_Z11testKmallocv+0xb8>
            void* adr = kmalloc(1 << j);
    8000501c:	00100513          	li	a0,1
    80005020:	0125153b          	sllw	a0,a0,s2
    80005024:	ffffd097          	auipc	ra,0xffffd
    80005028:	2bc080e7          	jalr	700(ra) # 800022e0 <_Z7kmallocm>
            x[indeks++] = adr;
    8000502c:	0014899b          	addiw	s3,s1,1
    80005030:	00349493          	slli	s1,s1,0x3
    80005034:	009a04b3          	add	s1,s4,s1
    80005038:	00a4b023          	sd	a0,0(s1)
            if(adr == nullptr)
    8000503c:	fc0518e3          	bnez	a0,8000500c <_Z11testKmallocv+0x40>
            {
                KConsole::trapPrintString("Nullptr je\n");
    80005040:	00003517          	auipc	a0,0x3
    80005044:	50850513          	addi	a0,a0,1288 # 80008548 <CONSOLE_STATUS+0x538>
    80005048:	fffff097          	auipc	ra,0xfffff
    8000504c:	8e0080e7          	jalr	-1824(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
                KConsole::trapPrintStringInt("i ", i);
    80005050:	00a00613          	li	a2,10
    80005054:	000a8593          	mv	a1,s5
    80005058:	00003517          	auipc	a0,0x3
    8000505c:	50050513          	addi	a0,a0,1280 # 80008558 <CONSOLE_STATUS+0x548>
    80005060:	fffff097          	auipc	ra,0xfffff
    80005064:	9a0080e7          	jalr	-1632(ra) # 80003a00 <_ZN8KConsole18trapPrintStringIntEPKcmi>
                KConsole::trapPrintStringInt("j ", j);
    80005068:	00a00613          	li	a2,10
    8000506c:	00090593          	mv	a1,s2
    80005070:	00003517          	auipc	a0,0x3
    80005074:	4f050513          	addi	a0,a0,1264 # 80008560 <CONSOLE_STATUS+0x550>
    80005078:	fffff097          	auipc	ra,0xfffff
    8000507c:	988080e7          	jalr	-1656(ra) # 80003a00 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    80005080:	f8dff06f          	j	8000500c <_Z11testKmallocv+0x40>
    for(int i = 0;i < 10;i++)
    80005084:	001a8a9b          	addiw	s5,s5,1
    80005088:	00900793          	li	a5,9
    8000508c:	0157c663          	blt	a5,s5,80005098 <_Z11testKmallocv+0xcc>
        for(int j = 5;j<=18;j++)
    80005090:	00500913          	li	s2,5
    80005094:	f81ff06f          	j	80005014 <_Z11testKmallocv+0x48>
            }
        }
    }
    for(int i = 0; i < indeks;i++)
    80005098:	00000913          	li	s2,0
    8000509c:	02995063          	bge	s2,s1,800050bc <_Z11testKmallocv+0xf0>
    {
      kfree(x[i]);
    800050a0:	00391793          	slli	a5,s2,0x3
    800050a4:	00fa07b3          	add	a5,s4,a5
    800050a8:	0007b503          	ld	a0,0(a5)
    800050ac:	ffffd097          	auipc	ra,0xffffd
    800050b0:	3d4080e7          	jalr	980(ra) # 80002480 <_Z5kfreePKv>
    for(int i = 0; i < indeks;i++)
    800050b4:	0019091b          	addiw	s2,s2,1
    800050b8:	fe5ff06f          	j	8000509c <_Z11testKmallocv+0xd0>
    }
    printSlabAllocatorInfo();
    800050bc:	ffffd097          	auipc	ra,0xffffd
    800050c0:	13c080e7          	jalr	316(ra) # 800021f8 <_Z22printSlabAllocatorInfov>
}
    800050c4:	03813083          	ld	ra,56(sp)
    800050c8:	03013403          	ld	s0,48(sp)
    800050cc:	02813483          	ld	s1,40(sp)
    800050d0:	02013903          	ld	s2,32(sp)
    800050d4:	01813983          	ld	s3,24(sp)
    800050d8:	01013a03          	ld	s4,16(sp)
    800050dc:	00813a83          	ld	s5,8(sp)
    800050e0:	04010113          	addi	sp,sp,64
    800050e4:	00008067          	ret

00000000800050e8 <_Z12testKmalloc2v>:

void testKmalloc2()
{
    800050e8:	fd010113          	addi	sp,sp,-48
    800050ec:	02113423          	sd	ra,40(sp)
    800050f0:	02813023          	sd	s0,32(sp)
    800050f4:	00913c23          	sd	s1,24(sp)
    800050f8:	01213823          	sd	s2,16(sp)
    800050fc:	01313423          	sd	s3,8(sp)
    80005100:	03010413          	addi	s0,sp,48
    bool flag = false;
    for(int i = 0;!flag;i++)
    80005104:	00000913          	li	s2,0
    bool flag = false;
    80005108:	00000993          	li	s3,0
    8000510c:	04c0006f          	j	80005158 <_Z12testKmalloc2v+0x70>
        for(int j = 5;j<=17;j++)
        {
            void* adr = kmalloc(1 << j);
            if(adr == nullptr)
            {
                KConsole::trapPrintString("Nullptr je\n");
    80005110:	00003517          	auipc	a0,0x3
    80005114:	43850513          	addi	a0,a0,1080 # 80008548 <CONSOLE_STATUS+0x538>
    80005118:	fffff097          	auipc	ra,0xfffff
    8000511c:	810080e7          	jalr	-2032(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
                KConsole::trapPrintStringInt("i ", i);
    80005120:	00a00613          	li	a2,10
    80005124:	00090593          	mv	a1,s2
    80005128:	00003517          	auipc	a0,0x3
    8000512c:	43050513          	addi	a0,a0,1072 # 80008558 <CONSOLE_STATUS+0x548>
    80005130:	fffff097          	auipc	ra,0xfffff
    80005134:	8d0080e7          	jalr	-1840(ra) # 80003a00 <_ZN8KConsole18trapPrintStringIntEPKcmi>
                KConsole::trapPrintStringInt("j ", j);
    80005138:	00a00613          	li	a2,10
    8000513c:	00048593          	mv	a1,s1
    80005140:	00003517          	auipc	a0,0x3
    80005144:	42050513          	addi	a0,a0,1056 # 80008560 <CONSOLE_STATUS+0x550>
    80005148:	fffff097          	auipc	ra,0xfffff
    8000514c:	8b8080e7          	jalr	-1864(ra) # 80003a00 <_ZN8KConsole18trapPrintStringIntEPKcmi>
                flag = true;
    80005150:	00100993          	li	s3,1
    for(int i = 0;!flag;i++)
    80005154:	0019091b          	addiw	s2,s2,1
    80005158:	02099663          	bnez	s3,80005184 <_Z12testKmalloc2v+0x9c>
        for(int j = 5;j<=17;j++)
    8000515c:	00500493          	li	s1,5
    80005160:	01100793          	li	a5,17
    80005164:	fe97c8e3          	blt	a5,s1,80005154 <_Z12testKmalloc2v+0x6c>
            void* adr = kmalloc(1 << j);
    80005168:	00100513          	li	a0,1
    8000516c:	0095153b          	sllw	a0,a0,s1
    80005170:	ffffd097          	auipc	ra,0xffffd
    80005174:	170080e7          	jalr	368(ra) # 800022e0 <_Z7kmallocm>
            if(adr == nullptr)
    80005178:	f8050ce3          	beqz	a0,80005110 <_Z12testKmalloc2v+0x28>
        for(int j = 5;j<=17;j++)
    8000517c:	0014849b          	addiw	s1,s1,1
    80005180:	fe1ff06f          	j	80005160 <_Z12testKmalloc2v+0x78>
                break;
            }
        }
    }
}
    80005184:	02813083          	ld	ra,40(sp)
    80005188:	02013403          	ld	s0,32(sp)
    8000518c:	01813483          	ld	s1,24(sp)
    80005190:	01013903          	ld	s2,16(sp)
    80005194:	00813983          	ld	s3,8(sp)
    80005198:	03010113          	addi	sp,sp,48
    8000519c:	00008067          	ret

00000000800051a0 <_Z6memsetPKvii>:
                                    "tc_1",
                                    "tc_2",
                                    "tc_3",
                                    "tc_4"};

void memset(const void *data, int size, int value) {
    800051a0:	ff010113          	addi	sp,sp,-16
    800051a4:	00813423          	sd	s0,8(sp)
    800051a8:	01010413          	addi	s0,sp,16
    for (int j = 0; j < size; j++) {
    800051ac:	00000793          	li	a5,0
    800051b0:	00b7da63          	bge	a5,a1,800051c4 <_Z6memsetPKvii+0x24>
        *((char *)data + j) = value;
    800051b4:	00f50733          	add	a4,a0,a5
    800051b8:	00c70023          	sb	a2,0(a4)
    for (int j = 0; j < size; j++) {
    800051bc:	0017879b          	addiw	a5,a5,1
    800051c0:	ff1ff06f          	j	800051b0 <_Z6memsetPKvii+0x10>
    }
}
    800051c4:	00813403          	ld	s0,8(sp)
    800051c8:	01010113          	addi	sp,sp,16
    800051cc:	00008067          	ret

00000000800051d0 <_Z9constructPv>:

void construct(void *data) {
    800051d0:	ff010113          	addi	sp,sp,-16
    800051d4:	00113423          	sd	ra,8(sp)
    800051d8:	00813023          	sd	s0,0(sp)
    800051dc:	01010413          	addi	s0,sp,16
    //static int i = 1;
    //KConsole::trapPrintInt(i); i++;
    //KConsole::trapPrintString(" Shared object constructed.\n");
    memset(data, shared_size, MASK);
    800051e0:	0a500613          	li	a2,165
    800051e4:	00700593          	li	a1,7
    800051e8:	00000097          	auipc	ra,0x0
    800051ec:	fb8080e7          	jalr	-72(ra) # 800051a0 <_Z6memsetPKvii>
}
    800051f0:	00813083          	ld	ra,8(sp)
    800051f4:	00013403          	ld	s0,0(sp)
    800051f8:	01010113          	addi	sp,sp,16
    800051fc:	00008067          	ret

0000000080005200 <_Z5checkPvm>:

int check(void *data, size_t size) {
    80005200:	ff010113          	addi	sp,sp,-16
    80005204:	00813423          	sd	s0,8(sp)
    80005208:	01010413          	addi	s0,sp,16
    8000520c:	00050613          	mv	a2,a0
    int ret = 1;
    for (size_t i = 0; i < size; i++) {
    80005210:	00000793          	li	a5,0
    int ret = 1;
    80005214:	00100513          	li	a0,1
    80005218:	0080006f          	j	80005220 <_Z5checkPvm+0x20>
    for (size_t i = 0; i < size; i++) {
    8000521c:	00178793          	addi	a5,a5,1
    80005220:	00b7fe63          	bgeu	a5,a1,8000523c <_Z5checkPvm+0x3c>
        if (((unsigned char *)data)[i] != MASK) {
    80005224:	00f60733          	add	a4,a2,a5
    80005228:	00074683          	lbu	a3,0(a4)
    8000522c:	0a500713          	li	a4,165
    80005230:	fee686e3          	beq	a3,a4,8000521c <_Z5checkPvm+0x1c>
            ret = 0;
    80005234:	00000513          	li	a0,0
    80005238:	fe5ff06f          	j	8000521c <_Z5checkPvm+0x1c>
        }
    }

    return ret;
}
    8000523c:	00813403          	ld	s0,8(sp)
    80005240:	01010113          	addi	sp,sp,16
    80005244:	00008067          	ret

0000000080005248 <_Z4workPv>:
    kmem_cache_t *cache;
    void *data;
};

void work(void* pdata)
{
    80005248:	f8010113          	addi	sp,sp,-128
    8000524c:	06113c23          	sd	ra,120(sp)
    80005250:	06813823          	sd	s0,112(sp)
    80005254:	06913423          	sd	s1,104(sp)
    80005258:	07213023          	sd	s2,96(sp)
    8000525c:	05313c23          	sd	s3,88(sp)
    80005260:	05413823          	sd	s4,80(sp)
    80005264:	05513423          	sd	s5,72(sp)
    80005268:	05613023          	sd	s6,64(sp)
    8000526c:	03713c23          	sd	s7,56(sp)
    80005270:	03813823          	sd	s8,48(sp)
    80005274:	03913423          	sd	s9,40(sp)
    80005278:	08010413          	addi	s0,sp,128
    struct data_s data = *(struct data_s*) pdata;
    8000527c:	00053c03          	ld	s8,0(a0)
    80005280:	f9843423          	sd	s8,-120(s0)
    80005284:	00853783          	ld	a5,8(a0)
    80005288:	f8f43823          	sd	a5,-112(s0)
    8000528c:	01053783          	ld	a5,16(a0)
    80005290:	f8f43c23          	sd	a5,-104(s0)
    int size = 0;
    int object_size = data.id + 1;
    80005294:	000c079b          	sext.w	a5,s8
    80005298:	001c0c1b          	addiw	s8,s8,1
    kmem_cache_t *cache = kmem_cache_create(CACHE_NAMES[data.id], object_size, 0, 0);
    8000529c:	00379713          	slli	a4,a5,0x3
    800052a0:	00003797          	auipc	a5,0x3
    800052a4:	62078793          	addi	a5,a5,1568 # 800088c0 <_ZL11CACHE_NAMES>
    800052a8:	00e787b3          	add	a5,a5,a4
    800052ac:	000c0b13          	mv	s6,s8
    800052b0:	00000693          	li	a3,0
    800052b4:	00000613          	li	a2,0
    800052b8:	000c0593          	mv	a1,s8
    800052bc:	0007b503          	ld	a0,0(a5)
    800052c0:	ffffd097          	auipc	ra,0xffffd
    800052c4:	a5c080e7          	jalr	-1444(ra) # 80001d1c <_Z17kmem_cache_createPKcmPFvPvES3_>
    800052c8:	00050a13          	mv	s4,a0

    struct objects_s *objs = (struct objects_s*)(kmalloc(sizeof(struct objects_s) * data.iterations));
    800052cc:	f9842b83          	lw	s7,-104(s0)
    800052d0:	004b9513          	slli	a0,s7,0x4
    800052d4:	ffffd097          	auipc	ra,0xffffd
    800052d8:	00c080e7          	jalr	12(ra) # 800022e0 <_Z7kmallocm>
    800052dc:	00050a93          	mv	s5,a0

    for (int i = 0; i < data.iterations; i++) {
    800052e0:	00000493          	li	s1,0
    int size = 0;
    800052e4:	00000993          	li	s3,0
    800052e8:	0380006f          	j	80005320 <_Z4workPv+0xd8>
            if (!check(objs[size].data, shared_size)) {
                KConsole::trapPrintString("Value not correct!");
            }
        }
        else {
            objs[size].data = kmem_cache_alloc(cache);
    800052ec:	00499913          	slli	s2,s3,0x4
    800052f0:	012a8933          	add	s2,s5,s2
    800052f4:	000a0513          	mv	a0,s4
    800052f8:	ffffd097          	auipc	ra,0xffffd
    800052fc:	8ec080e7          	jalr	-1812(ra) # 80001be4 <_Z16kmem_cache_allocP12kmem_cache_s>
    80005300:	00a93423          	sd	a0,8(s2)
            objs[size].cache = cache;
    80005304:	01493023          	sd	s4,0(s2)
            memset(objs[size].data, object_size, MASK);
    80005308:	0a500613          	li	a2,165
    8000530c:	000c0593          	mv	a1,s8
    80005310:	00000097          	auipc	ra,0x0
    80005314:	e90080e7          	jalr	-368(ra) # 800051a0 <_Z6memsetPKvii>
        }
        size++;
    80005318:	0019899b          	addiw	s3,s3,1
    for (int i = 0; i < data.iterations; i++) {
    8000531c:	0014849b          	addiw	s1,s1,1
    80005320:	0574da63          	bge	s1,s7,80005374 <_Z4workPv+0x12c>
        if (i % 100 == 0) {
    80005324:	06400793          	li	a5,100
    80005328:	02f4e7bb          	remw	a5,s1,a5
    8000532c:	fc0790e3          	bnez	a5,800052ec <_Z4workPv+0xa4>
            objs[size].data = kmem_cache_alloc(data.shared);
    80005330:	f9043c83          	ld	s9,-112(s0)
    80005334:	00499913          	slli	s2,s3,0x4
    80005338:	012a8933          	add	s2,s5,s2
    8000533c:	000c8513          	mv	a0,s9
    80005340:	ffffd097          	auipc	ra,0xffffd
    80005344:	8a4080e7          	jalr	-1884(ra) # 80001be4 <_Z16kmem_cache_allocP12kmem_cache_s>
    80005348:	00a93423          	sd	a0,8(s2)
            objs[size].cache = data.shared;
    8000534c:	01993023          	sd	s9,0(s2)
            if (!check(objs[size].data, shared_size)) {
    80005350:	00700593          	li	a1,7
    80005354:	00000097          	auipc	ra,0x0
    80005358:	eac080e7          	jalr	-340(ra) # 80005200 <_Z5checkPvm>
    8000535c:	fa051ee3          	bnez	a0,80005318 <_Z4workPv+0xd0>
                KConsole::trapPrintString("Value not correct!");
    80005360:	00003517          	auipc	a0,0x3
    80005364:	20850513          	addi	a0,a0,520 # 80008568 <CONSOLE_STATUS+0x558>
    80005368:	ffffe097          	auipc	ra,0xffffe
    8000536c:	5c0080e7          	jalr	1472(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    80005370:	fa9ff06f          	j	80005318 <_Z4workPv+0xd0>
    }

    kmem_cache_info(cache);
    80005374:	000a0513          	mv	a0,s4
    80005378:	ffffd097          	auipc	ra,0xffffd
    8000537c:	d24080e7          	jalr	-732(ra) # 8000209c <_Z15kmem_cache_infoP12kmem_cache_s>
    kmem_cache_info(data.shared);
    80005380:	f9043b83          	ld	s7,-112(s0)
    80005384:	000b8513          	mv	a0,s7
    80005388:	ffffd097          	auipc	ra,0xffffd
    8000538c:	d14080e7          	jalr	-748(ra) # 8000209c <_Z15kmem_cache_infoP12kmem_cache_s>
    //printSlabAllocatorInfo();

    for (int i = 0; i < size; i++) {
    80005390:	00000913          	li	s2,0
    80005394:	0300006f          	j	800053c4 <_Z4workPv+0x17c>
        if (!check(objs[i].data, (cache == objs[i].cache) ? object_size : shared_size)) {
    80005398:	000b0593          	mv	a1,s6
    8000539c:	0440006f          	j	800053e0 <_Z4workPv+0x198>
            KConsole::trapPrintString("Value not correct!");
    800053a0:	00003517          	auipc	a0,0x3
    800053a4:	1c850513          	addi	a0,a0,456 # 80008568 <CONSOLE_STATUS+0x558>
    800053a8:	ffffe097          	auipc	ra,0xffffe
    800053ac:	580080e7          	jalr	1408(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
        }
        kmem_cache_free(objs[i].cache, objs[i].data);
    800053b0:	0084b583          	ld	a1,8(s1)
    800053b4:	0004b503          	ld	a0,0(s1)
    800053b8:	ffffd097          	auipc	ra,0xffffd
    800053bc:	a6c080e7          	jalr	-1428(ra) # 80001e24 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    for (int i = 0; i < size; i++) {
    800053c0:	0019091b          	addiw	s2,s2,1
    800053c4:	03395663          	bge	s2,s3,800053f0 <_Z4workPv+0x1a8>
        if (!check(objs[i].data, (cache == objs[i].cache) ? object_size : shared_size)) {
    800053c8:	00491493          	slli	s1,s2,0x4
    800053cc:	009a84b3          	add	s1,s5,s1
    800053d0:	0084b503          	ld	a0,8(s1)
    800053d4:	0004b783          	ld	a5,0(s1)
    800053d8:	fd4780e3          	beq	a5,s4,80005398 <_Z4workPv+0x150>
    800053dc:	00700593          	li	a1,7
    800053e0:	00000097          	auipc	ra,0x0
    800053e4:	e20080e7          	jalr	-480(ra) # 80005200 <_Z5checkPvm>
    800053e8:	fc0514e3          	bnez	a0,800053b0 <_Z4workPv+0x168>
    800053ec:	fb5ff06f          	j	800053a0 <_Z4workPv+0x158>
    }
    kmem_cache_info(data.shared);
    800053f0:	000b8513          	mv	a0,s7
    800053f4:	ffffd097          	auipc	ra,0xffffd
    800053f8:	ca8080e7          	jalr	-856(ra) # 8000209c <_Z15kmem_cache_infoP12kmem_cache_s>

    //kmem_cache_info(cache);
    //kmem_cache_info(data.shared);
    //printSlabAllocatorInfo();

    kfree(objs);
    800053fc:	000a8513          	mv	a0,s5
    80005400:	ffffd097          	auipc	ra,0xffffd
    80005404:	080080e7          	jalr	128(ra) # 80002480 <_Z5kfreePKv>
    kmem_cache_destroy(cache);
    80005408:	000a0513          	mv	a0,s4
    8000540c:	ffffd097          	auipc	ra,0xffffd
    80005410:	158080e7          	jalr	344(ra) # 80002564 <_Z18kmem_cache_destroyP12kmem_cache_s>

    //printSlabAllocatorInfo();
}
    80005414:	07813083          	ld	ra,120(sp)
    80005418:	07013403          	ld	s0,112(sp)
    8000541c:	06813483          	ld	s1,104(sp)
    80005420:	06013903          	ld	s2,96(sp)
    80005424:	05813983          	ld	s3,88(sp)
    80005428:	05013a03          	ld	s4,80(sp)
    8000542c:	04813a83          	ld	s5,72(sp)
    80005430:	04013b03          	ld	s6,64(sp)
    80005434:	03813b83          	ld	s7,56(sp)
    80005438:	03013c03          	ld	s8,48(sp)
    8000543c:	02813c83          	ld	s9,40(sp)
    80005440:	08010113          	addi	sp,sp,128
    80005444:	00008067          	ret

0000000080005448 <_Z4runsPFvPvEP6data_si>:

void runs(void(*work)(void*), struct data_s* data, int num) {
    80005448:	fb010113          	addi	sp,sp,-80
    8000544c:	04113423          	sd	ra,72(sp)
    80005450:	04813023          	sd	s0,64(sp)
    80005454:	02913c23          	sd	s1,56(sp)
    80005458:	03213823          	sd	s2,48(sp)
    8000545c:	03313423          	sd	s3,40(sp)
    80005460:	05010413          	addi	s0,sp,80
    80005464:	00050993          	mv	s3,a0
    80005468:	00058913          	mv	s2,a1
    for (int i = 0; i < RUN_NUM; i++) {
    8000546c:	00000493          	li	s1,0
    80005470:	00400793          	li	a5,4
    80005474:	0297c863          	blt	a5,s1,800054a4 <_Z4runsPFvPvEP6data_si+0x5c>
        struct data_s private_data;
        private_data = *(struct data_s*) data;
    80005478:	00093783          	ld	a5,0(s2)
    8000547c:	faf43c23          	sd	a5,-72(s0)
    80005480:	00893783          	ld	a5,8(s2)
    80005484:	fcf43023          	sd	a5,-64(s0)
    80005488:	01093783          	ld	a5,16(s2)
    8000548c:	fcf43423          	sd	a5,-56(s0)
        private_data.id = i;
    80005490:	fa942c23          	sw	s1,-72(s0)
        work(&private_data);
    80005494:	fb840513          	addi	a0,s0,-72
    80005498:	000980e7          	jalr	s3
    for (int i = 0; i < RUN_NUM; i++) {
    8000549c:	0014849b          	addiw	s1,s1,1
    800054a0:	fd1ff06f          	j	80005470 <_Z4runsPFvPvEP6data_si+0x28>
    }
}
    800054a4:	04813083          	ld	ra,72(sp)
    800054a8:	04013403          	ld	s0,64(sp)
    800054ac:	03813483          	ld	s1,56(sp)
    800054b0:	03013903          	ld	s2,48(sp)
    800054b4:	02813983          	ld	s3,40(sp)
    800054b8:	05010113          	addi	sp,sp,80
    800054bc:	00008067          	ret

00000000800054c0 <_Z7testOS2v>:

void testOS2()
{
    800054c0:	fc010113          	addi	sp,sp,-64
    800054c4:	02113c23          	sd	ra,56(sp)
    800054c8:	02813823          	sd	s0,48(sp)
    800054cc:	02913423          	sd	s1,40(sp)
    800054d0:	04010413          	addi	s0,sp,64
    kmem_cache_t *shared = kmem_cache_create("shared object", shared_size, construct, nullptr);
    800054d4:	00000693          	li	a3,0
    800054d8:	00000617          	auipc	a2,0x0
    800054dc:	cf860613          	addi	a2,a2,-776 # 800051d0 <_Z9constructPv>
    800054e0:	00700593          	li	a1,7
    800054e4:	00003517          	auipc	a0,0x3
    800054e8:	09c50513          	addi	a0,a0,156 # 80008580 <CONSOLE_STATUS+0x570>
    800054ec:	ffffd097          	auipc	ra,0xffffd
    800054f0:	830080e7          	jalr	-2000(ra) # 80001d1c <_Z17kmem_cache_createPKcmPFvPvES3_>
    800054f4:	00050493          	mv	s1,a0

    struct data_s data;
    data.shared = shared;
    800054f8:	fca43823          	sd	a0,-48(s0)
    data.iterations = ITERATIONS;
    800054fc:	3e800793          	li	a5,1000
    80005500:	fcf42c23          	sw	a5,-40(s0)
    runs(work, &data, RUN_NUM);
    80005504:	00500613          	li	a2,5
    80005508:	fc840593          	addi	a1,s0,-56
    8000550c:	00000517          	auipc	a0,0x0
    80005510:	d3c50513          	addi	a0,a0,-708 # 80005248 <_Z4workPv>
    80005514:	00000097          	auipc	ra,0x0
    80005518:	f34080e7          	jalr	-204(ra) # 80005448 <_Z4runsPFvPvEP6data_si>

    kmem_cache_destroy(shared);
    8000551c:	00048513          	mv	a0,s1
    80005520:	ffffd097          	auipc	ra,0xffffd
    80005524:	044080e7          	jalr	68(ra) # 80002564 <_Z18kmem_cache_destroyP12kmem_cache_s>
    80005528:	03813083          	ld	ra,56(sp)
    8000552c:	03013403          	ld	s0,48(sp)
    80005530:	02813483          	ld	s1,40(sp)
    80005534:	04010113          	addi	sp,sp,64
    80005538:	00008067          	ret

000000008000553c <_ZN10KSemaphoreC1Ei>:
#include "../../h/KSemaphore.hpp"
#include "../../h/MemoryAllocator.hpp"
#include "../../h/Riscv.hpp"
#include "../../h/Scheduler.hpp"

KSemaphore::KSemaphore(int val)
    8000553c:	ff010113          	addi	sp,sp,-16
    80005540:	00813423          	sd	s0,8(sp)
    80005544:	01010413          	addi	s0,sp,16
{
    this->val = val;
    80005548:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    8000554c:	00053423          	sd	zero,8(a0)
    80005550:	00053023          	sd	zero,0(a0)
}
    80005554:	00813403          	ld	s0,8(sp)
    80005558:	01010113          	addi	sp,sp,16
    8000555c:	00008067          	ret

0000000080005560 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80005560:	ff010113          	addi	sp,sp,-16
    80005564:	00813423          	sd	s0,8(sp)
    80005568:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    8000556c:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    80005570:	00053783          	ld	a5,0(a0)
    80005574:	00078e63          	beqz	a5,80005590 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80005578:	00853783          	ld	a5,8(a0)
    8000557c:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    80005580:	00b53423          	sd	a1,8(a0)
    }
}
    80005584:	00813403          	ld	s0,8(sp)
    80005588:	01010113          	addi	sp,sp,16
    8000558c:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80005590:	00b53423          	sd	a1,8(a0)
    80005594:	00b53023          	sd	a1,0(a0)
    80005598:	fedff06f          	j	80005584 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

000000008000559c <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    8000559c:	ff010113          	addi	sp,sp,-16
    800055a0:	00113423          	sd	ra,8(sp)
    800055a4:	00813023          	sd	s0,0(sp)
    800055a8:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    800055ac:	00003797          	auipc	a5,0x3
    800055b0:	3d47b783          	ld	a5,980(a5) # 80008980 <_GLOBAL_OFFSET_TABLE_+0x98>
    800055b4:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    800055b8:	00200793          	li	a5,2
    800055bc:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    800055c0:	00000097          	auipc	ra,0x0
    800055c4:	fa0080e7          	jalr	-96(ra) # 80005560 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    800055c8:	ffffd097          	auipc	ra,0xffffd
    800055cc:	29c080e7          	jalr	668(ra) # 80002864 <_ZN3PCB8dispatchEv>
}
    800055d0:	00813083          	ld	ra,8(sp)
    800055d4:	00013403          	ld	s0,0(sp)
    800055d8:	01010113          	addi	sp,sp,16
    800055dc:	00008067          	ret

00000000800055e0 <_ZN10KSemaphore4waitEv>:
    PCB::running->retFromClosedSem = false;
    800055e0:	00003797          	auipc	a5,0x3
    800055e4:	3a07b783          	ld	a5,928(a5) # 80008980 <_GLOBAL_OFFSET_TABLE_+0x98>
    800055e8:	0007b783          	ld	a5,0(a5)
    800055ec:	04078c23          	sb	zero,88(a5)
    if(--val < 0)
    800055f0:	01052783          	lw	a5,16(a0)
    800055f4:	fff7879b          	addiw	a5,a5,-1
    800055f8:	00f52823          	sw	a5,16(a0)
    800055fc:	02079713          	slli	a4,a5,0x20
    80005600:	00074663          	bltz	a4,8000560c <_ZN10KSemaphore4waitEv+0x2c>
}
    80005604:	00000513          	li	a0,0
    80005608:	00008067          	ret
{
    8000560c:	ff010113          	addi	sp,sp,-16
    80005610:	00113423          	sd	ra,8(sp)
    80005614:	00813023          	sd	s0,0(sp)
    80005618:	01010413          	addi	s0,sp,16
        block();
    8000561c:	00000097          	auipc	ra,0x0
    80005620:	f80080e7          	jalr	-128(ra) # 8000559c <_ZN10KSemaphore5blockEv>
}
    80005624:	00000513          	li	a0,0
    80005628:	00813083          	ld	ra,8(sp)
    8000562c:	00013403          	ld	s0,0(sp)
    80005630:	01010113          	addi	sp,sp,16
    80005634:	00008067          	ret

0000000080005638 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80005638:	ff010113          	addi	sp,sp,-16
    8000563c:	00813423          	sd	s0,8(sp)
    80005640:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80005644:	00053503          	ld	a0,0(a0)
    80005648:	00813403          	ld	s0,8(sp)
    8000564c:	01010113          	addi	sp,sp,16
    80005650:	00008067          	ret

0000000080005654 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80005654:	ff010113          	addi	sp,sp,-16
    80005658:	00813423          	sd	s0,8(sp)
    8000565c:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80005660:	00053783          	ld	a5,0(a0)
    80005664:	00078c63          	beqz	a5,8000567c <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80005668:	0087b703          	ld	a4,8(a5)
    8000566c:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80005670:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    80005674:	00053783          	ld	a5,0(a0)
    80005678:	00078863          	beqz	a5,80005688 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    8000567c:	00813403          	ld	s0,8(sp)
    80005680:	01010113          	addi	sp,sp,16
    80005684:	00008067          	ret
        tailBlocked =0;
    80005688:	00053423          	sd	zero,8(a0)
    8000568c:	ff1ff06f          	j	8000567c <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

0000000080005690 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    80005690:	fe010113          	addi	sp,sp,-32
    80005694:	00113c23          	sd	ra,24(sp)
    80005698:	00813823          	sd	s0,16(sp)
    8000569c:	00913423          	sd	s1,8(sp)
    800056a0:	01213023          	sd	s2,0(sp)
    800056a4:	02010413          	addi	s0,sp,32
    800056a8:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    800056ac:	00090513          	mv	a0,s2
    800056b0:	00000097          	auipc	ra,0x0
    800056b4:	f88080e7          	jalr	-120(ra) # 80005638 <_ZN10KSemaphore15getFirstBlockedEv>
    800056b8:	00050493          	mv	s1,a0
    800056bc:	02050463          	beqz	a0,800056e4 <_ZN10KSemaphoreD1Ev+0x54>
        removeFirstBlocked();
    800056c0:	00090513          	mv	a0,s2
    800056c4:	00000097          	auipc	ra,0x0
    800056c8:	f90080e7          	jalr	-112(ra) # 80005654 <_ZN10KSemaphore18removeFirstBlockedEv>
        pcb->retFromClosedSem = true;
    800056cc:	00100793          	li	a5,1
    800056d0:	04f48c23          	sb	a5,88(s1)
        Scheduler::put(pcb);
    800056d4:	00048513          	mv	a0,s1
    800056d8:	ffffe097          	auipc	ra,0xffffe
    800056dc:	508080e7          	jalr	1288(ra) # 80003be0 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    800056e0:	fcdff06f          	j	800056ac <_ZN10KSemaphoreD1Ev+0x1c>
}
    800056e4:	01813083          	ld	ra,24(sp)
    800056e8:	01013403          	ld	s0,16(sp)
    800056ec:	00813483          	ld	s1,8(sp)
    800056f0:	00013903          	ld	s2,0(sp)
    800056f4:	02010113          	addi	sp,sp,32
    800056f8:	00008067          	ret

00000000800056fc <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    800056fc:	fe010113          	addi	sp,sp,-32
    80005700:	00113c23          	sd	ra,24(sp)
    80005704:	00813823          	sd	s0,16(sp)
    80005708:	00913423          	sd	s1,8(sp)
    8000570c:	01213023          	sd	s2,0(sp)
    80005710:	02010413          	addi	s0,sp,32
    80005714:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    80005718:	00000097          	auipc	ra,0x0
    8000571c:	f20080e7          	jalr	-224(ra) # 80005638 <_ZN10KSemaphore15getFirstBlockedEv>
    80005720:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80005724:	00090513          	mv	a0,s2
    80005728:	00000097          	auipc	ra,0x0
    8000572c:	f2c080e7          	jalr	-212(ra) # 80005654 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80005730:	00048863          	beqz	s1,80005740 <_ZN10KSemaphore7unblockEv+0x44>
    {
        Scheduler::put(fr);
    80005734:	00048513          	mv	a0,s1
    80005738:	ffffe097          	auipc	ra,0xffffe
    8000573c:	4a8080e7          	jalr	1192(ra) # 80003be0 <_ZN9Scheduler3putEP3PCB>
    }
}
    80005740:	01813083          	ld	ra,24(sp)
    80005744:	01013403          	ld	s0,16(sp)
    80005748:	00813483          	ld	s1,8(sp)
    8000574c:	00013903          	ld	s2,0(sp)
    80005750:	02010113          	addi	sp,sp,32
    80005754:	00008067          	ret

0000000080005758 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80005758:	01052783          	lw	a5,16(a0)
    8000575c:	0017879b          	addiw	a5,a5,1
    80005760:	0007871b          	sext.w	a4,a5
    80005764:	00f52823          	sw	a5,16(a0)
    80005768:	00e05663          	blez	a4,80005774 <_ZN10KSemaphore6signalEv+0x1c>
}
    8000576c:	00000513          	li	a0,0
    80005770:	00008067          	ret
uint64 KSemaphore::signal() {
    80005774:	ff010113          	addi	sp,sp,-16
    80005778:	00113423          	sd	ra,8(sp)
    8000577c:	00813023          	sd	s0,0(sp)
    80005780:	01010413          	addi	s0,sp,16
        unblock();
    80005784:	00000097          	auipc	ra,0x0
    80005788:	f78080e7          	jalr	-136(ra) # 800056fc <_ZN10KSemaphore7unblockEv>
}
    8000578c:	00000513          	li	a0,0
    80005790:	00813083          	ld	ra,8(sp)
    80005794:	00013403          	ld	s0,0(sp)
    80005798:	01010113          	addi	sp,sp,16
    8000579c:	00008067          	ret

00000000800057a0 <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    800057a0:	ff010113          	addi	sp,sp,-16
    800057a4:	00113423          	sd	ra,8(sp)
    800057a8:	00813023          	sd	s0,0(sp)
    800057ac:	01010413          	addi	s0,sp,16
    return kmem_cache_alloc(Riscv::semaphoreCache);
    800057b0:	00003797          	auipc	a5,0x3
    800057b4:	1587b783          	ld	a5,344(a5) # 80008908 <_GLOBAL_OFFSET_TABLE_+0x20>
    800057b8:	0007b503          	ld	a0,0(a5)
    800057bc:	ffffc097          	auipc	ra,0xffffc
    800057c0:	428080e7          	jalr	1064(ra) # 80001be4 <_Z16kmem_cache_allocP12kmem_cache_s>
    //return MemoryAllocator::kmalloc(size);
}
    800057c4:	00813083          	ld	ra,8(sp)
    800057c8:	00013403          	ld	s0,0(sp)
    800057cc:	01010113          	addi	sp,sp,16
    800057d0:	00008067          	ret

00000000800057d4 <_ZN10KSemaphore14semOpenHandlerEv>:
{
    800057d4:	fd010113          	addi	sp,sp,-48
    800057d8:	02113423          	sd	ra,40(sp)
    800057dc:	02813023          	sd	s0,32(sp)
    800057e0:	00913c23          	sd	s1,24(sp)
    800057e4:	01213823          	sd	s2,16(sp)
    800057e8:	01313423          	sd	s3,8(sp)
    800057ec:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    800057f0:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    800057f4:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    800057f8:	01800513          	li	a0,24
    800057fc:	00000097          	auipc	ra,0x0
    80005800:	fa4080e7          	jalr	-92(ra) # 800057a0 <_ZN10KSemaphorenwEm>
    80005804:	00050493          	mv	s1,a0
    80005808:	00050863          	beqz	a0,80005818 <_ZN10KSemaphore14semOpenHandlerEv+0x44>
    8000580c:	0009859b          	sext.w	a1,s3
    80005810:	00000097          	auipc	ra,0x0
    80005814:	d2c080e7          	jalr	-724(ra) # 8000553c <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    80005818:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    8000581c:	02048663          	beqz	s1,80005848 <_ZN10KSemaphore14semOpenHandlerEv+0x74>
            __asm__ volatile("li a0, 0");
    80005820:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80005824:	fffff097          	auipc	ra,0xfffff
    80005828:	e18080e7          	jalr	-488(ra) # 8000463c <_ZN5Riscv13w_a0_sscratchEv>
}
    8000582c:	02813083          	ld	ra,40(sp)
    80005830:	02013403          	ld	s0,32(sp)
    80005834:	01813483          	ld	s1,24(sp)
    80005838:	01013903          	ld	s2,16(sp)
    8000583c:	00813983          	ld	s3,8(sp)
    80005840:	03010113          	addi	sp,sp,48
    80005844:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80005848:	fff00513          	li	a0,-1
    8000584c:	fd9ff06f          	j	80005824 <_ZN10KSemaphore14semOpenHandlerEv+0x50>

0000000080005850 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    80005850:	ff010113          	addi	sp,sp,-16
    80005854:	00113423          	sd	ra,8(sp)
    80005858:	00813023          	sd	s0,0(sp)
    8000585c:	01010413          	addi	s0,sp,16
    80005860:	00050593          	mv	a1,a0
    kmem_cache_free(Riscv::semaphoreCache, p);
    80005864:	00003797          	auipc	a5,0x3
    80005868:	0a47b783          	ld	a5,164(a5) # 80008908 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000586c:	0007b503          	ld	a0,0(a5)
    80005870:	ffffc097          	auipc	ra,0xffffc
    80005874:	5b4080e7          	jalr	1460(ra) # 80001e24 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    //MemoryAllocator::kfree(p);
}
    80005878:	00813083          	ld	ra,8(sp)
    8000587c:	00013403          	ld	s0,0(sp)
    80005880:	01010113          	addi	sp,sp,16
    80005884:	00008067          	ret

0000000080005888 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    80005888:	ff010113          	addi	sp,sp,-16
    8000588c:	00113423          	sd	ra,8(sp)
    80005890:	00813023          	sd	s0,0(sp)
    80005894:	01010413          	addi	s0,sp,16
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80005898:	00058513          	mv	a0,a1
    kSem->wait();
    8000589c:	00000097          	auipc	ra,0x0
    800058a0:	d44080e7          	jalr	-700(ra) # 800055e0 <_ZN10KSemaphore4waitEv>
    if(PCB::running->retFromClosedSem)
    800058a4:	00003797          	auipc	a5,0x3
    800058a8:	0dc7b783          	ld	a5,220(a5) # 80008980 <_GLOBAL_OFFSET_TABLE_+0x98>
    800058ac:	0007b783          	ld	a5,0(a5)
    800058b0:	0587c783          	lbu	a5,88(a5)
    800058b4:	02078063          	beqz	a5,800058d4 <_ZN10KSemaphore14semWaitHandlerEv+0x4c>
        __asm__ volatile("li a0, 0x1");
    800058b8:	00100513          	li	a0,1
    else
        __asm__ volatile("li a0, 0x0");
    Riscv::w_a0_sscratch();
    800058bc:	fffff097          	auipc	ra,0xfffff
    800058c0:	d80080e7          	jalr	-640(ra) # 8000463c <_ZN5Riscv13w_a0_sscratchEv>
}
    800058c4:	00813083          	ld	ra,8(sp)
    800058c8:	00013403          	ld	s0,0(sp)
    800058cc:	01010113          	addi	sp,sp,16
    800058d0:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    800058d4:	00000513          	li	a0,0
    800058d8:	fe5ff06f          	j	800058bc <_ZN10KSemaphore14semWaitHandlerEv+0x34>

00000000800058dc <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler() {
    800058dc:	ff010113          	addi	sp,sp,-16
    800058e0:	00113423          	sd	ra,8(sp)
    800058e4:	00813023          	sd	s0,0(sp)
    800058e8:	01010413          	addi	s0,sp,16
    KSemaphore *kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800058ec:	00058513          	mv	a0,a1
    if (kSem == 0)
    800058f0:	02050463          	beqz	a0,80005918 <_ZN10KSemaphore16semSignalHandlerEv+0x3c>
    {
        __asm__ volatile("li a0, 0x1");
    }
    else
    {
        kSem->signal();
    800058f4:	00000097          	auipc	ra,0x0
    800058f8:	e64080e7          	jalr	-412(ra) # 80005758 <_ZN10KSemaphore6signalEv>
        __asm__ volatile("li a0, 0x0");
    800058fc:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80005900:	fffff097          	auipc	ra,0xfffff
    80005904:	d3c080e7          	jalr	-708(ra) # 8000463c <_ZN5Riscv13w_a0_sscratchEv>
}
    80005908:	00813083          	ld	ra,8(sp)
    8000590c:	00013403          	ld	s0,0(sp)
    80005910:	01010113          	addi	sp,sp,16
    80005914:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80005918:	00100513          	li	a0,1
    8000591c:	fe5ff06f          	j	80005900 <_ZN10KSemaphore16semSignalHandlerEv+0x24>

0000000080005920 <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    80005920:	fe010113          	addi	sp,sp,-32
    80005924:	00113c23          	sd	ra,24(sp)
    80005928:	00813823          	sd	s0,16(sp)
    8000592c:	00913423          	sd	s1,8(sp)
    80005930:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80005934:	00058493          	mv	s1,a1
    delete kSem;
    80005938:	00048e63          	beqz	s1,80005954 <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    8000593c:	00048513          	mv	a0,s1
    80005940:	00000097          	auipc	ra,0x0
    80005944:	d50080e7          	jalr	-688(ra) # 80005690 <_ZN10KSemaphoreD1Ev>
    80005948:	00048513          	mv	a0,s1
    8000594c:	00000097          	auipc	ra,0x0
    80005950:	f04080e7          	jalr	-252(ra) # 80005850 <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    80005954:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80005958:	fffff097          	auipc	ra,0xfffff
    8000595c:	ce4080e7          	jalr	-796(ra) # 8000463c <_ZN5Riscv13w_a0_sscratchEv>
}
    80005960:	01813083          	ld	ra,24(sp)
    80005964:	01013403          	ld	s0,16(sp)
    80005968:	00813483          	ld	s1,8(sp)
    8000596c:	02010113          	addi	sp,sp,32
    80005970:	00008067          	ret

0000000080005974 <start>:
    80005974:	ff010113          	addi	sp,sp,-16
    80005978:	00813423          	sd	s0,8(sp)
    8000597c:	01010413          	addi	s0,sp,16
    80005980:	300027f3          	csrr	a5,mstatus
    80005984:	ffffe737          	lui	a4,0xffffe
    80005988:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffef7ff>
    8000598c:	00e7f7b3          	and	a5,a5,a4
    80005990:	00001737          	lui	a4,0x1
    80005994:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005998:	00e7e7b3          	or	a5,a5,a4
    8000599c:	30079073          	csrw	mstatus,a5
    800059a0:	00000797          	auipc	a5,0x0
    800059a4:	16078793          	addi	a5,a5,352 # 80005b00 <system_main>
    800059a8:	34179073          	csrw	mepc,a5
    800059ac:	00000793          	li	a5,0
    800059b0:	18079073          	csrw	satp,a5
    800059b4:	000107b7          	lui	a5,0x10
    800059b8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800059bc:	30279073          	csrw	medeleg,a5
    800059c0:	30379073          	csrw	mideleg,a5
    800059c4:	104027f3          	csrr	a5,sie
    800059c8:	2227e793          	ori	a5,a5,546
    800059cc:	10479073          	csrw	sie,a5
    800059d0:	fff00793          	li	a5,-1
    800059d4:	00a7d793          	srli	a5,a5,0xa
    800059d8:	3b079073          	csrw	pmpaddr0,a5
    800059dc:	00f00793          	li	a5,15
    800059e0:	3a079073          	csrw	pmpcfg0,a5
    800059e4:	f14027f3          	csrr	a5,mhartid
    800059e8:	0200c737          	lui	a4,0x200c
    800059ec:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800059f0:	0007869b          	sext.w	a3,a5
    800059f4:	00269713          	slli	a4,a3,0x2
    800059f8:	000f4637          	lui	a2,0xf4
    800059fc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005a00:	00d70733          	add	a4,a4,a3
    80005a04:	0037979b          	slliw	a5,a5,0x3
    80005a08:	020046b7          	lui	a3,0x2004
    80005a0c:	00d787b3          	add	a5,a5,a3
    80005a10:	00c585b3          	add	a1,a1,a2
    80005a14:	00371693          	slli	a3,a4,0x3
    80005a18:	00003717          	auipc	a4,0x3
    80005a1c:	0d870713          	addi	a4,a4,216 # 80008af0 <timer_scratch>
    80005a20:	00b7b023          	sd	a1,0(a5)
    80005a24:	00d70733          	add	a4,a4,a3
    80005a28:	00f73c23          	sd	a5,24(a4)
    80005a2c:	02c73023          	sd	a2,32(a4)
    80005a30:	34071073          	csrw	mscratch,a4
    80005a34:	00000797          	auipc	a5,0x0
    80005a38:	6ec78793          	addi	a5,a5,1772 # 80006120 <timervec>
    80005a3c:	30579073          	csrw	mtvec,a5
    80005a40:	300027f3          	csrr	a5,mstatus
    80005a44:	0087e793          	ori	a5,a5,8
    80005a48:	30079073          	csrw	mstatus,a5
    80005a4c:	304027f3          	csrr	a5,mie
    80005a50:	0807e793          	ori	a5,a5,128
    80005a54:	30479073          	csrw	mie,a5
    80005a58:	f14027f3          	csrr	a5,mhartid
    80005a5c:	0007879b          	sext.w	a5,a5
    80005a60:	00078213          	mv	tp,a5
    80005a64:	30200073          	mret
    80005a68:	00813403          	ld	s0,8(sp)
    80005a6c:	01010113          	addi	sp,sp,16
    80005a70:	00008067          	ret

0000000080005a74 <timerinit>:
    80005a74:	ff010113          	addi	sp,sp,-16
    80005a78:	00813423          	sd	s0,8(sp)
    80005a7c:	01010413          	addi	s0,sp,16
    80005a80:	f14027f3          	csrr	a5,mhartid
    80005a84:	0200c737          	lui	a4,0x200c
    80005a88:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005a8c:	0007869b          	sext.w	a3,a5
    80005a90:	00269713          	slli	a4,a3,0x2
    80005a94:	000f4637          	lui	a2,0xf4
    80005a98:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005a9c:	00d70733          	add	a4,a4,a3
    80005aa0:	0037979b          	slliw	a5,a5,0x3
    80005aa4:	020046b7          	lui	a3,0x2004
    80005aa8:	00d787b3          	add	a5,a5,a3
    80005aac:	00c585b3          	add	a1,a1,a2
    80005ab0:	00371693          	slli	a3,a4,0x3
    80005ab4:	00003717          	auipc	a4,0x3
    80005ab8:	03c70713          	addi	a4,a4,60 # 80008af0 <timer_scratch>
    80005abc:	00b7b023          	sd	a1,0(a5)
    80005ac0:	00d70733          	add	a4,a4,a3
    80005ac4:	00f73c23          	sd	a5,24(a4)
    80005ac8:	02c73023          	sd	a2,32(a4)
    80005acc:	34071073          	csrw	mscratch,a4
    80005ad0:	00000797          	auipc	a5,0x0
    80005ad4:	65078793          	addi	a5,a5,1616 # 80006120 <timervec>
    80005ad8:	30579073          	csrw	mtvec,a5
    80005adc:	300027f3          	csrr	a5,mstatus
    80005ae0:	0087e793          	ori	a5,a5,8
    80005ae4:	30079073          	csrw	mstatus,a5
    80005ae8:	304027f3          	csrr	a5,mie
    80005aec:	0807e793          	ori	a5,a5,128
    80005af0:	30479073          	csrw	mie,a5
    80005af4:	00813403          	ld	s0,8(sp)
    80005af8:	01010113          	addi	sp,sp,16
    80005afc:	00008067          	ret

0000000080005b00 <system_main>:
    80005b00:	fe010113          	addi	sp,sp,-32
    80005b04:	00813823          	sd	s0,16(sp)
    80005b08:	00913423          	sd	s1,8(sp)
    80005b0c:	00113c23          	sd	ra,24(sp)
    80005b10:	02010413          	addi	s0,sp,32
    80005b14:	00000097          	auipc	ra,0x0
    80005b18:	0c4080e7          	jalr	196(ra) # 80005bd8 <cpuid>
    80005b1c:	00003497          	auipc	s1,0x3
    80005b20:	ea448493          	addi	s1,s1,-348 # 800089c0 <started>
    80005b24:	02050263          	beqz	a0,80005b48 <system_main+0x48>
    80005b28:	0004a783          	lw	a5,0(s1)
    80005b2c:	0007879b          	sext.w	a5,a5
    80005b30:	fe078ce3          	beqz	a5,80005b28 <system_main+0x28>
    80005b34:	0ff0000f          	fence
    80005b38:	00003517          	auipc	a0,0x3
    80005b3c:	ab050513          	addi	a0,a0,-1360 # 800085e8 <CONSOLE_STATUS+0x5d8>
    80005b40:	00001097          	auipc	ra,0x1
    80005b44:	a7c080e7          	jalr	-1412(ra) # 800065bc <panic>
    80005b48:	00001097          	auipc	ra,0x1
    80005b4c:	9d0080e7          	jalr	-1584(ra) # 80006518 <consoleinit>
    80005b50:	00001097          	auipc	ra,0x1
    80005b54:	15c080e7          	jalr	348(ra) # 80006cac <printfinit>
    80005b58:	00002517          	auipc	a0,0x2
    80005b5c:	64850513          	addi	a0,a0,1608 # 800081a0 <CONSOLE_STATUS+0x190>
    80005b60:	00001097          	auipc	ra,0x1
    80005b64:	ab8080e7          	jalr	-1352(ra) # 80006618 <__printf>
    80005b68:	00003517          	auipc	a0,0x3
    80005b6c:	a5050513          	addi	a0,a0,-1456 # 800085b8 <CONSOLE_STATUS+0x5a8>
    80005b70:	00001097          	auipc	ra,0x1
    80005b74:	aa8080e7          	jalr	-1368(ra) # 80006618 <__printf>
    80005b78:	00002517          	auipc	a0,0x2
    80005b7c:	62850513          	addi	a0,a0,1576 # 800081a0 <CONSOLE_STATUS+0x190>
    80005b80:	00001097          	auipc	ra,0x1
    80005b84:	a98080e7          	jalr	-1384(ra) # 80006618 <__printf>
    80005b88:	00001097          	auipc	ra,0x1
    80005b8c:	4b0080e7          	jalr	1200(ra) # 80007038 <kinit>
    80005b90:	00000097          	auipc	ra,0x0
    80005b94:	148080e7          	jalr	328(ra) # 80005cd8 <trapinit>
    80005b98:	00000097          	auipc	ra,0x0
    80005b9c:	16c080e7          	jalr	364(ra) # 80005d04 <trapinithart>
    80005ba0:	00000097          	auipc	ra,0x0
    80005ba4:	5c0080e7          	jalr	1472(ra) # 80006160 <plicinit>
    80005ba8:	00000097          	auipc	ra,0x0
    80005bac:	5e0080e7          	jalr	1504(ra) # 80006188 <plicinithart>
    80005bb0:	00000097          	auipc	ra,0x0
    80005bb4:	078080e7          	jalr	120(ra) # 80005c28 <userinit>
    80005bb8:	0ff0000f          	fence
    80005bbc:	00100793          	li	a5,1
    80005bc0:	00003517          	auipc	a0,0x3
    80005bc4:	a1050513          	addi	a0,a0,-1520 # 800085d0 <CONSOLE_STATUS+0x5c0>
    80005bc8:	00f4a023          	sw	a5,0(s1)
    80005bcc:	00001097          	auipc	ra,0x1
    80005bd0:	a4c080e7          	jalr	-1460(ra) # 80006618 <__printf>
    80005bd4:	0000006f          	j	80005bd4 <system_main+0xd4>

0000000080005bd8 <cpuid>:
    80005bd8:	ff010113          	addi	sp,sp,-16
    80005bdc:	00813423          	sd	s0,8(sp)
    80005be0:	01010413          	addi	s0,sp,16
    80005be4:	00020513          	mv	a0,tp
    80005be8:	00813403          	ld	s0,8(sp)
    80005bec:	0005051b          	sext.w	a0,a0
    80005bf0:	01010113          	addi	sp,sp,16
    80005bf4:	00008067          	ret

0000000080005bf8 <mycpu>:
    80005bf8:	ff010113          	addi	sp,sp,-16
    80005bfc:	00813423          	sd	s0,8(sp)
    80005c00:	01010413          	addi	s0,sp,16
    80005c04:	00020793          	mv	a5,tp
    80005c08:	00813403          	ld	s0,8(sp)
    80005c0c:	0007879b          	sext.w	a5,a5
    80005c10:	00779793          	slli	a5,a5,0x7
    80005c14:	00004517          	auipc	a0,0x4
    80005c18:	f0c50513          	addi	a0,a0,-244 # 80009b20 <cpus>
    80005c1c:	00f50533          	add	a0,a0,a5
    80005c20:	01010113          	addi	sp,sp,16
    80005c24:	00008067          	ret

0000000080005c28 <userinit>:
    80005c28:	ff010113          	addi	sp,sp,-16
    80005c2c:	00813423          	sd	s0,8(sp)
    80005c30:	01010413          	addi	s0,sp,16
    80005c34:	00813403          	ld	s0,8(sp)
    80005c38:	01010113          	addi	sp,sp,16
    80005c3c:	ffffe317          	auipc	t1,0xffffe
    80005c40:	0a430067          	jr	164(t1) # 80003ce0 <main>

0000000080005c44 <either_copyout>:
    80005c44:	ff010113          	addi	sp,sp,-16
    80005c48:	00813023          	sd	s0,0(sp)
    80005c4c:	00113423          	sd	ra,8(sp)
    80005c50:	01010413          	addi	s0,sp,16
    80005c54:	02051663          	bnez	a0,80005c80 <either_copyout+0x3c>
    80005c58:	00058513          	mv	a0,a1
    80005c5c:	00060593          	mv	a1,a2
    80005c60:	0006861b          	sext.w	a2,a3
    80005c64:	00002097          	auipc	ra,0x2
    80005c68:	c60080e7          	jalr	-928(ra) # 800078c4 <__memmove>
    80005c6c:	00813083          	ld	ra,8(sp)
    80005c70:	00013403          	ld	s0,0(sp)
    80005c74:	00000513          	li	a0,0
    80005c78:	01010113          	addi	sp,sp,16
    80005c7c:	00008067          	ret
    80005c80:	00003517          	auipc	a0,0x3
    80005c84:	99050513          	addi	a0,a0,-1648 # 80008610 <CONSOLE_STATUS+0x600>
    80005c88:	00001097          	auipc	ra,0x1
    80005c8c:	934080e7          	jalr	-1740(ra) # 800065bc <panic>

0000000080005c90 <either_copyin>:
    80005c90:	ff010113          	addi	sp,sp,-16
    80005c94:	00813023          	sd	s0,0(sp)
    80005c98:	00113423          	sd	ra,8(sp)
    80005c9c:	01010413          	addi	s0,sp,16
    80005ca0:	02059463          	bnez	a1,80005cc8 <either_copyin+0x38>
    80005ca4:	00060593          	mv	a1,a2
    80005ca8:	0006861b          	sext.w	a2,a3
    80005cac:	00002097          	auipc	ra,0x2
    80005cb0:	c18080e7          	jalr	-1000(ra) # 800078c4 <__memmove>
    80005cb4:	00813083          	ld	ra,8(sp)
    80005cb8:	00013403          	ld	s0,0(sp)
    80005cbc:	00000513          	li	a0,0
    80005cc0:	01010113          	addi	sp,sp,16
    80005cc4:	00008067          	ret
    80005cc8:	00003517          	auipc	a0,0x3
    80005ccc:	97050513          	addi	a0,a0,-1680 # 80008638 <CONSOLE_STATUS+0x628>
    80005cd0:	00001097          	auipc	ra,0x1
    80005cd4:	8ec080e7          	jalr	-1812(ra) # 800065bc <panic>

0000000080005cd8 <trapinit>:
    80005cd8:	ff010113          	addi	sp,sp,-16
    80005cdc:	00813423          	sd	s0,8(sp)
    80005ce0:	01010413          	addi	s0,sp,16
    80005ce4:	00813403          	ld	s0,8(sp)
    80005ce8:	00003597          	auipc	a1,0x3
    80005cec:	97858593          	addi	a1,a1,-1672 # 80008660 <CONSOLE_STATUS+0x650>
    80005cf0:	00004517          	auipc	a0,0x4
    80005cf4:	eb050513          	addi	a0,a0,-336 # 80009ba0 <tickslock>
    80005cf8:	01010113          	addi	sp,sp,16
    80005cfc:	00001317          	auipc	t1,0x1
    80005d00:	5cc30067          	jr	1484(t1) # 800072c8 <initlock>

0000000080005d04 <trapinithart>:
    80005d04:	ff010113          	addi	sp,sp,-16
    80005d08:	00813423          	sd	s0,8(sp)
    80005d0c:	01010413          	addi	s0,sp,16
    80005d10:	00000797          	auipc	a5,0x0
    80005d14:	30078793          	addi	a5,a5,768 # 80006010 <kernelvec>
    80005d18:	10579073          	csrw	stvec,a5
    80005d1c:	00813403          	ld	s0,8(sp)
    80005d20:	01010113          	addi	sp,sp,16
    80005d24:	00008067          	ret

0000000080005d28 <usertrap>:
    80005d28:	ff010113          	addi	sp,sp,-16
    80005d2c:	00813423          	sd	s0,8(sp)
    80005d30:	01010413          	addi	s0,sp,16
    80005d34:	00813403          	ld	s0,8(sp)
    80005d38:	01010113          	addi	sp,sp,16
    80005d3c:	00008067          	ret

0000000080005d40 <usertrapret>:
    80005d40:	ff010113          	addi	sp,sp,-16
    80005d44:	00813423          	sd	s0,8(sp)
    80005d48:	01010413          	addi	s0,sp,16
    80005d4c:	00813403          	ld	s0,8(sp)
    80005d50:	01010113          	addi	sp,sp,16
    80005d54:	00008067          	ret

0000000080005d58 <kerneltrap>:
    80005d58:	fe010113          	addi	sp,sp,-32
    80005d5c:	00813823          	sd	s0,16(sp)
    80005d60:	00113c23          	sd	ra,24(sp)
    80005d64:	00913423          	sd	s1,8(sp)
    80005d68:	02010413          	addi	s0,sp,32
    80005d6c:	142025f3          	csrr	a1,scause
    80005d70:	100027f3          	csrr	a5,sstatus
    80005d74:	0027f793          	andi	a5,a5,2
    80005d78:	10079c63          	bnez	a5,80005e90 <kerneltrap+0x138>
    80005d7c:	142027f3          	csrr	a5,scause
    80005d80:	0207ce63          	bltz	a5,80005dbc <kerneltrap+0x64>
    80005d84:	00003517          	auipc	a0,0x3
    80005d88:	92450513          	addi	a0,a0,-1756 # 800086a8 <CONSOLE_STATUS+0x698>
    80005d8c:	00001097          	auipc	ra,0x1
    80005d90:	88c080e7          	jalr	-1908(ra) # 80006618 <__printf>
    80005d94:	141025f3          	csrr	a1,sepc
    80005d98:	14302673          	csrr	a2,stval
    80005d9c:	00003517          	auipc	a0,0x3
    80005da0:	91c50513          	addi	a0,a0,-1764 # 800086b8 <CONSOLE_STATUS+0x6a8>
    80005da4:	00001097          	auipc	ra,0x1
    80005da8:	874080e7          	jalr	-1932(ra) # 80006618 <__printf>
    80005dac:	00003517          	auipc	a0,0x3
    80005db0:	92450513          	addi	a0,a0,-1756 # 800086d0 <CONSOLE_STATUS+0x6c0>
    80005db4:	00001097          	auipc	ra,0x1
    80005db8:	808080e7          	jalr	-2040(ra) # 800065bc <panic>
    80005dbc:	0ff7f713          	andi	a4,a5,255
    80005dc0:	00900693          	li	a3,9
    80005dc4:	04d70063          	beq	a4,a3,80005e04 <kerneltrap+0xac>
    80005dc8:	fff00713          	li	a4,-1
    80005dcc:	03f71713          	slli	a4,a4,0x3f
    80005dd0:	00170713          	addi	a4,a4,1
    80005dd4:	fae798e3          	bne	a5,a4,80005d84 <kerneltrap+0x2c>
    80005dd8:	00000097          	auipc	ra,0x0
    80005ddc:	e00080e7          	jalr	-512(ra) # 80005bd8 <cpuid>
    80005de0:	06050663          	beqz	a0,80005e4c <kerneltrap+0xf4>
    80005de4:	144027f3          	csrr	a5,sip
    80005de8:	ffd7f793          	andi	a5,a5,-3
    80005dec:	14479073          	csrw	sip,a5
    80005df0:	01813083          	ld	ra,24(sp)
    80005df4:	01013403          	ld	s0,16(sp)
    80005df8:	00813483          	ld	s1,8(sp)
    80005dfc:	02010113          	addi	sp,sp,32
    80005e00:	00008067          	ret
    80005e04:	00000097          	auipc	ra,0x0
    80005e08:	3d0080e7          	jalr	976(ra) # 800061d4 <plic_claim>
    80005e0c:	00a00793          	li	a5,10
    80005e10:	00050493          	mv	s1,a0
    80005e14:	06f50863          	beq	a0,a5,80005e84 <kerneltrap+0x12c>
    80005e18:	fc050ce3          	beqz	a0,80005df0 <kerneltrap+0x98>
    80005e1c:	00050593          	mv	a1,a0
    80005e20:	00003517          	auipc	a0,0x3
    80005e24:	86850513          	addi	a0,a0,-1944 # 80008688 <CONSOLE_STATUS+0x678>
    80005e28:	00000097          	auipc	ra,0x0
    80005e2c:	7f0080e7          	jalr	2032(ra) # 80006618 <__printf>
    80005e30:	01013403          	ld	s0,16(sp)
    80005e34:	01813083          	ld	ra,24(sp)
    80005e38:	00048513          	mv	a0,s1
    80005e3c:	00813483          	ld	s1,8(sp)
    80005e40:	02010113          	addi	sp,sp,32
    80005e44:	00000317          	auipc	t1,0x0
    80005e48:	3c830067          	jr	968(t1) # 8000620c <plic_complete>
    80005e4c:	00004517          	auipc	a0,0x4
    80005e50:	d5450513          	addi	a0,a0,-684 # 80009ba0 <tickslock>
    80005e54:	00001097          	auipc	ra,0x1
    80005e58:	498080e7          	jalr	1176(ra) # 800072ec <acquire>
    80005e5c:	00003717          	auipc	a4,0x3
    80005e60:	b6870713          	addi	a4,a4,-1176 # 800089c4 <ticks>
    80005e64:	00072783          	lw	a5,0(a4)
    80005e68:	00004517          	auipc	a0,0x4
    80005e6c:	d3850513          	addi	a0,a0,-712 # 80009ba0 <tickslock>
    80005e70:	0017879b          	addiw	a5,a5,1
    80005e74:	00f72023          	sw	a5,0(a4)
    80005e78:	00001097          	auipc	ra,0x1
    80005e7c:	540080e7          	jalr	1344(ra) # 800073b8 <release>
    80005e80:	f65ff06f          	j	80005de4 <kerneltrap+0x8c>
    80005e84:	00001097          	auipc	ra,0x1
    80005e88:	09c080e7          	jalr	156(ra) # 80006f20 <uartintr>
    80005e8c:	fa5ff06f          	j	80005e30 <kerneltrap+0xd8>
    80005e90:	00002517          	auipc	a0,0x2
    80005e94:	7d850513          	addi	a0,a0,2008 # 80008668 <CONSOLE_STATUS+0x658>
    80005e98:	00000097          	auipc	ra,0x0
    80005e9c:	724080e7          	jalr	1828(ra) # 800065bc <panic>

0000000080005ea0 <clockintr>:
    80005ea0:	fe010113          	addi	sp,sp,-32
    80005ea4:	00813823          	sd	s0,16(sp)
    80005ea8:	00913423          	sd	s1,8(sp)
    80005eac:	00113c23          	sd	ra,24(sp)
    80005eb0:	02010413          	addi	s0,sp,32
    80005eb4:	00004497          	auipc	s1,0x4
    80005eb8:	cec48493          	addi	s1,s1,-788 # 80009ba0 <tickslock>
    80005ebc:	00048513          	mv	a0,s1
    80005ec0:	00001097          	auipc	ra,0x1
    80005ec4:	42c080e7          	jalr	1068(ra) # 800072ec <acquire>
    80005ec8:	00003717          	auipc	a4,0x3
    80005ecc:	afc70713          	addi	a4,a4,-1284 # 800089c4 <ticks>
    80005ed0:	00072783          	lw	a5,0(a4)
    80005ed4:	01013403          	ld	s0,16(sp)
    80005ed8:	01813083          	ld	ra,24(sp)
    80005edc:	00048513          	mv	a0,s1
    80005ee0:	0017879b          	addiw	a5,a5,1
    80005ee4:	00813483          	ld	s1,8(sp)
    80005ee8:	00f72023          	sw	a5,0(a4)
    80005eec:	02010113          	addi	sp,sp,32
    80005ef0:	00001317          	auipc	t1,0x1
    80005ef4:	4c830067          	jr	1224(t1) # 800073b8 <release>

0000000080005ef8 <devintr>:
    80005ef8:	142027f3          	csrr	a5,scause
    80005efc:	00000513          	li	a0,0
    80005f00:	0007c463          	bltz	a5,80005f08 <devintr+0x10>
    80005f04:	00008067          	ret
    80005f08:	fe010113          	addi	sp,sp,-32
    80005f0c:	00813823          	sd	s0,16(sp)
    80005f10:	00113c23          	sd	ra,24(sp)
    80005f14:	00913423          	sd	s1,8(sp)
    80005f18:	02010413          	addi	s0,sp,32
    80005f1c:	0ff7f713          	andi	a4,a5,255
    80005f20:	00900693          	li	a3,9
    80005f24:	04d70c63          	beq	a4,a3,80005f7c <devintr+0x84>
    80005f28:	fff00713          	li	a4,-1
    80005f2c:	03f71713          	slli	a4,a4,0x3f
    80005f30:	00170713          	addi	a4,a4,1
    80005f34:	00e78c63          	beq	a5,a4,80005f4c <devintr+0x54>
    80005f38:	01813083          	ld	ra,24(sp)
    80005f3c:	01013403          	ld	s0,16(sp)
    80005f40:	00813483          	ld	s1,8(sp)
    80005f44:	02010113          	addi	sp,sp,32
    80005f48:	00008067          	ret
    80005f4c:	00000097          	auipc	ra,0x0
    80005f50:	c8c080e7          	jalr	-884(ra) # 80005bd8 <cpuid>
    80005f54:	06050663          	beqz	a0,80005fc0 <devintr+0xc8>
    80005f58:	144027f3          	csrr	a5,sip
    80005f5c:	ffd7f793          	andi	a5,a5,-3
    80005f60:	14479073          	csrw	sip,a5
    80005f64:	01813083          	ld	ra,24(sp)
    80005f68:	01013403          	ld	s0,16(sp)
    80005f6c:	00813483          	ld	s1,8(sp)
    80005f70:	00200513          	li	a0,2
    80005f74:	02010113          	addi	sp,sp,32
    80005f78:	00008067          	ret
    80005f7c:	00000097          	auipc	ra,0x0
    80005f80:	258080e7          	jalr	600(ra) # 800061d4 <plic_claim>
    80005f84:	00a00793          	li	a5,10
    80005f88:	00050493          	mv	s1,a0
    80005f8c:	06f50663          	beq	a0,a5,80005ff8 <devintr+0x100>
    80005f90:	00100513          	li	a0,1
    80005f94:	fa0482e3          	beqz	s1,80005f38 <devintr+0x40>
    80005f98:	00048593          	mv	a1,s1
    80005f9c:	00002517          	auipc	a0,0x2
    80005fa0:	6ec50513          	addi	a0,a0,1772 # 80008688 <CONSOLE_STATUS+0x678>
    80005fa4:	00000097          	auipc	ra,0x0
    80005fa8:	674080e7          	jalr	1652(ra) # 80006618 <__printf>
    80005fac:	00048513          	mv	a0,s1
    80005fb0:	00000097          	auipc	ra,0x0
    80005fb4:	25c080e7          	jalr	604(ra) # 8000620c <plic_complete>
    80005fb8:	00100513          	li	a0,1
    80005fbc:	f7dff06f          	j	80005f38 <devintr+0x40>
    80005fc0:	00004517          	auipc	a0,0x4
    80005fc4:	be050513          	addi	a0,a0,-1056 # 80009ba0 <tickslock>
    80005fc8:	00001097          	auipc	ra,0x1
    80005fcc:	324080e7          	jalr	804(ra) # 800072ec <acquire>
    80005fd0:	00003717          	auipc	a4,0x3
    80005fd4:	9f470713          	addi	a4,a4,-1548 # 800089c4 <ticks>
    80005fd8:	00072783          	lw	a5,0(a4)
    80005fdc:	00004517          	auipc	a0,0x4
    80005fe0:	bc450513          	addi	a0,a0,-1084 # 80009ba0 <tickslock>
    80005fe4:	0017879b          	addiw	a5,a5,1
    80005fe8:	00f72023          	sw	a5,0(a4)
    80005fec:	00001097          	auipc	ra,0x1
    80005ff0:	3cc080e7          	jalr	972(ra) # 800073b8 <release>
    80005ff4:	f65ff06f          	j	80005f58 <devintr+0x60>
    80005ff8:	00001097          	auipc	ra,0x1
    80005ffc:	f28080e7          	jalr	-216(ra) # 80006f20 <uartintr>
    80006000:	fadff06f          	j	80005fac <devintr+0xb4>
	...

0000000080006010 <kernelvec>:
    80006010:	f0010113          	addi	sp,sp,-256
    80006014:	00113023          	sd	ra,0(sp)
    80006018:	00213423          	sd	sp,8(sp)
    8000601c:	00313823          	sd	gp,16(sp)
    80006020:	00413c23          	sd	tp,24(sp)
    80006024:	02513023          	sd	t0,32(sp)
    80006028:	02613423          	sd	t1,40(sp)
    8000602c:	02713823          	sd	t2,48(sp)
    80006030:	02813c23          	sd	s0,56(sp)
    80006034:	04913023          	sd	s1,64(sp)
    80006038:	04a13423          	sd	a0,72(sp)
    8000603c:	04b13823          	sd	a1,80(sp)
    80006040:	04c13c23          	sd	a2,88(sp)
    80006044:	06d13023          	sd	a3,96(sp)
    80006048:	06e13423          	sd	a4,104(sp)
    8000604c:	06f13823          	sd	a5,112(sp)
    80006050:	07013c23          	sd	a6,120(sp)
    80006054:	09113023          	sd	a7,128(sp)
    80006058:	09213423          	sd	s2,136(sp)
    8000605c:	09313823          	sd	s3,144(sp)
    80006060:	09413c23          	sd	s4,152(sp)
    80006064:	0b513023          	sd	s5,160(sp)
    80006068:	0b613423          	sd	s6,168(sp)
    8000606c:	0b713823          	sd	s7,176(sp)
    80006070:	0b813c23          	sd	s8,184(sp)
    80006074:	0d913023          	sd	s9,192(sp)
    80006078:	0da13423          	sd	s10,200(sp)
    8000607c:	0db13823          	sd	s11,208(sp)
    80006080:	0dc13c23          	sd	t3,216(sp)
    80006084:	0fd13023          	sd	t4,224(sp)
    80006088:	0fe13423          	sd	t5,232(sp)
    8000608c:	0ff13823          	sd	t6,240(sp)
    80006090:	cc9ff0ef          	jal	ra,80005d58 <kerneltrap>
    80006094:	00013083          	ld	ra,0(sp)
    80006098:	00813103          	ld	sp,8(sp)
    8000609c:	01013183          	ld	gp,16(sp)
    800060a0:	02013283          	ld	t0,32(sp)
    800060a4:	02813303          	ld	t1,40(sp)
    800060a8:	03013383          	ld	t2,48(sp)
    800060ac:	03813403          	ld	s0,56(sp)
    800060b0:	04013483          	ld	s1,64(sp)
    800060b4:	04813503          	ld	a0,72(sp)
    800060b8:	05013583          	ld	a1,80(sp)
    800060bc:	05813603          	ld	a2,88(sp)
    800060c0:	06013683          	ld	a3,96(sp)
    800060c4:	06813703          	ld	a4,104(sp)
    800060c8:	07013783          	ld	a5,112(sp)
    800060cc:	07813803          	ld	a6,120(sp)
    800060d0:	08013883          	ld	a7,128(sp)
    800060d4:	08813903          	ld	s2,136(sp)
    800060d8:	09013983          	ld	s3,144(sp)
    800060dc:	09813a03          	ld	s4,152(sp)
    800060e0:	0a013a83          	ld	s5,160(sp)
    800060e4:	0a813b03          	ld	s6,168(sp)
    800060e8:	0b013b83          	ld	s7,176(sp)
    800060ec:	0b813c03          	ld	s8,184(sp)
    800060f0:	0c013c83          	ld	s9,192(sp)
    800060f4:	0c813d03          	ld	s10,200(sp)
    800060f8:	0d013d83          	ld	s11,208(sp)
    800060fc:	0d813e03          	ld	t3,216(sp)
    80006100:	0e013e83          	ld	t4,224(sp)
    80006104:	0e813f03          	ld	t5,232(sp)
    80006108:	0f013f83          	ld	t6,240(sp)
    8000610c:	10010113          	addi	sp,sp,256
    80006110:	10200073          	sret
    80006114:	00000013          	nop
    80006118:	00000013          	nop
    8000611c:	00000013          	nop

0000000080006120 <timervec>:
    80006120:	34051573          	csrrw	a0,mscratch,a0
    80006124:	00b53023          	sd	a1,0(a0)
    80006128:	00c53423          	sd	a2,8(a0)
    8000612c:	00d53823          	sd	a3,16(a0)
    80006130:	01853583          	ld	a1,24(a0)
    80006134:	02053603          	ld	a2,32(a0)
    80006138:	0005b683          	ld	a3,0(a1)
    8000613c:	00c686b3          	add	a3,a3,a2
    80006140:	00d5b023          	sd	a3,0(a1)
    80006144:	00200593          	li	a1,2
    80006148:	14459073          	csrw	sip,a1
    8000614c:	01053683          	ld	a3,16(a0)
    80006150:	00853603          	ld	a2,8(a0)
    80006154:	00053583          	ld	a1,0(a0)
    80006158:	34051573          	csrrw	a0,mscratch,a0
    8000615c:	30200073          	mret

0000000080006160 <plicinit>:
    80006160:	ff010113          	addi	sp,sp,-16
    80006164:	00813423          	sd	s0,8(sp)
    80006168:	01010413          	addi	s0,sp,16
    8000616c:	00813403          	ld	s0,8(sp)
    80006170:	0c0007b7          	lui	a5,0xc000
    80006174:	00100713          	li	a4,1
    80006178:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000617c:	00e7a223          	sw	a4,4(a5)
    80006180:	01010113          	addi	sp,sp,16
    80006184:	00008067          	ret

0000000080006188 <plicinithart>:
    80006188:	ff010113          	addi	sp,sp,-16
    8000618c:	00813023          	sd	s0,0(sp)
    80006190:	00113423          	sd	ra,8(sp)
    80006194:	01010413          	addi	s0,sp,16
    80006198:	00000097          	auipc	ra,0x0
    8000619c:	a40080e7          	jalr	-1472(ra) # 80005bd8 <cpuid>
    800061a0:	0085171b          	slliw	a4,a0,0x8
    800061a4:	0c0027b7          	lui	a5,0xc002
    800061a8:	00e787b3          	add	a5,a5,a4
    800061ac:	40200713          	li	a4,1026
    800061b0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800061b4:	00813083          	ld	ra,8(sp)
    800061b8:	00013403          	ld	s0,0(sp)
    800061bc:	00d5151b          	slliw	a0,a0,0xd
    800061c0:	0c2017b7          	lui	a5,0xc201
    800061c4:	00a78533          	add	a0,a5,a0
    800061c8:	00052023          	sw	zero,0(a0)
    800061cc:	01010113          	addi	sp,sp,16
    800061d0:	00008067          	ret

00000000800061d4 <plic_claim>:
    800061d4:	ff010113          	addi	sp,sp,-16
    800061d8:	00813023          	sd	s0,0(sp)
    800061dc:	00113423          	sd	ra,8(sp)
    800061e0:	01010413          	addi	s0,sp,16
    800061e4:	00000097          	auipc	ra,0x0
    800061e8:	9f4080e7          	jalr	-1548(ra) # 80005bd8 <cpuid>
    800061ec:	00813083          	ld	ra,8(sp)
    800061f0:	00013403          	ld	s0,0(sp)
    800061f4:	00d5151b          	slliw	a0,a0,0xd
    800061f8:	0c2017b7          	lui	a5,0xc201
    800061fc:	00a78533          	add	a0,a5,a0
    80006200:	00452503          	lw	a0,4(a0)
    80006204:	01010113          	addi	sp,sp,16
    80006208:	00008067          	ret

000000008000620c <plic_complete>:
    8000620c:	fe010113          	addi	sp,sp,-32
    80006210:	00813823          	sd	s0,16(sp)
    80006214:	00913423          	sd	s1,8(sp)
    80006218:	00113c23          	sd	ra,24(sp)
    8000621c:	02010413          	addi	s0,sp,32
    80006220:	00050493          	mv	s1,a0
    80006224:	00000097          	auipc	ra,0x0
    80006228:	9b4080e7          	jalr	-1612(ra) # 80005bd8 <cpuid>
    8000622c:	01813083          	ld	ra,24(sp)
    80006230:	01013403          	ld	s0,16(sp)
    80006234:	00d5179b          	slliw	a5,a0,0xd
    80006238:	0c201737          	lui	a4,0xc201
    8000623c:	00f707b3          	add	a5,a4,a5
    80006240:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006244:	00813483          	ld	s1,8(sp)
    80006248:	02010113          	addi	sp,sp,32
    8000624c:	00008067          	ret

0000000080006250 <consolewrite>:
    80006250:	fb010113          	addi	sp,sp,-80
    80006254:	04813023          	sd	s0,64(sp)
    80006258:	04113423          	sd	ra,72(sp)
    8000625c:	02913c23          	sd	s1,56(sp)
    80006260:	03213823          	sd	s2,48(sp)
    80006264:	03313423          	sd	s3,40(sp)
    80006268:	03413023          	sd	s4,32(sp)
    8000626c:	01513c23          	sd	s5,24(sp)
    80006270:	05010413          	addi	s0,sp,80
    80006274:	06c05c63          	blez	a2,800062ec <consolewrite+0x9c>
    80006278:	00060993          	mv	s3,a2
    8000627c:	00050a13          	mv	s4,a0
    80006280:	00058493          	mv	s1,a1
    80006284:	00000913          	li	s2,0
    80006288:	fff00a93          	li	s5,-1
    8000628c:	01c0006f          	j	800062a8 <consolewrite+0x58>
    80006290:	fbf44503          	lbu	a0,-65(s0)
    80006294:	0019091b          	addiw	s2,s2,1
    80006298:	00148493          	addi	s1,s1,1
    8000629c:	00001097          	auipc	ra,0x1
    800062a0:	a9c080e7          	jalr	-1380(ra) # 80006d38 <uartputc>
    800062a4:	03298063          	beq	s3,s2,800062c4 <consolewrite+0x74>
    800062a8:	00048613          	mv	a2,s1
    800062ac:	00100693          	li	a3,1
    800062b0:	000a0593          	mv	a1,s4
    800062b4:	fbf40513          	addi	a0,s0,-65
    800062b8:	00000097          	auipc	ra,0x0
    800062bc:	9d8080e7          	jalr	-1576(ra) # 80005c90 <either_copyin>
    800062c0:	fd5518e3          	bne	a0,s5,80006290 <consolewrite+0x40>
    800062c4:	04813083          	ld	ra,72(sp)
    800062c8:	04013403          	ld	s0,64(sp)
    800062cc:	03813483          	ld	s1,56(sp)
    800062d0:	02813983          	ld	s3,40(sp)
    800062d4:	02013a03          	ld	s4,32(sp)
    800062d8:	01813a83          	ld	s5,24(sp)
    800062dc:	00090513          	mv	a0,s2
    800062e0:	03013903          	ld	s2,48(sp)
    800062e4:	05010113          	addi	sp,sp,80
    800062e8:	00008067          	ret
    800062ec:	00000913          	li	s2,0
    800062f0:	fd5ff06f          	j	800062c4 <consolewrite+0x74>

00000000800062f4 <consoleread>:
    800062f4:	f9010113          	addi	sp,sp,-112
    800062f8:	06813023          	sd	s0,96(sp)
    800062fc:	04913c23          	sd	s1,88(sp)
    80006300:	05213823          	sd	s2,80(sp)
    80006304:	05313423          	sd	s3,72(sp)
    80006308:	05413023          	sd	s4,64(sp)
    8000630c:	03513c23          	sd	s5,56(sp)
    80006310:	03613823          	sd	s6,48(sp)
    80006314:	03713423          	sd	s7,40(sp)
    80006318:	03813023          	sd	s8,32(sp)
    8000631c:	06113423          	sd	ra,104(sp)
    80006320:	01913c23          	sd	s9,24(sp)
    80006324:	07010413          	addi	s0,sp,112
    80006328:	00060b93          	mv	s7,a2
    8000632c:	00050913          	mv	s2,a0
    80006330:	00058c13          	mv	s8,a1
    80006334:	00060b1b          	sext.w	s6,a2
    80006338:	00004497          	auipc	s1,0x4
    8000633c:	89048493          	addi	s1,s1,-1904 # 80009bc8 <cons>
    80006340:	00400993          	li	s3,4
    80006344:	fff00a13          	li	s4,-1
    80006348:	00a00a93          	li	s5,10
    8000634c:	05705e63          	blez	s7,800063a8 <consoleread+0xb4>
    80006350:	09c4a703          	lw	a4,156(s1)
    80006354:	0984a783          	lw	a5,152(s1)
    80006358:	0007071b          	sext.w	a4,a4
    8000635c:	08e78463          	beq	a5,a4,800063e4 <consoleread+0xf0>
    80006360:	07f7f713          	andi	a4,a5,127
    80006364:	00e48733          	add	a4,s1,a4
    80006368:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000636c:	0017869b          	addiw	a3,a5,1
    80006370:	08d4ac23          	sw	a3,152(s1)
    80006374:	00070c9b          	sext.w	s9,a4
    80006378:	0b370663          	beq	a4,s3,80006424 <consoleread+0x130>
    8000637c:	00100693          	li	a3,1
    80006380:	f9f40613          	addi	a2,s0,-97
    80006384:	000c0593          	mv	a1,s8
    80006388:	00090513          	mv	a0,s2
    8000638c:	f8e40fa3          	sb	a4,-97(s0)
    80006390:	00000097          	auipc	ra,0x0
    80006394:	8b4080e7          	jalr	-1868(ra) # 80005c44 <either_copyout>
    80006398:	01450863          	beq	a0,s4,800063a8 <consoleread+0xb4>
    8000639c:	001c0c13          	addi	s8,s8,1
    800063a0:	fffb8b9b          	addiw	s7,s7,-1
    800063a4:	fb5c94e3          	bne	s9,s5,8000634c <consoleread+0x58>
    800063a8:	000b851b          	sext.w	a0,s7
    800063ac:	06813083          	ld	ra,104(sp)
    800063b0:	06013403          	ld	s0,96(sp)
    800063b4:	05813483          	ld	s1,88(sp)
    800063b8:	05013903          	ld	s2,80(sp)
    800063bc:	04813983          	ld	s3,72(sp)
    800063c0:	04013a03          	ld	s4,64(sp)
    800063c4:	03813a83          	ld	s5,56(sp)
    800063c8:	02813b83          	ld	s7,40(sp)
    800063cc:	02013c03          	ld	s8,32(sp)
    800063d0:	01813c83          	ld	s9,24(sp)
    800063d4:	40ab053b          	subw	a0,s6,a0
    800063d8:	03013b03          	ld	s6,48(sp)
    800063dc:	07010113          	addi	sp,sp,112
    800063e0:	00008067          	ret
    800063e4:	00001097          	auipc	ra,0x1
    800063e8:	1d8080e7          	jalr	472(ra) # 800075bc <push_on>
    800063ec:	0984a703          	lw	a4,152(s1)
    800063f0:	09c4a783          	lw	a5,156(s1)
    800063f4:	0007879b          	sext.w	a5,a5
    800063f8:	fef70ce3          	beq	a4,a5,800063f0 <consoleread+0xfc>
    800063fc:	00001097          	auipc	ra,0x1
    80006400:	234080e7          	jalr	564(ra) # 80007630 <pop_on>
    80006404:	0984a783          	lw	a5,152(s1)
    80006408:	07f7f713          	andi	a4,a5,127
    8000640c:	00e48733          	add	a4,s1,a4
    80006410:	01874703          	lbu	a4,24(a4)
    80006414:	0017869b          	addiw	a3,a5,1
    80006418:	08d4ac23          	sw	a3,152(s1)
    8000641c:	00070c9b          	sext.w	s9,a4
    80006420:	f5371ee3          	bne	a4,s3,8000637c <consoleread+0x88>
    80006424:	000b851b          	sext.w	a0,s7
    80006428:	f96bf2e3          	bgeu	s7,s6,800063ac <consoleread+0xb8>
    8000642c:	08f4ac23          	sw	a5,152(s1)
    80006430:	f7dff06f          	j	800063ac <consoleread+0xb8>

0000000080006434 <consputc>:
    80006434:	10000793          	li	a5,256
    80006438:	00f50663          	beq	a0,a5,80006444 <consputc+0x10>
    8000643c:	00001317          	auipc	t1,0x1
    80006440:	9f430067          	jr	-1548(t1) # 80006e30 <uartputc_sync>
    80006444:	ff010113          	addi	sp,sp,-16
    80006448:	00113423          	sd	ra,8(sp)
    8000644c:	00813023          	sd	s0,0(sp)
    80006450:	01010413          	addi	s0,sp,16
    80006454:	00800513          	li	a0,8
    80006458:	00001097          	auipc	ra,0x1
    8000645c:	9d8080e7          	jalr	-1576(ra) # 80006e30 <uartputc_sync>
    80006460:	02000513          	li	a0,32
    80006464:	00001097          	auipc	ra,0x1
    80006468:	9cc080e7          	jalr	-1588(ra) # 80006e30 <uartputc_sync>
    8000646c:	00013403          	ld	s0,0(sp)
    80006470:	00813083          	ld	ra,8(sp)
    80006474:	00800513          	li	a0,8
    80006478:	01010113          	addi	sp,sp,16
    8000647c:	00001317          	auipc	t1,0x1
    80006480:	9b430067          	jr	-1612(t1) # 80006e30 <uartputc_sync>

0000000080006484 <consoleintr>:
    80006484:	fe010113          	addi	sp,sp,-32
    80006488:	00813823          	sd	s0,16(sp)
    8000648c:	00913423          	sd	s1,8(sp)
    80006490:	01213023          	sd	s2,0(sp)
    80006494:	00113c23          	sd	ra,24(sp)
    80006498:	02010413          	addi	s0,sp,32
    8000649c:	00003917          	auipc	s2,0x3
    800064a0:	72c90913          	addi	s2,s2,1836 # 80009bc8 <cons>
    800064a4:	00050493          	mv	s1,a0
    800064a8:	00090513          	mv	a0,s2
    800064ac:	00001097          	auipc	ra,0x1
    800064b0:	e40080e7          	jalr	-448(ra) # 800072ec <acquire>
    800064b4:	02048c63          	beqz	s1,800064ec <consoleintr+0x68>
    800064b8:	0a092783          	lw	a5,160(s2)
    800064bc:	09892703          	lw	a4,152(s2)
    800064c0:	07f00693          	li	a3,127
    800064c4:	40e7873b          	subw	a4,a5,a4
    800064c8:	02e6e263          	bltu	a3,a4,800064ec <consoleintr+0x68>
    800064cc:	00d00713          	li	a4,13
    800064d0:	04e48063          	beq	s1,a4,80006510 <consoleintr+0x8c>
    800064d4:	07f7f713          	andi	a4,a5,127
    800064d8:	00e90733          	add	a4,s2,a4
    800064dc:	0017879b          	addiw	a5,a5,1
    800064e0:	0af92023          	sw	a5,160(s2)
    800064e4:	00970c23          	sb	s1,24(a4)
    800064e8:	08f92e23          	sw	a5,156(s2)
    800064ec:	01013403          	ld	s0,16(sp)
    800064f0:	01813083          	ld	ra,24(sp)
    800064f4:	00813483          	ld	s1,8(sp)
    800064f8:	00013903          	ld	s2,0(sp)
    800064fc:	00003517          	auipc	a0,0x3
    80006500:	6cc50513          	addi	a0,a0,1740 # 80009bc8 <cons>
    80006504:	02010113          	addi	sp,sp,32
    80006508:	00001317          	auipc	t1,0x1
    8000650c:	eb030067          	jr	-336(t1) # 800073b8 <release>
    80006510:	00a00493          	li	s1,10
    80006514:	fc1ff06f          	j	800064d4 <consoleintr+0x50>

0000000080006518 <consoleinit>:
    80006518:	fe010113          	addi	sp,sp,-32
    8000651c:	00113c23          	sd	ra,24(sp)
    80006520:	00813823          	sd	s0,16(sp)
    80006524:	00913423          	sd	s1,8(sp)
    80006528:	02010413          	addi	s0,sp,32
    8000652c:	00003497          	auipc	s1,0x3
    80006530:	69c48493          	addi	s1,s1,1692 # 80009bc8 <cons>
    80006534:	00048513          	mv	a0,s1
    80006538:	00002597          	auipc	a1,0x2
    8000653c:	1a858593          	addi	a1,a1,424 # 800086e0 <CONSOLE_STATUS+0x6d0>
    80006540:	00001097          	auipc	ra,0x1
    80006544:	d88080e7          	jalr	-632(ra) # 800072c8 <initlock>
    80006548:	00000097          	auipc	ra,0x0
    8000654c:	7ac080e7          	jalr	1964(ra) # 80006cf4 <uartinit>
    80006550:	01813083          	ld	ra,24(sp)
    80006554:	01013403          	ld	s0,16(sp)
    80006558:	00000797          	auipc	a5,0x0
    8000655c:	d9c78793          	addi	a5,a5,-612 # 800062f4 <consoleread>
    80006560:	0af4bc23          	sd	a5,184(s1)
    80006564:	00000797          	auipc	a5,0x0
    80006568:	cec78793          	addi	a5,a5,-788 # 80006250 <consolewrite>
    8000656c:	0cf4b023          	sd	a5,192(s1)
    80006570:	00813483          	ld	s1,8(sp)
    80006574:	02010113          	addi	sp,sp,32
    80006578:	00008067          	ret

000000008000657c <console_read>:
    8000657c:	ff010113          	addi	sp,sp,-16
    80006580:	00813423          	sd	s0,8(sp)
    80006584:	01010413          	addi	s0,sp,16
    80006588:	00813403          	ld	s0,8(sp)
    8000658c:	00003317          	auipc	t1,0x3
    80006590:	6f433303          	ld	t1,1780(t1) # 80009c80 <devsw+0x10>
    80006594:	01010113          	addi	sp,sp,16
    80006598:	00030067          	jr	t1

000000008000659c <console_write>:
    8000659c:	ff010113          	addi	sp,sp,-16
    800065a0:	00813423          	sd	s0,8(sp)
    800065a4:	01010413          	addi	s0,sp,16
    800065a8:	00813403          	ld	s0,8(sp)
    800065ac:	00003317          	auipc	t1,0x3
    800065b0:	6dc33303          	ld	t1,1756(t1) # 80009c88 <devsw+0x18>
    800065b4:	01010113          	addi	sp,sp,16
    800065b8:	00030067          	jr	t1

00000000800065bc <panic>:
    800065bc:	fe010113          	addi	sp,sp,-32
    800065c0:	00113c23          	sd	ra,24(sp)
    800065c4:	00813823          	sd	s0,16(sp)
    800065c8:	00913423          	sd	s1,8(sp)
    800065cc:	02010413          	addi	s0,sp,32
    800065d0:	00050493          	mv	s1,a0
    800065d4:	00002517          	auipc	a0,0x2
    800065d8:	11450513          	addi	a0,a0,276 # 800086e8 <CONSOLE_STATUS+0x6d8>
    800065dc:	00003797          	auipc	a5,0x3
    800065e0:	7407a623          	sw	zero,1868(a5) # 80009d28 <pr+0x18>
    800065e4:	00000097          	auipc	ra,0x0
    800065e8:	034080e7          	jalr	52(ra) # 80006618 <__printf>
    800065ec:	00048513          	mv	a0,s1
    800065f0:	00000097          	auipc	ra,0x0
    800065f4:	028080e7          	jalr	40(ra) # 80006618 <__printf>
    800065f8:	00002517          	auipc	a0,0x2
    800065fc:	ba850513          	addi	a0,a0,-1112 # 800081a0 <CONSOLE_STATUS+0x190>
    80006600:	00000097          	auipc	ra,0x0
    80006604:	018080e7          	jalr	24(ra) # 80006618 <__printf>
    80006608:	00100793          	li	a5,1
    8000660c:	00002717          	auipc	a4,0x2
    80006610:	3af72e23          	sw	a5,956(a4) # 800089c8 <panicked>
    80006614:	0000006f          	j	80006614 <panic+0x58>

0000000080006618 <__printf>:
    80006618:	f3010113          	addi	sp,sp,-208
    8000661c:	08813023          	sd	s0,128(sp)
    80006620:	07313423          	sd	s3,104(sp)
    80006624:	09010413          	addi	s0,sp,144
    80006628:	05813023          	sd	s8,64(sp)
    8000662c:	08113423          	sd	ra,136(sp)
    80006630:	06913c23          	sd	s1,120(sp)
    80006634:	07213823          	sd	s2,112(sp)
    80006638:	07413023          	sd	s4,96(sp)
    8000663c:	05513c23          	sd	s5,88(sp)
    80006640:	05613823          	sd	s6,80(sp)
    80006644:	05713423          	sd	s7,72(sp)
    80006648:	03913c23          	sd	s9,56(sp)
    8000664c:	03a13823          	sd	s10,48(sp)
    80006650:	03b13423          	sd	s11,40(sp)
    80006654:	00003317          	auipc	t1,0x3
    80006658:	6bc30313          	addi	t1,t1,1724 # 80009d10 <pr>
    8000665c:	01832c03          	lw	s8,24(t1)
    80006660:	00b43423          	sd	a1,8(s0)
    80006664:	00c43823          	sd	a2,16(s0)
    80006668:	00d43c23          	sd	a3,24(s0)
    8000666c:	02e43023          	sd	a4,32(s0)
    80006670:	02f43423          	sd	a5,40(s0)
    80006674:	03043823          	sd	a6,48(s0)
    80006678:	03143c23          	sd	a7,56(s0)
    8000667c:	00050993          	mv	s3,a0
    80006680:	4a0c1663          	bnez	s8,80006b2c <__printf+0x514>
    80006684:	60098c63          	beqz	s3,80006c9c <__printf+0x684>
    80006688:	0009c503          	lbu	a0,0(s3)
    8000668c:	00840793          	addi	a5,s0,8
    80006690:	f6f43c23          	sd	a5,-136(s0)
    80006694:	00000493          	li	s1,0
    80006698:	22050063          	beqz	a0,800068b8 <__printf+0x2a0>
    8000669c:	00002a37          	lui	s4,0x2
    800066a0:	00018ab7          	lui	s5,0x18
    800066a4:	000f4b37          	lui	s6,0xf4
    800066a8:	00989bb7          	lui	s7,0x989
    800066ac:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800066b0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800066b4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800066b8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800066bc:	00148c9b          	addiw	s9,s1,1
    800066c0:	02500793          	li	a5,37
    800066c4:	01998933          	add	s2,s3,s9
    800066c8:	38f51263          	bne	a0,a5,80006a4c <__printf+0x434>
    800066cc:	00094783          	lbu	a5,0(s2)
    800066d0:	00078c9b          	sext.w	s9,a5
    800066d4:	1e078263          	beqz	a5,800068b8 <__printf+0x2a0>
    800066d8:	0024849b          	addiw	s1,s1,2
    800066dc:	07000713          	li	a4,112
    800066e0:	00998933          	add	s2,s3,s1
    800066e4:	38e78a63          	beq	a5,a4,80006a78 <__printf+0x460>
    800066e8:	20f76863          	bltu	a4,a5,800068f8 <__printf+0x2e0>
    800066ec:	42a78863          	beq	a5,a0,80006b1c <__printf+0x504>
    800066f0:	06400713          	li	a4,100
    800066f4:	40e79663          	bne	a5,a4,80006b00 <__printf+0x4e8>
    800066f8:	f7843783          	ld	a5,-136(s0)
    800066fc:	0007a603          	lw	a2,0(a5)
    80006700:	00878793          	addi	a5,a5,8
    80006704:	f6f43c23          	sd	a5,-136(s0)
    80006708:	42064a63          	bltz	a2,80006b3c <__printf+0x524>
    8000670c:	00a00713          	li	a4,10
    80006710:	02e677bb          	remuw	a5,a2,a4
    80006714:	00002d97          	auipc	s11,0x2
    80006718:	ffcd8d93          	addi	s11,s11,-4 # 80008710 <digits>
    8000671c:	00900593          	li	a1,9
    80006720:	0006051b          	sext.w	a0,a2
    80006724:	00000c93          	li	s9,0
    80006728:	02079793          	slli	a5,a5,0x20
    8000672c:	0207d793          	srli	a5,a5,0x20
    80006730:	00fd87b3          	add	a5,s11,a5
    80006734:	0007c783          	lbu	a5,0(a5)
    80006738:	02e656bb          	divuw	a3,a2,a4
    8000673c:	f8f40023          	sb	a5,-128(s0)
    80006740:	14c5d863          	bge	a1,a2,80006890 <__printf+0x278>
    80006744:	06300593          	li	a1,99
    80006748:	00100c93          	li	s9,1
    8000674c:	02e6f7bb          	remuw	a5,a3,a4
    80006750:	02079793          	slli	a5,a5,0x20
    80006754:	0207d793          	srli	a5,a5,0x20
    80006758:	00fd87b3          	add	a5,s11,a5
    8000675c:	0007c783          	lbu	a5,0(a5)
    80006760:	02e6d73b          	divuw	a4,a3,a4
    80006764:	f8f400a3          	sb	a5,-127(s0)
    80006768:	12a5f463          	bgeu	a1,a0,80006890 <__printf+0x278>
    8000676c:	00a00693          	li	a3,10
    80006770:	00900593          	li	a1,9
    80006774:	02d777bb          	remuw	a5,a4,a3
    80006778:	02079793          	slli	a5,a5,0x20
    8000677c:	0207d793          	srli	a5,a5,0x20
    80006780:	00fd87b3          	add	a5,s11,a5
    80006784:	0007c503          	lbu	a0,0(a5)
    80006788:	02d757bb          	divuw	a5,a4,a3
    8000678c:	f8a40123          	sb	a0,-126(s0)
    80006790:	48e5f263          	bgeu	a1,a4,80006c14 <__printf+0x5fc>
    80006794:	06300513          	li	a0,99
    80006798:	02d7f5bb          	remuw	a1,a5,a3
    8000679c:	02059593          	slli	a1,a1,0x20
    800067a0:	0205d593          	srli	a1,a1,0x20
    800067a4:	00bd85b3          	add	a1,s11,a1
    800067a8:	0005c583          	lbu	a1,0(a1)
    800067ac:	02d7d7bb          	divuw	a5,a5,a3
    800067b0:	f8b401a3          	sb	a1,-125(s0)
    800067b4:	48e57263          	bgeu	a0,a4,80006c38 <__printf+0x620>
    800067b8:	3e700513          	li	a0,999
    800067bc:	02d7f5bb          	remuw	a1,a5,a3
    800067c0:	02059593          	slli	a1,a1,0x20
    800067c4:	0205d593          	srli	a1,a1,0x20
    800067c8:	00bd85b3          	add	a1,s11,a1
    800067cc:	0005c583          	lbu	a1,0(a1)
    800067d0:	02d7d7bb          	divuw	a5,a5,a3
    800067d4:	f8b40223          	sb	a1,-124(s0)
    800067d8:	46e57663          	bgeu	a0,a4,80006c44 <__printf+0x62c>
    800067dc:	02d7f5bb          	remuw	a1,a5,a3
    800067e0:	02059593          	slli	a1,a1,0x20
    800067e4:	0205d593          	srli	a1,a1,0x20
    800067e8:	00bd85b3          	add	a1,s11,a1
    800067ec:	0005c583          	lbu	a1,0(a1)
    800067f0:	02d7d7bb          	divuw	a5,a5,a3
    800067f4:	f8b402a3          	sb	a1,-123(s0)
    800067f8:	46ea7863          	bgeu	s4,a4,80006c68 <__printf+0x650>
    800067fc:	02d7f5bb          	remuw	a1,a5,a3
    80006800:	02059593          	slli	a1,a1,0x20
    80006804:	0205d593          	srli	a1,a1,0x20
    80006808:	00bd85b3          	add	a1,s11,a1
    8000680c:	0005c583          	lbu	a1,0(a1)
    80006810:	02d7d7bb          	divuw	a5,a5,a3
    80006814:	f8b40323          	sb	a1,-122(s0)
    80006818:	3eeaf863          	bgeu	s5,a4,80006c08 <__printf+0x5f0>
    8000681c:	02d7f5bb          	remuw	a1,a5,a3
    80006820:	02059593          	slli	a1,a1,0x20
    80006824:	0205d593          	srli	a1,a1,0x20
    80006828:	00bd85b3          	add	a1,s11,a1
    8000682c:	0005c583          	lbu	a1,0(a1)
    80006830:	02d7d7bb          	divuw	a5,a5,a3
    80006834:	f8b403a3          	sb	a1,-121(s0)
    80006838:	42eb7e63          	bgeu	s6,a4,80006c74 <__printf+0x65c>
    8000683c:	02d7f5bb          	remuw	a1,a5,a3
    80006840:	02059593          	slli	a1,a1,0x20
    80006844:	0205d593          	srli	a1,a1,0x20
    80006848:	00bd85b3          	add	a1,s11,a1
    8000684c:	0005c583          	lbu	a1,0(a1)
    80006850:	02d7d7bb          	divuw	a5,a5,a3
    80006854:	f8b40423          	sb	a1,-120(s0)
    80006858:	42ebfc63          	bgeu	s7,a4,80006c90 <__printf+0x678>
    8000685c:	02079793          	slli	a5,a5,0x20
    80006860:	0207d793          	srli	a5,a5,0x20
    80006864:	00fd8db3          	add	s11,s11,a5
    80006868:	000dc703          	lbu	a4,0(s11)
    8000686c:	00a00793          	li	a5,10
    80006870:	00900c93          	li	s9,9
    80006874:	f8e404a3          	sb	a4,-119(s0)
    80006878:	00065c63          	bgez	a2,80006890 <__printf+0x278>
    8000687c:	f9040713          	addi	a4,s0,-112
    80006880:	00f70733          	add	a4,a4,a5
    80006884:	02d00693          	li	a3,45
    80006888:	fed70823          	sb	a3,-16(a4)
    8000688c:	00078c93          	mv	s9,a5
    80006890:	f8040793          	addi	a5,s0,-128
    80006894:	01978cb3          	add	s9,a5,s9
    80006898:	f7f40d13          	addi	s10,s0,-129
    8000689c:	000cc503          	lbu	a0,0(s9)
    800068a0:	fffc8c93          	addi	s9,s9,-1
    800068a4:	00000097          	auipc	ra,0x0
    800068a8:	b90080e7          	jalr	-1136(ra) # 80006434 <consputc>
    800068ac:	ffac98e3          	bne	s9,s10,8000689c <__printf+0x284>
    800068b0:	00094503          	lbu	a0,0(s2)
    800068b4:	e00514e3          	bnez	a0,800066bc <__printf+0xa4>
    800068b8:	1a0c1663          	bnez	s8,80006a64 <__printf+0x44c>
    800068bc:	08813083          	ld	ra,136(sp)
    800068c0:	08013403          	ld	s0,128(sp)
    800068c4:	07813483          	ld	s1,120(sp)
    800068c8:	07013903          	ld	s2,112(sp)
    800068cc:	06813983          	ld	s3,104(sp)
    800068d0:	06013a03          	ld	s4,96(sp)
    800068d4:	05813a83          	ld	s5,88(sp)
    800068d8:	05013b03          	ld	s6,80(sp)
    800068dc:	04813b83          	ld	s7,72(sp)
    800068e0:	04013c03          	ld	s8,64(sp)
    800068e4:	03813c83          	ld	s9,56(sp)
    800068e8:	03013d03          	ld	s10,48(sp)
    800068ec:	02813d83          	ld	s11,40(sp)
    800068f0:	0d010113          	addi	sp,sp,208
    800068f4:	00008067          	ret
    800068f8:	07300713          	li	a4,115
    800068fc:	1ce78a63          	beq	a5,a4,80006ad0 <__printf+0x4b8>
    80006900:	07800713          	li	a4,120
    80006904:	1ee79e63          	bne	a5,a4,80006b00 <__printf+0x4e8>
    80006908:	f7843783          	ld	a5,-136(s0)
    8000690c:	0007a703          	lw	a4,0(a5)
    80006910:	00878793          	addi	a5,a5,8
    80006914:	f6f43c23          	sd	a5,-136(s0)
    80006918:	28074263          	bltz	a4,80006b9c <__printf+0x584>
    8000691c:	00002d97          	auipc	s11,0x2
    80006920:	df4d8d93          	addi	s11,s11,-524 # 80008710 <digits>
    80006924:	00f77793          	andi	a5,a4,15
    80006928:	00fd87b3          	add	a5,s11,a5
    8000692c:	0007c683          	lbu	a3,0(a5)
    80006930:	00f00613          	li	a2,15
    80006934:	0007079b          	sext.w	a5,a4
    80006938:	f8d40023          	sb	a3,-128(s0)
    8000693c:	0047559b          	srliw	a1,a4,0x4
    80006940:	0047569b          	srliw	a3,a4,0x4
    80006944:	00000c93          	li	s9,0
    80006948:	0ee65063          	bge	a2,a4,80006a28 <__printf+0x410>
    8000694c:	00f6f693          	andi	a3,a3,15
    80006950:	00dd86b3          	add	a3,s11,a3
    80006954:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006958:	0087d79b          	srliw	a5,a5,0x8
    8000695c:	00100c93          	li	s9,1
    80006960:	f8d400a3          	sb	a3,-127(s0)
    80006964:	0cb67263          	bgeu	a2,a1,80006a28 <__printf+0x410>
    80006968:	00f7f693          	andi	a3,a5,15
    8000696c:	00dd86b3          	add	a3,s11,a3
    80006970:	0006c583          	lbu	a1,0(a3)
    80006974:	00f00613          	li	a2,15
    80006978:	0047d69b          	srliw	a3,a5,0x4
    8000697c:	f8b40123          	sb	a1,-126(s0)
    80006980:	0047d593          	srli	a1,a5,0x4
    80006984:	28f67e63          	bgeu	a2,a5,80006c20 <__printf+0x608>
    80006988:	00f6f693          	andi	a3,a3,15
    8000698c:	00dd86b3          	add	a3,s11,a3
    80006990:	0006c503          	lbu	a0,0(a3)
    80006994:	0087d813          	srli	a6,a5,0x8
    80006998:	0087d69b          	srliw	a3,a5,0x8
    8000699c:	f8a401a3          	sb	a0,-125(s0)
    800069a0:	28b67663          	bgeu	a2,a1,80006c2c <__printf+0x614>
    800069a4:	00f6f693          	andi	a3,a3,15
    800069a8:	00dd86b3          	add	a3,s11,a3
    800069ac:	0006c583          	lbu	a1,0(a3)
    800069b0:	00c7d513          	srli	a0,a5,0xc
    800069b4:	00c7d69b          	srliw	a3,a5,0xc
    800069b8:	f8b40223          	sb	a1,-124(s0)
    800069bc:	29067a63          	bgeu	a2,a6,80006c50 <__printf+0x638>
    800069c0:	00f6f693          	andi	a3,a3,15
    800069c4:	00dd86b3          	add	a3,s11,a3
    800069c8:	0006c583          	lbu	a1,0(a3)
    800069cc:	0107d813          	srli	a6,a5,0x10
    800069d0:	0107d69b          	srliw	a3,a5,0x10
    800069d4:	f8b402a3          	sb	a1,-123(s0)
    800069d8:	28a67263          	bgeu	a2,a0,80006c5c <__printf+0x644>
    800069dc:	00f6f693          	andi	a3,a3,15
    800069e0:	00dd86b3          	add	a3,s11,a3
    800069e4:	0006c683          	lbu	a3,0(a3)
    800069e8:	0147d79b          	srliw	a5,a5,0x14
    800069ec:	f8d40323          	sb	a3,-122(s0)
    800069f0:	21067663          	bgeu	a2,a6,80006bfc <__printf+0x5e4>
    800069f4:	02079793          	slli	a5,a5,0x20
    800069f8:	0207d793          	srli	a5,a5,0x20
    800069fc:	00fd8db3          	add	s11,s11,a5
    80006a00:	000dc683          	lbu	a3,0(s11)
    80006a04:	00800793          	li	a5,8
    80006a08:	00700c93          	li	s9,7
    80006a0c:	f8d403a3          	sb	a3,-121(s0)
    80006a10:	00075c63          	bgez	a4,80006a28 <__printf+0x410>
    80006a14:	f9040713          	addi	a4,s0,-112
    80006a18:	00f70733          	add	a4,a4,a5
    80006a1c:	02d00693          	li	a3,45
    80006a20:	fed70823          	sb	a3,-16(a4)
    80006a24:	00078c93          	mv	s9,a5
    80006a28:	f8040793          	addi	a5,s0,-128
    80006a2c:	01978cb3          	add	s9,a5,s9
    80006a30:	f7f40d13          	addi	s10,s0,-129
    80006a34:	000cc503          	lbu	a0,0(s9)
    80006a38:	fffc8c93          	addi	s9,s9,-1
    80006a3c:	00000097          	auipc	ra,0x0
    80006a40:	9f8080e7          	jalr	-1544(ra) # 80006434 <consputc>
    80006a44:	ff9d18e3          	bne	s10,s9,80006a34 <__printf+0x41c>
    80006a48:	0100006f          	j	80006a58 <__printf+0x440>
    80006a4c:	00000097          	auipc	ra,0x0
    80006a50:	9e8080e7          	jalr	-1560(ra) # 80006434 <consputc>
    80006a54:	000c8493          	mv	s1,s9
    80006a58:	00094503          	lbu	a0,0(s2)
    80006a5c:	c60510e3          	bnez	a0,800066bc <__printf+0xa4>
    80006a60:	e40c0ee3          	beqz	s8,800068bc <__printf+0x2a4>
    80006a64:	00003517          	auipc	a0,0x3
    80006a68:	2ac50513          	addi	a0,a0,684 # 80009d10 <pr>
    80006a6c:	00001097          	auipc	ra,0x1
    80006a70:	94c080e7          	jalr	-1716(ra) # 800073b8 <release>
    80006a74:	e49ff06f          	j	800068bc <__printf+0x2a4>
    80006a78:	f7843783          	ld	a5,-136(s0)
    80006a7c:	03000513          	li	a0,48
    80006a80:	01000d13          	li	s10,16
    80006a84:	00878713          	addi	a4,a5,8
    80006a88:	0007bc83          	ld	s9,0(a5)
    80006a8c:	f6e43c23          	sd	a4,-136(s0)
    80006a90:	00000097          	auipc	ra,0x0
    80006a94:	9a4080e7          	jalr	-1628(ra) # 80006434 <consputc>
    80006a98:	07800513          	li	a0,120
    80006a9c:	00000097          	auipc	ra,0x0
    80006aa0:	998080e7          	jalr	-1640(ra) # 80006434 <consputc>
    80006aa4:	00002d97          	auipc	s11,0x2
    80006aa8:	c6cd8d93          	addi	s11,s11,-916 # 80008710 <digits>
    80006aac:	03ccd793          	srli	a5,s9,0x3c
    80006ab0:	00fd87b3          	add	a5,s11,a5
    80006ab4:	0007c503          	lbu	a0,0(a5)
    80006ab8:	fffd0d1b          	addiw	s10,s10,-1
    80006abc:	004c9c93          	slli	s9,s9,0x4
    80006ac0:	00000097          	auipc	ra,0x0
    80006ac4:	974080e7          	jalr	-1676(ra) # 80006434 <consputc>
    80006ac8:	fe0d12e3          	bnez	s10,80006aac <__printf+0x494>
    80006acc:	f8dff06f          	j	80006a58 <__printf+0x440>
    80006ad0:	f7843783          	ld	a5,-136(s0)
    80006ad4:	0007bc83          	ld	s9,0(a5)
    80006ad8:	00878793          	addi	a5,a5,8
    80006adc:	f6f43c23          	sd	a5,-136(s0)
    80006ae0:	000c9a63          	bnez	s9,80006af4 <__printf+0x4dc>
    80006ae4:	1080006f          	j	80006bec <__printf+0x5d4>
    80006ae8:	001c8c93          	addi	s9,s9,1
    80006aec:	00000097          	auipc	ra,0x0
    80006af0:	948080e7          	jalr	-1720(ra) # 80006434 <consputc>
    80006af4:	000cc503          	lbu	a0,0(s9)
    80006af8:	fe0518e3          	bnez	a0,80006ae8 <__printf+0x4d0>
    80006afc:	f5dff06f          	j	80006a58 <__printf+0x440>
    80006b00:	02500513          	li	a0,37
    80006b04:	00000097          	auipc	ra,0x0
    80006b08:	930080e7          	jalr	-1744(ra) # 80006434 <consputc>
    80006b0c:	000c8513          	mv	a0,s9
    80006b10:	00000097          	auipc	ra,0x0
    80006b14:	924080e7          	jalr	-1756(ra) # 80006434 <consputc>
    80006b18:	f41ff06f          	j	80006a58 <__printf+0x440>
    80006b1c:	02500513          	li	a0,37
    80006b20:	00000097          	auipc	ra,0x0
    80006b24:	914080e7          	jalr	-1772(ra) # 80006434 <consputc>
    80006b28:	f31ff06f          	j	80006a58 <__printf+0x440>
    80006b2c:	00030513          	mv	a0,t1
    80006b30:	00000097          	auipc	ra,0x0
    80006b34:	7bc080e7          	jalr	1980(ra) # 800072ec <acquire>
    80006b38:	b4dff06f          	j	80006684 <__printf+0x6c>
    80006b3c:	40c0053b          	negw	a0,a2
    80006b40:	00a00713          	li	a4,10
    80006b44:	02e576bb          	remuw	a3,a0,a4
    80006b48:	00002d97          	auipc	s11,0x2
    80006b4c:	bc8d8d93          	addi	s11,s11,-1080 # 80008710 <digits>
    80006b50:	ff700593          	li	a1,-9
    80006b54:	02069693          	slli	a3,a3,0x20
    80006b58:	0206d693          	srli	a3,a3,0x20
    80006b5c:	00dd86b3          	add	a3,s11,a3
    80006b60:	0006c683          	lbu	a3,0(a3)
    80006b64:	02e557bb          	divuw	a5,a0,a4
    80006b68:	f8d40023          	sb	a3,-128(s0)
    80006b6c:	10b65e63          	bge	a2,a1,80006c88 <__printf+0x670>
    80006b70:	06300593          	li	a1,99
    80006b74:	02e7f6bb          	remuw	a3,a5,a4
    80006b78:	02069693          	slli	a3,a3,0x20
    80006b7c:	0206d693          	srli	a3,a3,0x20
    80006b80:	00dd86b3          	add	a3,s11,a3
    80006b84:	0006c683          	lbu	a3,0(a3)
    80006b88:	02e7d73b          	divuw	a4,a5,a4
    80006b8c:	00200793          	li	a5,2
    80006b90:	f8d400a3          	sb	a3,-127(s0)
    80006b94:	bca5ece3          	bltu	a1,a0,8000676c <__printf+0x154>
    80006b98:	ce5ff06f          	j	8000687c <__printf+0x264>
    80006b9c:	40e007bb          	negw	a5,a4
    80006ba0:	00002d97          	auipc	s11,0x2
    80006ba4:	b70d8d93          	addi	s11,s11,-1168 # 80008710 <digits>
    80006ba8:	00f7f693          	andi	a3,a5,15
    80006bac:	00dd86b3          	add	a3,s11,a3
    80006bb0:	0006c583          	lbu	a1,0(a3)
    80006bb4:	ff100613          	li	a2,-15
    80006bb8:	0047d69b          	srliw	a3,a5,0x4
    80006bbc:	f8b40023          	sb	a1,-128(s0)
    80006bc0:	0047d59b          	srliw	a1,a5,0x4
    80006bc4:	0ac75e63          	bge	a4,a2,80006c80 <__printf+0x668>
    80006bc8:	00f6f693          	andi	a3,a3,15
    80006bcc:	00dd86b3          	add	a3,s11,a3
    80006bd0:	0006c603          	lbu	a2,0(a3)
    80006bd4:	00f00693          	li	a3,15
    80006bd8:	0087d79b          	srliw	a5,a5,0x8
    80006bdc:	f8c400a3          	sb	a2,-127(s0)
    80006be0:	d8b6e4e3          	bltu	a3,a1,80006968 <__printf+0x350>
    80006be4:	00200793          	li	a5,2
    80006be8:	e2dff06f          	j	80006a14 <__printf+0x3fc>
    80006bec:	00002c97          	auipc	s9,0x2
    80006bf0:	b04c8c93          	addi	s9,s9,-1276 # 800086f0 <CONSOLE_STATUS+0x6e0>
    80006bf4:	02800513          	li	a0,40
    80006bf8:	ef1ff06f          	j	80006ae8 <__printf+0x4d0>
    80006bfc:	00700793          	li	a5,7
    80006c00:	00600c93          	li	s9,6
    80006c04:	e0dff06f          	j	80006a10 <__printf+0x3f8>
    80006c08:	00700793          	li	a5,7
    80006c0c:	00600c93          	li	s9,6
    80006c10:	c69ff06f          	j	80006878 <__printf+0x260>
    80006c14:	00300793          	li	a5,3
    80006c18:	00200c93          	li	s9,2
    80006c1c:	c5dff06f          	j	80006878 <__printf+0x260>
    80006c20:	00300793          	li	a5,3
    80006c24:	00200c93          	li	s9,2
    80006c28:	de9ff06f          	j	80006a10 <__printf+0x3f8>
    80006c2c:	00400793          	li	a5,4
    80006c30:	00300c93          	li	s9,3
    80006c34:	dddff06f          	j	80006a10 <__printf+0x3f8>
    80006c38:	00400793          	li	a5,4
    80006c3c:	00300c93          	li	s9,3
    80006c40:	c39ff06f          	j	80006878 <__printf+0x260>
    80006c44:	00500793          	li	a5,5
    80006c48:	00400c93          	li	s9,4
    80006c4c:	c2dff06f          	j	80006878 <__printf+0x260>
    80006c50:	00500793          	li	a5,5
    80006c54:	00400c93          	li	s9,4
    80006c58:	db9ff06f          	j	80006a10 <__printf+0x3f8>
    80006c5c:	00600793          	li	a5,6
    80006c60:	00500c93          	li	s9,5
    80006c64:	dadff06f          	j	80006a10 <__printf+0x3f8>
    80006c68:	00600793          	li	a5,6
    80006c6c:	00500c93          	li	s9,5
    80006c70:	c09ff06f          	j	80006878 <__printf+0x260>
    80006c74:	00800793          	li	a5,8
    80006c78:	00700c93          	li	s9,7
    80006c7c:	bfdff06f          	j	80006878 <__printf+0x260>
    80006c80:	00100793          	li	a5,1
    80006c84:	d91ff06f          	j	80006a14 <__printf+0x3fc>
    80006c88:	00100793          	li	a5,1
    80006c8c:	bf1ff06f          	j	8000687c <__printf+0x264>
    80006c90:	00900793          	li	a5,9
    80006c94:	00800c93          	li	s9,8
    80006c98:	be1ff06f          	j	80006878 <__printf+0x260>
    80006c9c:	00002517          	auipc	a0,0x2
    80006ca0:	a5c50513          	addi	a0,a0,-1444 # 800086f8 <CONSOLE_STATUS+0x6e8>
    80006ca4:	00000097          	auipc	ra,0x0
    80006ca8:	918080e7          	jalr	-1768(ra) # 800065bc <panic>

0000000080006cac <printfinit>:
    80006cac:	fe010113          	addi	sp,sp,-32
    80006cb0:	00813823          	sd	s0,16(sp)
    80006cb4:	00913423          	sd	s1,8(sp)
    80006cb8:	00113c23          	sd	ra,24(sp)
    80006cbc:	02010413          	addi	s0,sp,32
    80006cc0:	00003497          	auipc	s1,0x3
    80006cc4:	05048493          	addi	s1,s1,80 # 80009d10 <pr>
    80006cc8:	00048513          	mv	a0,s1
    80006ccc:	00002597          	auipc	a1,0x2
    80006cd0:	a3c58593          	addi	a1,a1,-1476 # 80008708 <CONSOLE_STATUS+0x6f8>
    80006cd4:	00000097          	auipc	ra,0x0
    80006cd8:	5f4080e7          	jalr	1524(ra) # 800072c8 <initlock>
    80006cdc:	01813083          	ld	ra,24(sp)
    80006ce0:	01013403          	ld	s0,16(sp)
    80006ce4:	0004ac23          	sw	zero,24(s1)
    80006ce8:	00813483          	ld	s1,8(sp)
    80006cec:	02010113          	addi	sp,sp,32
    80006cf0:	00008067          	ret

0000000080006cf4 <uartinit>:
    80006cf4:	ff010113          	addi	sp,sp,-16
    80006cf8:	00813423          	sd	s0,8(sp)
    80006cfc:	01010413          	addi	s0,sp,16
    80006d00:	100007b7          	lui	a5,0x10000
    80006d04:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80006d08:	f8000713          	li	a4,-128
    80006d0c:	00e781a3          	sb	a4,3(a5)
    80006d10:	00300713          	li	a4,3
    80006d14:	00e78023          	sb	a4,0(a5)
    80006d18:	000780a3          	sb	zero,1(a5)
    80006d1c:	00e781a3          	sb	a4,3(a5)
    80006d20:	00700693          	li	a3,7
    80006d24:	00d78123          	sb	a3,2(a5)
    80006d28:	00e780a3          	sb	a4,1(a5)
    80006d2c:	00813403          	ld	s0,8(sp)
    80006d30:	01010113          	addi	sp,sp,16
    80006d34:	00008067          	ret

0000000080006d38 <uartputc>:
    80006d38:	00002797          	auipc	a5,0x2
    80006d3c:	c907a783          	lw	a5,-880(a5) # 800089c8 <panicked>
    80006d40:	00078463          	beqz	a5,80006d48 <uartputc+0x10>
    80006d44:	0000006f          	j	80006d44 <uartputc+0xc>
    80006d48:	fd010113          	addi	sp,sp,-48
    80006d4c:	02813023          	sd	s0,32(sp)
    80006d50:	00913c23          	sd	s1,24(sp)
    80006d54:	01213823          	sd	s2,16(sp)
    80006d58:	01313423          	sd	s3,8(sp)
    80006d5c:	02113423          	sd	ra,40(sp)
    80006d60:	03010413          	addi	s0,sp,48
    80006d64:	00002917          	auipc	s2,0x2
    80006d68:	c6c90913          	addi	s2,s2,-916 # 800089d0 <uart_tx_r>
    80006d6c:	00093783          	ld	a5,0(s2)
    80006d70:	00002497          	auipc	s1,0x2
    80006d74:	c6848493          	addi	s1,s1,-920 # 800089d8 <uart_tx_w>
    80006d78:	0004b703          	ld	a4,0(s1)
    80006d7c:	02078693          	addi	a3,a5,32
    80006d80:	00050993          	mv	s3,a0
    80006d84:	02e69c63          	bne	a3,a4,80006dbc <uartputc+0x84>
    80006d88:	00001097          	auipc	ra,0x1
    80006d8c:	834080e7          	jalr	-1996(ra) # 800075bc <push_on>
    80006d90:	00093783          	ld	a5,0(s2)
    80006d94:	0004b703          	ld	a4,0(s1)
    80006d98:	02078793          	addi	a5,a5,32
    80006d9c:	00e79463          	bne	a5,a4,80006da4 <uartputc+0x6c>
    80006da0:	0000006f          	j	80006da0 <uartputc+0x68>
    80006da4:	00001097          	auipc	ra,0x1
    80006da8:	88c080e7          	jalr	-1908(ra) # 80007630 <pop_on>
    80006dac:	00093783          	ld	a5,0(s2)
    80006db0:	0004b703          	ld	a4,0(s1)
    80006db4:	02078693          	addi	a3,a5,32
    80006db8:	fce688e3          	beq	a3,a4,80006d88 <uartputc+0x50>
    80006dbc:	01f77693          	andi	a3,a4,31
    80006dc0:	00003597          	auipc	a1,0x3
    80006dc4:	f7058593          	addi	a1,a1,-144 # 80009d30 <uart_tx_buf>
    80006dc8:	00d586b3          	add	a3,a1,a3
    80006dcc:	00170713          	addi	a4,a4,1
    80006dd0:	01368023          	sb	s3,0(a3)
    80006dd4:	00e4b023          	sd	a4,0(s1)
    80006dd8:	10000637          	lui	a2,0x10000
    80006ddc:	02f71063          	bne	a4,a5,80006dfc <uartputc+0xc4>
    80006de0:	0340006f          	j	80006e14 <uartputc+0xdc>
    80006de4:	00074703          	lbu	a4,0(a4)
    80006de8:	00f93023          	sd	a5,0(s2)
    80006dec:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80006df0:	00093783          	ld	a5,0(s2)
    80006df4:	0004b703          	ld	a4,0(s1)
    80006df8:	00f70e63          	beq	a4,a5,80006e14 <uartputc+0xdc>
    80006dfc:	00564683          	lbu	a3,5(a2)
    80006e00:	01f7f713          	andi	a4,a5,31
    80006e04:	00e58733          	add	a4,a1,a4
    80006e08:	0206f693          	andi	a3,a3,32
    80006e0c:	00178793          	addi	a5,a5,1
    80006e10:	fc069ae3          	bnez	a3,80006de4 <uartputc+0xac>
    80006e14:	02813083          	ld	ra,40(sp)
    80006e18:	02013403          	ld	s0,32(sp)
    80006e1c:	01813483          	ld	s1,24(sp)
    80006e20:	01013903          	ld	s2,16(sp)
    80006e24:	00813983          	ld	s3,8(sp)
    80006e28:	03010113          	addi	sp,sp,48
    80006e2c:	00008067          	ret

0000000080006e30 <uartputc_sync>:
    80006e30:	ff010113          	addi	sp,sp,-16
    80006e34:	00813423          	sd	s0,8(sp)
    80006e38:	01010413          	addi	s0,sp,16
    80006e3c:	00002717          	auipc	a4,0x2
    80006e40:	b8c72703          	lw	a4,-1140(a4) # 800089c8 <panicked>
    80006e44:	02071663          	bnez	a4,80006e70 <uartputc_sync+0x40>
    80006e48:	00050793          	mv	a5,a0
    80006e4c:	100006b7          	lui	a3,0x10000
    80006e50:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80006e54:	02077713          	andi	a4,a4,32
    80006e58:	fe070ce3          	beqz	a4,80006e50 <uartputc_sync+0x20>
    80006e5c:	0ff7f793          	andi	a5,a5,255
    80006e60:	00f68023          	sb	a5,0(a3)
    80006e64:	00813403          	ld	s0,8(sp)
    80006e68:	01010113          	addi	sp,sp,16
    80006e6c:	00008067          	ret
    80006e70:	0000006f          	j	80006e70 <uartputc_sync+0x40>

0000000080006e74 <uartstart>:
    80006e74:	ff010113          	addi	sp,sp,-16
    80006e78:	00813423          	sd	s0,8(sp)
    80006e7c:	01010413          	addi	s0,sp,16
    80006e80:	00002617          	auipc	a2,0x2
    80006e84:	b5060613          	addi	a2,a2,-1200 # 800089d0 <uart_tx_r>
    80006e88:	00002517          	auipc	a0,0x2
    80006e8c:	b5050513          	addi	a0,a0,-1200 # 800089d8 <uart_tx_w>
    80006e90:	00063783          	ld	a5,0(a2)
    80006e94:	00053703          	ld	a4,0(a0)
    80006e98:	04f70263          	beq	a4,a5,80006edc <uartstart+0x68>
    80006e9c:	100005b7          	lui	a1,0x10000
    80006ea0:	00003817          	auipc	a6,0x3
    80006ea4:	e9080813          	addi	a6,a6,-368 # 80009d30 <uart_tx_buf>
    80006ea8:	01c0006f          	j	80006ec4 <uartstart+0x50>
    80006eac:	0006c703          	lbu	a4,0(a3)
    80006eb0:	00f63023          	sd	a5,0(a2)
    80006eb4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006eb8:	00063783          	ld	a5,0(a2)
    80006ebc:	00053703          	ld	a4,0(a0)
    80006ec0:	00f70e63          	beq	a4,a5,80006edc <uartstart+0x68>
    80006ec4:	01f7f713          	andi	a4,a5,31
    80006ec8:	00e806b3          	add	a3,a6,a4
    80006ecc:	0055c703          	lbu	a4,5(a1)
    80006ed0:	00178793          	addi	a5,a5,1
    80006ed4:	02077713          	andi	a4,a4,32
    80006ed8:	fc071ae3          	bnez	a4,80006eac <uartstart+0x38>
    80006edc:	00813403          	ld	s0,8(sp)
    80006ee0:	01010113          	addi	sp,sp,16
    80006ee4:	00008067          	ret

0000000080006ee8 <uartgetc>:
    80006ee8:	ff010113          	addi	sp,sp,-16
    80006eec:	00813423          	sd	s0,8(sp)
    80006ef0:	01010413          	addi	s0,sp,16
    80006ef4:	10000737          	lui	a4,0x10000
    80006ef8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80006efc:	0017f793          	andi	a5,a5,1
    80006f00:	00078c63          	beqz	a5,80006f18 <uartgetc+0x30>
    80006f04:	00074503          	lbu	a0,0(a4)
    80006f08:	0ff57513          	andi	a0,a0,255
    80006f0c:	00813403          	ld	s0,8(sp)
    80006f10:	01010113          	addi	sp,sp,16
    80006f14:	00008067          	ret
    80006f18:	fff00513          	li	a0,-1
    80006f1c:	ff1ff06f          	j	80006f0c <uartgetc+0x24>

0000000080006f20 <uartintr>:
    80006f20:	100007b7          	lui	a5,0x10000
    80006f24:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80006f28:	0017f793          	andi	a5,a5,1
    80006f2c:	0a078463          	beqz	a5,80006fd4 <uartintr+0xb4>
    80006f30:	fe010113          	addi	sp,sp,-32
    80006f34:	00813823          	sd	s0,16(sp)
    80006f38:	00913423          	sd	s1,8(sp)
    80006f3c:	00113c23          	sd	ra,24(sp)
    80006f40:	02010413          	addi	s0,sp,32
    80006f44:	100004b7          	lui	s1,0x10000
    80006f48:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80006f4c:	0ff57513          	andi	a0,a0,255
    80006f50:	fffff097          	auipc	ra,0xfffff
    80006f54:	534080e7          	jalr	1332(ra) # 80006484 <consoleintr>
    80006f58:	0054c783          	lbu	a5,5(s1)
    80006f5c:	0017f793          	andi	a5,a5,1
    80006f60:	fe0794e3          	bnez	a5,80006f48 <uartintr+0x28>
    80006f64:	00002617          	auipc	a2,0x2
    80006f68:	a6c60613          	addi	a2,a2,-1428 # 800089d0 <uart_tx_r>
    80006f6c:	00002517          	auipc	a0,0x2
    80006f70:	a6c50513          	addi	a0,a0,-1428 # 800089d8 <uart_tx_w>
    80006f74:	00063783          	ld	a5,0(a2)
    80006f78:	00053703          	ld	a4,0(a0)
    80006f7c:	04f70263          	beq	a4,a5,80006fc0 <uartintr+0xa0>
    80006f80:	100005b7          	lui	a1,0x10000
    80006f84:	00003817          	auipc	a6,0x3
    80006f88:	dac80813          	addi	a6,a6,-596 # 80009d30 <uart_tx_buf>
    80006f8c:	01c0006f          	j	80006fa8 <uartintr+0x88>
    80006f90:	0006c703          	lbu	a4,0(a3)
    80006f94:	00f63023          	sd	a5,0(a2)
    80006f98:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006f9c:	00063783          	ld	a5,0(a2)
    80006fa0:	00053703          	ld	a4,0(a0)
    80006fa4:	00f70e63          	beq	a4,a5,80006fc0 <uartintr+0xa0>
    80006fa8:	01f7f713          	andi	a4,a5,31
    80006fac:	00e806b3          	add	a3,a6,a4
    80006fb0:	0055c703          	lbu	a4,5(a1)
    80006fb4:	00178793          	addi	a5,a5,1
    80006fb8:	02077713          	andi	a4,a4,32
    80006fbc:	fc071ae3          	bnez	a4,80006f90 <uartintr+0x70>
    80006fc0:	01813083          	ld	ra,24(sp)
    80006fc4:	01013403          	ld	s0,16(sp)
    80006fc8:	00813483          	ld	s1,8(sp)
    80006fcc:	02010113          	addi	sp,sp,32
    80006fd0:	00008067          	ret
    80006fd4:	00002617          	auipc	a2,0x2
    80006fd8:	9fc60613          	addi	a2,a2,-1540 # 800089d0 <uart_tx_r>
    80006fdc:	00002517          	auipc	a0,0x2
    80006fe0:	9fc50513          	addi	a0,a0,-1540 # 800089d8 <uart_tx_w>
    80006fe4:	00063783          	ld	a5,0(a2)
    80006fe8:	00053703          	ld	a4,0(a0)
    80006fec:	04f70263          	beq	a4,a5,80007030 <uartintr+0x110>
    80006ff0:	100005b7          	lui	a1,0x10000
    80006ff4:	00003817          	auipc	a6,0x3
    80006ff8:	d3c80813          	addi	a6,a6,-708 # 80009d30 <uart_tx_buf>
    80006ffc:	01c0006f          	j	80007018 <uartintr+0xf8>
    80007000:	0006c703          	lbu	a4,0(a3)
    80007004:	00f63023          	sd	a5,0(a2)
    80007008:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000700c:	00063783          	ld	a5,0(a2)
    80007010:	00053703          	ld	a4,0(a0)
    80007014:	02f70063          	beq	a4,a5,80007034 <uartintr+0x114>
    80007018:	01f7f713          	andi	a4,a5,31
    8000701c:	00e806b3          	add	a3,a6,a4
    80007020:	0055c703          	lbu	a4,5(a1)
    80007024:	00178793          	addi	a5,a5,1
    80007028:	02077713          	andi	a4,a4,32
    8000702c:	fc071ae3          	bnez	a4,80007000 <uartintr+0xe0>
    80007030:	00008067          	ret
    80007034:	00008067          	ret

0000000080007038 <kinit>:
    80007038:	fc010113          	addi	sp,sp,-64
    8000703c:	02913423          	sd	s1,40(sp)
    80007040:	fffff7b7          	lui	a5,0xfffff
    80007044:	00009497          	auipc	s1,0x9
    80007048:	fbb48493          	addi	s1,s1,-69 # 8000ffff <end+0xfff>
    8000704c:	02813823          	sd	s0,48(sp)
    80007050:	01313c23          	sd	s3,24(sp)
    80007054:	00f4f4b3          	and	s1,s1,a5
    80007058:	02113c23          	sd	ra,56(sp)
    8000705c:	03213023          	sd	s2,32(sp)
    80007060:	01413823          	sd	s4,16(sp)
    80007064:	01513423          	sd	s5,8(sp)
    80007068:	04010413          	addi	s0,sp,64
    8000706c:	000017b7          	lui	a5,0x1
    80007070:	01100993          	li	s3,17
    80007074:	00f487b3          	add	a5,s1,a5
    80007078:	01b99993          	slli	s3,s3,0x1b
    8000707c:	06f9e063          	bltu	s3,a5,800070dc <kinit+0xa4>
    80007080:	00008a97          	auipc	s5,0x8
    80007084:	f80a8a93          	addi	s5,s5,-128 # 8000f000 <end>
    80007088:	0754ec63          	bltu	s1,s5,80007100 <kinit+0xc8>
    8000708c:	0734fa63          	bgeu	s1,s3,80007100 <kinit+0xc8>
    80007090:	00088a37          	lui	s4,0x88
    80007094:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007098:	00002917          	auipc	s2,0x2
    8000709c:	94890913          	addi	s2,s2,-1720 # 800089e0 <kmem>
    800070a0:	00ca1a13          	slli	s4,s4,0xc
    800070a4:	0140006f          	j	800070b8 <kinit+0x80>
    800070a8:	000017b7          	lui	a5,0x1
    800070ac:	00f484b3          	add	s1,s1,a5
    800070b0:	0554e863          	bltu	s1,s5,80007100 <kinit+0xc8>
    800070b4:	0534f663          	bgeu	s1,s3,80007100 <kinit+0xc8>
    800070b8:	00001637          	lui	a2,0x1
    800070bc:	00100593          	li	a1,1
    800070c0:	00048513          	mv	a0,s1
    800070c4:	00000097          	auipc	ra,0x0
    800070c8:	5e4080e7          	jalr	1508(ra) # 800076a8 <__memset>
    800070cc:	00093783          	ld	a5,0(s2)
    800070d0:	00f4b023          	sd	a5,0(s1)
    800070d4:	00993023          	sd	s1,0(s2)
    800070d8:	fd4498e3          	bne	s1,s4,800070a8 <kinit+0x70>
    800070dc:	03813083          	ld	ra,56(sp)
    800070e0:	03013403          	ld	s0,48(sp)
    800070e4:	02813483          	ld	s1,40(sp)
    800070e8:	02013903          	ld	s2,32(sp)
    800070ec:	01813983          	ld	s3,24(sp)
    800070f0:	01013a03          	ld	s4,16(sp)
    800070f4:	00813a83          	ld	s5,8(sp)
    800070f8:	04010113          	addi	sp,sp,64
    800070fc:	00008067          	ret
    80007100:	00001517          	auipc	a0,0x1
    80007104:	62850513          	addi	a0,a0,1576 # 80008728 <digits+0x18>
    80007108:	fffff097          	auipc	ra,0xfffff
    8000710c:	4b4080e7          	jalr	1204(ra) # 800065bc <panic>

0000000080007110 <freerange>:
    80007110:	fc010113          	addi	sp,sp,-64
    80007114:	000017b7          	lui	a5,0x1
    80007118:	02913423          	sd	s1,40(sp)
    8000711c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007120:	009504b3          	add	s1,a0,s1
    80007124:	fffff537          	lui	a0,0xfffff
    80007128:	02813823          	sd	s0,48(sp)
    8000712c:	02113c23          	sd	ra,56(sp)
    80007130:	03213023          	sd	s2,32(sp)
    80007134:	01313c23          	sd	s3,24(sp)
    80007138:	01413823          	sd	s4,16(sp)
    8000713c:	01513423          	sd	s5,8(sp)
    80007140:	01613023          	sd	s6,0(sp)
    80007144:	04010413          	addi	s0,sp,64
    80007148:	00a4f4b3          	and	s1,s1,a0
    8000714c:	00f487b3          	add	a5,s1,a5
    80007150:	06f5e463          	bltu	a1,a5,800071b8 <freerange+0xa8>
    80007154:	00008a97          	auipc	s5,0x8
    80007158:	eaca8a93          	addi	s5,s5,-340 # 8000f000 <end>
    8000715c:	0954e263          	bltu	s1,s5,800071e0 <freerange+0xd0>
    80007160:	01100993          	li	s3,17
    80007164:	01b99993          	slli	s3,s3,0x1b
    80007168:	0734fc63          	bgeu	s1,s3,800071e0 <freerange+0xd0>
    8000716c:	00058a13          	mv	s4,a1
    80007170:	00002917          	auipc	s2,0x2
    80007174:	87090913          	addi	s2,s2,-1936 # 800089e0 <kmem>
    80007178:	00002b37          	lui	s6,0x2
    8000717c:	0140006f          	j	80007190 <freerange+0x80>
    80007180:	000017b7          	lui	a5,0x1
    80007184:	00f484b3          	add	s1,s1,a5
    80007188:	0554ec63          	bltu	s1,s5,800071e0 <freerange+0xd0>
    8000718c:	0534fa63          	bgeu	s1,s3,800071e0 <freerange+0xd0>
    80007190:	00001637          	lui	a2,0x1
    80007194:	00100593          	li	a1,1
    80007198:	00048513          	mv	a0,s1
    8000719c:	00000097          	auipc	ra,0x0
    800071a0:	50c080e7          	jalr	1292(ra) # 800076a8 <__memset>
    800071a4:	00093703          	ld	a4,0(s2)
    800071a8:	016487b3          	add	a5,s1,s6
    800071ac:	00e4b023          	sd	a4,0(s1)
    800071b0:	00993023          	sd	s1,0(s2)
    800071b4:	fcfa76e3          	bgeu	s4,a5,80007180 <freerange+0x70>
    800071b8:	03813083          	ld	ra,56(sp)
    800071bc:	03013403          	ld	s0,48(sp)
    800071c0:	02813483          	ld	s1,40(sp)
    800071c4:	02013903          	ld	s2,32(sp)
    800071c8:	01813983          	ld	s3,24(sp)
    800071cc:	01013a03          	ld	s4,16(sp)
    800071d0:	00813a83          	ld	s5,8(sp)
    800071d4:	00013b03          	ld	s6,0(sp)
    800071d8:	04010113          	addi	sp,sp,64
    800071dc:	00008067          	ret
    800071e0:	00001517          	auipc	a0,0x1
    800071e4:	54850513          	addi	a0,a0,1352 # 80008728 <digits+0x18>
    800071e8:	fffff097          	auipc	ra,0xfffff
    800071ec:	3d4080e7          	jalr	980(ra) # 800065bc <panic>

00000000800071f0 <kfree>:
    800071f0:	fe010113          	addi	sp,sp,-32
    800071f4:	00813823          	sd	s0,16(sp)
    800071f8:	00113c23          	sd	ra,24(sp)
    800071fc:	00913423          	sd	s1,8(sp)
    80007200:	02010413          	addi	s0,sp,32
    80007204:	03451793          	slli	a5,a0,0x34
    80007208:	04079c63          	bnez	a5,80007260 <kfree+0x70>
    8000720c:	00008797          	auipc	a5,0x8
    80007210:	df478793          	addi	a5,a5,-524 # 8000f000 <end>
    80007214:	00050493          	mv	s1,a0
    80007218:	04f56463          	bltu	a0,a5,80007260 <kfree+0x70>
    8000721c:	01100793          	li	a5,17
    80007220:	01b79793          	slli	a5,a5,0x1b
    80007224:	02f57e63          	bgeu	a0,a5,80007260 <kfree+0x70>
    80007228:	00001637          	lui	a2,0x1
    8000722c:	00100593          	li	a1,1
    80007230:	00000097          	auipc	ra,0x0
    80007234:	478080e7          	jalr	1144(ra) # 800076a8 <__memset>
    80007238:	00001797          	auipc	a5,0x1
    8000723c:	7a878793          	addi	a5,a5,1960 # 800089e0 <kmem>
    80007240:	0007b703          	ld	a4,0(a5)
    80007244:	01813083          	ld	ra,24(sp)
    80007248:	01013403          	ld	s0,16(sp)
    8000724c:	00e4b023          	sd	a4,0(s1)
    80007250:	0097b023          	sd	s1,0(a5)
    80007254:	00813483          	ld	s1,8(sp)
    80007258:	02010113          	addi	sp,sp,32
    8000725c:	00008067          	ret
    80007260:	00001517          	auipc	a0,0x1
    80007264:	4c850513          	addi	a0,a0,1224 # 80008728 <digits+0x18>
    80007268:	fffff097          	auipc	ra,0xfffff
    8000726c:	354080e7          	jalr	852(ra) # 800065bc <panic>

0000000080007270 <kalloc>:
    80007270:	fe010113          	addi	sp,sp,-32
    80007274:	00813823          	sd	s0,16(sp)
    80007278:	00913423          	sd	s1,8(sp)
    8000727c:	00113c23          	sd	ra,24(sp)
    80007280:	02010413          	addi	s0,sp,32
    80007284:	00001797          	auipc	a5,0x1
    80007288:	75c78793          	addi	a5,a5,1884 # 800089e0 <kmem>
    8000728c:	0007b483          	ld	s1,0(a5)
    80007290:	02048063          	beqz	s1,800072b0 <kalloc+0x40>
    80007294:	0004b703          	ld	a4,0(s1)
    80007298:	00001637          	lui	a2,0x1
    8000729c:	00500593          	li	a1,5
    800072a0:	00048513          	mv	a0,s1
    800072a4:	00e7b023          	sd	a4,0(a5)
    800072a8:	00000097          	auipc	ra,0x0
    800072ac:	400080e7          	jalr	1024(ra) # 800076a8 <__memset>
    800072b0:	01813083          	ld	ra,24(sp)
    800072b4:	01013403          	ld	s0,16(sp)
    800072b8:	00048513          	mv	a0,s1
    800072bc:	00813483          	ld	s1,8(sp)
    800072c0:	02010113          	addi	sp,sp,32
    800072c4:	00008067          	ret

00000000800072c8 <initlock>:
    800072c8:	ff010113          	addi	sp,sp,-16
    800072cc:	00813423          	sd	s0,8(sp)
    800072d0:	01010413          	addi	s0,sp,16
    800072d4:	00813403          	ld	s0,8(sp)
    800072d8:	00b53423          	sd	a1,8(a0)
    800072dc:	00052023          	sw	zero,0(a0)
    800072e0:	00053823          	sd	zero,16(a0)
    800072e4:	01010113          	addi	sp,sp,16
    800072e8:	00008067          	ret

00000000800072ec <acquire>:
    800072ec:	fe010113          	addi	sp,sp,-32
    800072f0:	00813823          	sd	s0,16(sp)
    800072f4:	00913423          	sd	s1,8(sp)
    800072f8:	00113c23          	sd	ra,24(sp)
    800072fc:	01213023          	sd	s2,0(sp)
    80007300:	02010413          	addi	s0,sp,32
    80007304:	00050493          	mv	s1,a0
    80007308:	10002973          	csrr	s2,sstatus
    8000730c:	100027f3          	csrr	a5,sstatus
    80007310:	ffd7f793          	andi	a5,a5,-3
    80007314:	10079073          	csrw	sstatus,a5
    80007318:	fffff097          	auipc	ra,0xfffff
    8000731c:	8e0080e7          	jalr	-1824(ra) # 80005bf8 <mycpu>
    80007320:	07852783          	lw	a5,120(a0)
    80007324:	06078e63          	beqz	a5,800073a0 <acquire+0xb4>
    80007328:	fffff097          	auipc	ra,0xfffff
    8000732c:	8d0080e7          	jalr	-1840(ra) # 80005bf8 <mycpu>
    80007330:	07852783          	lw	a5,120(a0)
    80007334:	0004a703          	lw	a4,0(s1)
    80007338:	0017879b          	addiw	a5,a5,1
    8000733c:	06f52c23          	sw	a5,120(a0)
    80007340:	04071063          	bnez	a4,80007380 <acquire+0x94>
    80007344:	00100713          	li	a4,1
    80007348:	00070793          	mv	a5,a4
    8000734c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007350:	0007879b          	sext.w	a5,a5
    80007354:	fe079ae3          	bnez	a5,80007348 <acquire+0x5c>
    80007358:	0ff0000f          	fence
    8000735c:	fffff097          	auipc	ra,0xfffff
    80007360:	89c080e7          	jalr	-1892(ra) # 80005bf8 <mycpu>
    80007364:	01813083          	ld	ra,24(sp)
    80007368:	01013403          	ld	s0,16(sp)
    8000736c:	00a4b823          	sd	a0,16(s1)
    80007370:	00013903          	ld	s2,0(sp)
    80007374:	00813483          	ld	s1,8(sp)
    80007378:	02010113          	addi	sp,sp,32
    8000737c:	00008067          	ret
    80007380:	0104b903          	ld	s2,16(s1)
    80007384:	fffff097          	auipc	ra,0xfffff
    80007388:	874080e7          	jalr	-1932(ra) # 80005bf8 <mycpu>
    8000738c:	faa91ce3          	bne	s2,a0,80007344 <acquire+0x58>
    80007390:	00001517          	auipc	a0,0x1
    80007394:	3a050513          	addi	a0,a0,928 # 80008730 <digits+0x20>
    80007398:	fffff097          	auipc	ra,0xfffff
    8000739c:	224080e7          	jalr	548(ra) # 800065bc <panic>
    800073a0:	00195913          	srli	s2,s2,0x1
    800073a4:	fffff097          	auipc	ra,0xfffff
    800073a8:	854080e7          	jalr	-1964(ra) # 80005bf8 <mycpu>
    800073ac:	00197913          	andi	s2,s2,1
    800073b0:	07252e23          	sw	s2,124(a0)
    800073b4:	f75ff06f          	j	80007328 <acquire+0x3c>

00000000800073b8 <release>:
    800073b8:	fe010113          	addi	sp,sp,-32
    800073bc:	00813823          	sd	s0,16(sp)
    800073c0:	00113c23          	sd	ra,24(sp)
    800073c4:	00913423          	sd	s1,8(sp)
    800073c8:	01213023          	sd	s2,0(sp)
    800073cc:	02010413          	addi	s0,sp,32
    800073d0:	00052783          	lw	a5,0(a0)
    800073d4:	00079a63          	bnez	a5,800073e8 <release+0x30>
    800073d8:	00001517          	auipc	a0,0x1
    800073dc:	36050513          	addi	a0,a0,864 # 80008738 <digits+0x28>
    800073e0:	fffff097          	auipc	ra,0xfffff
    800073e4:	1dc080e7          	jalr	476(ra) # 800065bc <panic>
    800073e8:	01053903          	ld	s2,16(a0)
    800073ec:	00050493          	mv	s1,a0
    800073f0:	fffff097          	auipc	ra,0xfffff
    800073f4:	808080e7          	jalr	-2040(ra) # 80005bf8 <mycpu>
    800073f8:	fea910e3          	bne	s2,a0,800073d8 <release+0x20>
    800073fc:	0004b823          	sd	zero,16(s1)
    80007400:	0ff0000f          	fence
    80007404:	0f50000f          	fence	iorw,ow
    80007408:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000740c:	ffffe097          	auipc	ra,0xffffe
    80007410:	7ec080e7          	jalr	2028(ra) # 80005bf8 <mycpu>
    80007414:	100027f3          	csrr	a5,sstatus
    80007418:	0027f793          	andi	a5,a5,2
    8000741c:	04079a63          	bnez	a5,80007470 <release+0xb8>
    80007420:	07852783          	lw	a5,120(a0)
    80007424:	02f05e63          	blez	a5,80007460 <release+0xa8>
    80007428:	fff7871b          	addiw	a4,a5,-1
    8000742c:	06e52c23          	sw	a4,120(a0)
    80007430:	00071c63          	bnez	a4,80007448 <release+0x90>
    80007434:	07c52783          	lw	a5,124(a0)
    80007438:	00078863          	beqz	a5,80007448 <release+0x90>
    8000743c:	100027f3          	csrr	a5,sstatus
    80007440:	0027e793          	ori	a5,a5,2
    80007444:	10079073          	csrw	sstatus,a5
    80007448:	01813083          	ld	ra,24(sp)
    8000744c:	01013403          	ld	s0,16(sp)
    80007450:	00813483          	ld	s1,8(sp)
    80007454:	00013903          	ld	s2,0(sp)
    80007458:	02010113          	addi	sp,sp,32
    8000745c:	00008067          	ret
    80007460:	00001517          	auipc	a0,0x1
    80007464:	2f850513          	addi	a0,a0,760 # 80008758 <digits+0x48>
    80007468:	fffff097          	auipc	ra,0xfffff
    8000746c:	154080e7          	jalr	340(ra) # 800065bc <panic>
    80007470:	00001517          	auipc	a0,0x1
    80007474:	2d050513          	addi	a0,a0,720 # 80008740 <digits+0x30>
    80007478:	fffff097          	auipc	ra,0xfffff
    8000747c:	144080e7          	jalr	324(ra) # 800065bc <panic>

0000000080007480 <holding>:
    80007480:	00052783          	lw	a5,0(a0)
    80007484:	00079663          	bnez	a5,80007490 <holding+0x10>
    80007488:	00000513          	li	a0,0
    8000748c:	00008067          	ret
    80007490:	fe010113          	addi	sp,sp,-32
    80007494:	00813823          	sd	s0,16(sp)
    80007498:	00913423          	sd	s1,8(sp)
    8000749c:	00113c23          	sd	ra,24(sp)
    800074a0:	02010413          	addi	s0,sp,32
    800074a4:	01053483          	ld	s1,16(a0)
    800074a8:	ffffe097          	auipc	ra,0xffffe
    800074ac:	750080e7          	jalr	1872(ra) # 80005bf8 <mycpu>
    800074b0:	01813083          	ld	ra,24(sp)
    800074b4:	01013403          	ld	s0,16(sp)
    800074b8:	40a48533          	sub	a0,s1,a0
    800074bc:	00153513          	seqz	a0,a0
    800074c0:	00813483          	ld	s1,8(sp)
    800074c4:	02010113          	addi	sp,sp,32
    800074c8:	00008067          	ret

00000000800074cc <push_off>:
    800074cc:	fe010113          	addi	sp,sp,-32
    800074d0:	00813823          	sd	s0,16(sp)
    800074d4:	00113c23          	sd	ra,24(sp)
    800074d8:	00913423          	sd	s1,8(sp)
    800074dc:	02010413          	addi	s0,sp,32
    800074e0:	100024f3          	csrr	s1,sstatus
    800074e4:	100027f3          	csrr	a5,sstatus
    800074e8:	ffd7f793          	andi	a5,a5,-3
    800074ec:	10079073          	csrw	sstatus,a5
    800074f0:	ffffe097          	auipc	ra,0xffffe
    800074f4:	708080e7          	jalr	1800(ra) # 80005bf8 <mycpu>
    800074f8:	07852783          	lw	a5,120(a0)
    800074fc:	02078663          	beqz	a5,80007528 <push_off+0x5c>
    80007500:	ffffe097          	auipc	ra,0xffffe
    80007504:	6f8080e7          	jalr	1784(ra) # 80005bf8 <mycpu>
    80007508:	07852783          	lw	a5,120(a0)
    8000750c:	01813083          	ld	ra,24(sp)
    80007510:	01013403          	ld	s0,16(sp)
    80007514:	0017879b          	addiw	a5,a5,1
    80007518:	06f52c23          	sw	a5,120(a0)
    8000751c:	00813483          	ld	s1,8(sp)
    80007520:	02010113          	addi	sp,sp,32
    80007524:	00008067          	ret
    80007528:	0014d493          	srli	s1,s1,0x1
    8000752c:	ffffe097          	auipc	ra,0xffffe
    80007530:	6cc080e7          	jalr	1740(ra) # 80005bf8 <mycpu>
    80007534:	0014f493          	andi	s1,s1,1
    80007538:	06952e23          	sw	s1,124(a0)
    8000753c:	fc5ff06f          	j	80007500 <push_off+0x34>

0000000080007540 <pop_off>:
    80007540:	ff010113          	addi	sp,sp,-16
    80007544:	00813023          	sd	s0,0(sp)
    80007548:	00113423          	sd	ra,8(sp)
    8000754c:	01010413          	addi	s0,sp,16
    80007550:	ffffe097          	auipc	ra,0xffffe
    80007554:	6a8080e7          	jalr	1704(ra) # 80005bf8 <mycpu>
    80007558:	100027f3          	csrr	a5,sstatus
    8000755c:	0027f793          	andi	a5,a5,2
    80007560:	04079663          	bnez	a5,800075ac <pop_off+0x6c>
    80007564:	07852783          	lw	a5,120(a0)
    80007568:	02f05a63          	blez	a5,8000759c <pop_off+0x5c>
    8000756c:	fff7871b          	addiw	a4,a5,-1
    80007570:	06e52c23          	sw	a4,120(a0)
    80007574:	00071c63          	bnez	a4,8000758c <pop_off+0x4c>
    80007578:	07c52783          	lw	a5,124(a0)
    8000757c:	00078863          	beqz	a5,8000758c <pop_off+0x4c>
    80007580:	100027f3          	csrr	a5,sstatus
    80007584:	0027e793          	ori	a5,a5,2
    80007588:	10079073          	csrw	sstatus,a5
    8000758c:	00813083          	ld	ra,8(sp)
    80007590:	00013403          	ld	s0,0(sp)
    80007594:	01010113          	addi	sp,sp,16
    80007598:	00008067          	ret
    8000759c:	00001517          	auipc	a0,0x1
    800075a0:	1bc50513          	addi	a0,a0,444 # 80008758 <digits+0x48>
    800075a4:	fffff097          	auipc	ra,0xfffff
    800075a8:	018080e7          	jalr	24(ra) # 800065bc <panic>
    800075ac:	00001517          	auipc	a0,0x1
    800075b0:	19450513          	addi	a0,a0,404 # 80008740 <digits+0x30>
    800075b4:	fffff097          	auipc	ra,0xfffff
    800075b8:	008080e7          	jalr	8(ra) # 800065bc <panic>

00000000800075bc <push_on>:
    800075bc:	fe010113          	addi	sp,sp,-32
    800075c0:	00813823          	sd	s0,16(sp)
    800075c4:	00113c23          	sd	ra,24(sp)
    800075c8:	00913423          	sd	s1,8(sp)
    800075cc:	02010413          	addi	s0,sp,32
    800075d0:	100024f3          	csrr	s1,sstatus
    800075d4:	100027f3          	csrr	a5,sstatus
    800075d8:	0027e793          	ori	a5,a5,2
    800075dc:	10079073          	csrw	sstatus,a5
    800075e0:	ffffe097          	auipc	ra,0xffffe
    800075e4:	618080e7          	jalr	1560(ra) # 80005bf8 <mycpu>
    800075e8:	07852783          	lw	a5,120(a0)
    800075ec:	02078663          	beqz	a5,80007618 <push_on+0x5c>
    800075f0:	ffffe097          	auipc	ra,0xffffe
    800075f4:	608080e7          	jalr	1544(ra) # 80005bf8 <mycpu>
    800075f8:	07852783          	lw	a5,120(a0)
    800075fc:	01813083          	ld	ra,24(sp)
    80007600:	01013403          	ld	s0,16(sp)
    80007604:	0017879b          	addiw	a5,a5,1
    80007608:	06f52c23          	sw	a5,120(a0)
    8000760c:	00813483          	ld	s1,8(sp)
    80007610:	02010113          	addi	sp,sp,32
    80007614:	00008067          	ret
    80007618:	0014d493          	srli	s1,s1,0x1
    8000761c:	ffffe097          	auipc	ra,0xffffe
    80007620:	5dc080e7          	jalr	1500(ra) # 80005bf8 <mycpu>
    80007624:	0014f493          	andi	s1,s1,1
    80007628:	06952e23          	sw	s1,124(a0)
    8000762c:	fc5ff06f          	j	800075f0 <push_on+0x34>

0000000080007630 <pop_on>:
    80007630:	ff010113          	addi	sp,sp,-16
    80007634:	00813023          	sd	s0,0(sp)
    80007638:	00113423          	sd	ra,8(sp)
    8000763c:	01010413          	addi	s0,sp,16
    80007640:	ffffe097          	auipc	ra,0xffffe
    80007644:	5b8080e7          	jalr	1464(ra) # 80005bf8 <mycpu>
    80007648:	100027f3          	csrr	a5,sstatus
    8000764c:	0027f793          	andi	a5,a5,2
    80007650:	04078463          	beqz	a5,80007698 <pop_on+0x68>
    80007654:	07852783          	lw	a5,120(a0)
    80007658:	02f05863          	blez	a5,80007688 <pop_on+0x58>
    8000765c:	fff7879b          	addiw	a5,a5,-1
    80007660:	06f52c23          	sw	a5,120(a0)
    80007664:	07853783          	ld	a5,120(a0)
    80007668:	00079863          	bnez	a5,80007678 <pop_on+0x48>
    8000766c:	100027f3          	csrr	a5,sstatus
    80007670:	ffd7f793          	andi	a5,a5,-3
    80007674:	10079073          	csrw	sstatus,a5
    80007678:	00813083          	ld	ra,8(sp)
    8000767c:	00013403          	ld	s0,0(sp)
    80007680:	01010113          	addi	sp,sp,16
    80007684:	00008067          	ret
    80007688:	00001517          	auipc	a0,0x1
    8000768c:	0f850513          	addi	a0,a0,248 # 80008780 <digits+0x70>
    80007690:	fffff097          	auipc	ra,0xfffff
    80007694:	f2c080e7          	jalr	-212(ra) # 800065bc <panic>
    80007698:	00001517          	auipc	a0,0x1
    8000769c:	0c850513          	addi	a0,a0,200 # 80008760 <digits+0x50>
    800076a0:	fffff097          	auipc	ra,0xfffff
    800076a4:	f1c080e7          	jalr	-228(ra) # 800065bc <panic>

00000000800076a8 <__memset>:
    800076a8:	ff010113          	addi	sp,sp,-16
    800076ac:	00813423          	sd	s0,8(sp)
    800076b0:	01010413          	addi	s0,sp,16
    800076b4:	1a060e63          	beqz	a2,80007870 <__memset+0x1c8>
    800076b8:	40a007b3          	neg	a5,a0
    800076bc:	0077f793          	andi	a5,a5,7
    800076c0:	00778693          	addi	a3,a5,7
    800076c4:	00b00813          	li	a6,11
    800076c8:	0ff5f593          	andi	a1,a1,255
    800076cc:	fff6071b          	addiw	a4,a2,-1
    800076d0:	1b06e663          	bltu	a3,a6,8000787c <__memset+0x1d4>
    800076d4:	1cd76463          	bltu	a4,a3,8000789c <__memset+0x1f4>
    800076d8:	1a078e63          	beqz	a5,80007894 <__memset+0x1ec>
    800076dc:	00b50023          	sb	a1,0(a0)
    800076e0:	00100713          	li	a4,1
    800076e4:	1ae78463          	beq	a5,a4,8000788c <__memset+0x1e4>
    800076e8:	00b500a3          	sb	a1,1(a0)
    800076ec:	00200713          	li	a4,2
    800076f0:	1ae78a63          	beq	a5,a4,800078a4 <__memset+0x1fc>
    800076f4:	00b50123          	sb	a1,2(a0)
    800076f8:	00300713          	li	a4,3
    800076fc:	18e78463          	beq	a5,a4,80007884 <__memset+0x1dc>
    80007700:	00b501a3          	sb	a1,3(a0)
    80007704:	00400713          	li	a4,4
    80007708:	1ae78263          	beq	a5,a4,800078ac <__memset+0x204>
    8000770c:	00b50223          	sb	a1,4(a0)
    80007710:	00500713          	li	a4,5
    80007714:	1ae78063          	beq	a5,a4,800078b4 <__memset+0x20c>
    80007718:	00b502a3          	sb	a1,5(a0)
    8000771c:	00700713          	li	a4,7
    80007720:	18e79e63          	bne	a5,a4,800078bc <__memset+0x214>
    80007724:	00b50323          	sb	a1,6(a0)
    80007728:	00700e93          	li	t4,7
    8000772c:	00859713          	slli	a4,a1,0x8
    80007730:	00e5e733          	or	a4,a1,a4
    80007734:	01059e13          	slli	t3,a1,0x10
    80007738:	01c76e33          	or	t3,a4,t3
    8000773c:	01859313          	slli	t1,a1,0x18
    80007740:	006e6333          	or	t1,t3,t1
    80007744:	02059893          	slli	a7,a1,0x20
    80007748:	40f60e3b          	subw	t3,a2,a5
    8000774c:	011368b3          	or	a7,t1,a7
    80007750:	02859813          	slli	a6,a1,0x28
    80007754:	0108e833          	or	a6,a7,a6
    80007758:	03059693          	slli	a3,a1,0x30
    8000775c:	003e589b          	srliw	a7,t3,0x3
    80007760:	00d866b3          	or	a3,a6,a3
    80007764:	03859713          	slli	a4,a1,0x38
    80007768:	00389813          	slli	a6,a7,0x3
    8000776c:	00f507b3          	add	a5,a0,a5
    80007770:	00e6e733          	or	a4,a3,a4
    80007774:	000e089b          	sext.w	a7,t3
    80007778:	00f806b3          	add	a3,a6,a5
    8000777c:	00e7b023          	sd	a4,0(a5)
    80007780:	00878793          	addi	a5,a5,8
    80007784:	fed79ce3          	bne	a5,a3,8000777c <__memset+0xd4>
    80007788:	ff8e7793          	andi	a5,t3,-8
    8000778c:	0007871b          	sext.w	a4,a5
    80007790:	01d787bb          	addw	a5,a5,t4
    80007794:	0ce88e63          	beq	a7,a4,80007870 <__memset+0x1c8>
    80007798:	00f50733          	add	a4,a0,a5
    8000779c:	00b70023          	sb	a1,0(a4)
    800077a0:	0017871b          	addiw	a4,a5,1
    800077a4:	0cc77663          	bgeu	a4,a2,80007870 <__memset+0x1c8>
    800077a8:	00e50733          	add	a4,a0,a4
    800077ac:	00b70023          	sb	a1,0(a4)
    800077b0:	0027871b          	addiw	a4,a5,2
    800077b4:	0ac77e63          	bgeu	a4,a2,80007870 <__memset+0x1c8>
    800077b8:	00e50733          	add	a4,a0,a4
    800077bc:	00b70023          	sb	a1,0(a4)
    800077c0:	0037871b          	addiw	a4,a5,3
    800077c4:	0ac77663          	bgeu	a4,a2,80007870 <__memset+0x1c8>
    800077c8:	00e50733          	add	a4,a0,a4
    800077cc:	00b70023          	sb	a1,0(a4)
    800077d0:	0047871b          	addiw	a4,a5,4
    800077d4:	08c77e63          	bgeu	a4,a2,80007870 <__memset+0x1c8>
    800077d8:	00e50733          	add	a4,a0,a4
    800077dc:	00b70023          	sb	a1,0(a4)
    800077e0:	0057871b          	addiw	a4,a5,5
    800077e4:	08c77663          	bgeu	a4,a2,80007870 <__memset+0x1c8>
    800077e8:	00e50733          	add	a4,a0,a4
    800077ec:	00b70023          	sb	a1,0(a4)
    800077f0:	0067871b          	addiw	a4,a5,6
    800077f4:	06c77e63          	bgeu	a4,a2,80007870 <__memset+0x1c8>
    800077f8:	00e50733          	add	a4,a0,a4
    800077fc:	00b70023          	sb	a1,0(a4)
    80007800:	0077871b          	addiw	a4,a5,7
    80007804:	06c77663          	bgeu	a4,a2,80007870 <__memset+0x1c8>
    80007808:	00e50733          	add	a4,a0,a4
    8000780c:	00b70023          	sb	a1,0(a4)
    80007810:	0087871b          	addiw	a4,a5,8
    80007814:	04c77e63          	bgeu	a4,a2,80007870 <__memset+0x1c8>
    80007818:	00e50733          	add	a4,a0,a4
    8000781c:	00b70023          	sb	a1,0(a4)
    80007820:	0097871b          	addiw	a4,a5,9
    80007824:	04c77663          	bgeu	a4,a2,80007870 <__memset+0x1c8>
    80007828:	00e50733          	add	a4,a0,a4
    8000782c:	00b70023          	sb	a1,0(a4)
    80007830:	00a7871b          	addiw	a4,a5,10
    80007834:	02c77e63          	bgeu	a4,a2,80007870 <__memset+0x1c8>
    80007838:	00e50733          	add	a4,a0,a4
    8000783c:	00b70023          	sb	a1,0(a4)
    80007840:	00b7871b          	addiw	a4,a5,11
    80007844:	02c77663          	bgeu	a4,a2,80007870 <__memset+0x1c8>
    80007848:	00e50733          	add	a4,a0,a4
    8000784c:	00b70023          	sb	a1,0(a4)
    80007850:	00c7871b          	addiw	a4,a5,12
    80007854:	00c77e63          	bgeu	a4,a2,80007870 <__memset+0x1c8>
    80007858:	00e50733          	add	a4,a0,a4
    8000785c:	00b70023          	sb	a1,0(a4)
    80007860:	00d7879b          	addiw	a5,a5,13
    80007864:	00c7f663          	bgeu	a5,a2,80007870 <__memset+0x1c8>
    80007868:	00f507b3          	add	a5,a0,a5
    8000786c:	00b78023          	sb	a1,0(a5)
    80007870:	00813403          	ld	s0,8(sp)
    80007874:	01010113          	addi	sp,sp,16
    80007878:	00008067          	ret
    8000787c:	00b00693          	li	a3,11
    80007880:	e55ff06f          	j	800076d4 <__memset+0x2c>
    80007884:	00300e93          	li	t4,3
    80007888:	ea5ff06f          	j	8000772c <__memset+0x84>
    8000788c:	00100e93          	li	t4,1
    80007890:	e9dff06f          	j	8000772c <__memset+0x84>
    80007894:	00000e93          	li	t4,0
    80007898:	e95ff06f          	j	8000772c <__memset+0x84>
    8000789c:	00000793          	li	a5,0
    800078a0:	ef9ff06f          	j	80007798 <__memset+0xf0>
    800078a4:	00200e93          	li	t4,2
    800078a8:	e85ff06f          	j	8000772c <__memset+0x84>
    800078ac:	00400e93          	li	t4,4
    800078b0:	e7dff06f          	j	8000772c <__memset+0x84>
    800078b4:	00500e93          	li	t4,5
    800078b8:	e75ff06f          	j	8000772c <__memset+0x84>
    800078bc:	00600e93          	li	t4,6
    800078c0:	e6dff06f          	j	8000772c <__memset+0x84>

00000000800078c4 <__memmove>:
    800078c4:	ff010113          	addi	sp,sp,-16
    800078c8:	00813423          	sd	s0,8(sp)
    800078cc:	01010413          	addi	s0,sp,16
    800078d0:	0e060863          	beqz	a2,800079c0 <__memmove+0xfc>
    800078d4:	fff6069b          	addiw	a3,a2,-1
    800078d8:	0006881b          	sext.w	a6,a3
    800078dc:	0ea5e863          	bltu	a1,a0,800079cc <__memmove+0x108>
    800078e0:	00758713          	addi	a4,a1,7
    800078e4:	00a5e7b3          	or	a5,a1,a0
    800078e8:	40a70733          	sub	a4,a4,a0
    800078ec:	0077f793          	andi	a5,a5,7
    800078f0:	00f73713          	sltiu	a4,a4,15
    800078f4:	00174713          	xori	a4,a4,1
    800078f8:	0017b793          	seqz	a5,a5
    800078fc:	00e7f7b3          	and	a5,a5,a4
    80007900:	10078863          	beqz	a5,80007a10 <__memmove+0x14c>
    80007904:	00900793          	li	a5,9
    80007908:	1107f463          	bgeu	a5,a6,80007a10 <__memmove+0x14c>
    8000790c:	0036581b          	srliw	a6,a2,0x3
    80007910:	fff8081b          	addiw	a6,a6,-1
    80007914:	02081813          	slli	a6,a6,0x20
    80007918:	01d85893          	srli	a7,a6,0x1d
    8000791c:	00858813          	addi	a6,a1,8
    80007920:	00058793          	mv	a5,a1
    80007924:	00050713          	mv	a4,a0
    80007928:	01088833          	add	a6,a7,a6
    8000792c:	0007b883          	ld	a7,0(a5)
    80007930:	00878793          	addi	a5,a5,8
    80007934:	00870713          	addi	a4,a4,8
    80007938:	ff173c23          	sd	a7,-8(a4)
    8000793c:	ff0798e3          	bne	a5,a6,8000792c <__memmove+0x68>
    80007940:	ff867713          	andi	a4,a2,-8
    80007944:	02071793          	slli	a5,a4,0x20
    80007948:	0207d793          	srli	a5,a5,0x20
    8000794c:	00f585b3          	add	a1,a1,a5
    80007950:	40e686bb          	subw	a3,a3,a4
    80007954:	00f507b3          	add	a5,a0,a5
    80007958:	06e60463          	beq	a2,a4,800079c0 <__memmove+0xfc>
    8000795c:	0005c703          	lbu	a4,0(a1)
    80007960:	00e78023          	sb	a4,0(a5)
    80007964:	04068e63          	beqz	a3,800079c0 <__memmove+0xfc>
    80007968:	0015c603          	lbu	a2,1(a1)
    8000796c:	00100713          	li	a4,1
    80007970:	00c780a3          	sb	a2,1(a5)
    80007974:	04e68663          	beq	a3,a4,800079c0 <__memmove+0xfc>
    80007978:	0025c603          	lbu	a2,2(a1)
    8000797c:	00200713          	li	a4,2
    80007980:	00c78123          	sb	a2,2(a5)
    80007984:	02e68e63          	beq	a3,a4,800079c0 <__memmove+0xfc>
    80007988:	0035c603          	lbu	a2,3(a1)
    8000798c:	00300713          	li	a4,3
    80007990:	00c781a3          	sb	a2,3(a5)
    80007994:	02e68663          	beq	a3,a4,800079c0 <__memmove+0xfc>
    80007998:	0045c603          	lbu	a2,4(a1)
    8000799c:	00400713          	li	a4,4
    800079a0:	00c78223          	sb	a2,4(a5)
    800079a4:	00e68e63          	beq	a3,a4,800079c0 <__memmove+0xfc>
    800079a8:	0055c603          	lbu	a2,5(a1)
    800079ac:	00500713          	li	a4,5
    800079b0:	00c782a3          	sb	a2,5(a5)
    800079b4:	00e68663          	beq	a3,a4,800079c0 <__memmove+0xfc>
    800079b8:	0065c703          	lbu	a4,6(a1)
    800079bc:	00e78323          	sb	a4,6(a5)
    800079c0:	00813403          	ld	s0,8(sp)
    800079c4:	01010113          	addi	sp,sp,16
    800079c8:	00008067          	ret
    800079cc:	02061713          	slli	a4,a2,0x20
    800079d0:	02075713          	srli	a4,a4,0x20
    800079d4:	00e587b3          	add	a5,a1,a4
    800079d8:	f0f574e3          	bgeu	a0,a5,800078e0 <__memmove+0x1c>
    800079dc:	02069613          	slli	a2,a3,0x20
    800079e0:	02065613          	srli	a2,a2,0x20
    800079e4:	fff64613          	not	a2,a2
    800079e8:	00e50733          	add	a4,a0,a4
    800079ec:	00c78633          	add	a2,a5,a2
    800079f0:	fff7c683          	lbu	a3,-1(a5)
    800079f4:	fff78793          	addi	a5,a5,-1
    800079f8:	fff70713          	addi	a4,a4,-1
    800079fc:	00d70023          	sb	a3,0(a4)
    80007a00:	fec798e3          	bne	a5,a2,800079f0 <__memmove+0x12c>
    80007a04:	00813403          	ld	s0,8(sp)
    80007a08:	01010113          	addi	sp,sp,16
    80007a0c:	00008067          	ret
    80007a10:	02069713          	slli	a4,a3,0x20
    80007a14:	02075713          	srli	a4,a4,0x20
    80007a18:	00170713          	addi	a4,a4,1
    80007a1c:	00e50733          	add	a4,a0,a4
    80007a20:	00050793          	mv	a5,a0
    80007a24:	0005c683          	lbu	a3,0(a1)
    80007a28:	00178793          	addi	a5,a5,1
    80007a2c:	00158593          	addi	a1,a1,1
    80007a30:	fed78fa3          	sb	a3,-1(a5)
    80007a34:	fee798e3          	bne	a5,a4,80007a24 <__memmove+0x160>
    80007a38:	f89ff06f          	j	800079c0 <__memmove+0xfc>
	...

Disassembly of section .user:

000000008000b788 <copy_and_swap-0x878>:
	...

000000008000c000 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    8000c000:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    8000c004:	00b29a63          	bne	t0,a1,8000c018 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000c008:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    8000c00c:	fe029ae3          	bnez	t0,8000c000 <copy_and_swap>
    li a0, 0               # Set return to success.
    8000c010:	00000513          	li	a0,0
    jr ra                  # Return.
    8000c014:	00008067          	ret

000000008000c018 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000c018:	00100513          	li	a0,1
    8000c01c:	00008067          	ret

000000008000c020 <_Z9mem_allocm>:
//

#include "../../h/syscall_c.hpp"

void* mem_alloc(size_t size)
{
    8000c020:	ff010113          	addi	sp,sp,-16
    8000c024:	00813423          	sd	s0,8(sp)
    8000c028:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    8000c02c:	03f50513          	addi	a0,a0,63
    8000c030:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a1, %0" :  : "r"(numBlocks));
    8000c034:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 1");
    8000c038:	00100513          	li	a0,1

    __asm__ volatile("ecall"); // system call
    8000c03c:	00000073          	ecall

    //get the address
    uint64 allocatedAddr = 0x01;
    __asm__ volatile("mv %0, a0" : "=r"(allocatedAddr));
    8000c040:	00050513          	mv	a0,a0

    if(allocatedAddr == 0)
        return nullptr;

    return (void*)allocatedAddr;
}
    8000c044:	00813403          	ld	s0,8(sp)
    8000c048:	01010113          	addi	sp,sp,16
    8000c04c:	00008067          	ret

000000008000c050 <_Z8mem_freePv>:

int mem_free(void* p)
{
    8000c050:	ff010113          	addi	sp,sp,-16
    8000c054:	00813423          	sd	s0,8(sp)
    8000c058:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 addrFree = (uint64)p;
    __asm__ volatile("mv a1, %0" :  : "r"(addrFree));
    8000c05c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 2");
    8000c060:	00200513          	li	a0,2

    __asm__ volatile("ecall"); // system call
    8000c064:	00000073          	ecall

    //get the result of system call
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c068:	00050513          	mv	a0,a0

    return result;
}
    8000c06c:	0005051b          	sext.w	a0,a0
    8000c070:	00813403          	ld	s0,8(sp)
    8000c074:	01010113          	addi	sp,sp,16
    8000c078:	00008067          	ret

000000008000c07c <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* args)
{
    8000c07c:	fd010113          	addi	sp,sp,-48
    8000c080:	02113423          	sd	ra,40(sp)
    8000c084:	02813023          	sd	s0,32(sp)
    8000c088:	00913c23          	sd	s1,24(sp)
    8000c08c:	01213823          	sd	s2,16(sp)
    8000c090:	01313423          	sd	s3,8(sp)
    8000c094:	03010413          	addi	s0,sp,48
    8000c098:	00050493          	mv	s1,a0
    8000c09c:	00058913          	mv	s2,a1
    8000c0a0:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)args;
    uint64 opLocal = 0x11;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    8000c0a4:	00001537          	lui	a0,0x1
    8000c0a8:	00000097          	auipc	ra,0x0
    8000c0ac:	f78080e7          	jalr	-136(ra) # 8000c020 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == nullptr)
    8000c0b0:	04050a63          	beqz	a0,8000c104 <_Z13thread_createPP7_threadPFvPvES2_+0x88>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    8000c0b4:	00050713          	mv	a4,a0
    //__asm__ volatile("mv a4, %0" :  : "r"((uint64)1));
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    8000c0b8:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    8000c0bc:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    8000c0c0:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    8000c0c4:	01100793          	li	a5,17
    8000c0c8:	00078513          	mv	a0,a5


    __asm__ volatile("ecall");
    8000c0cc:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c0d0:	00050493          	mv	s1,a0

    if(result != 0)
    8000c0d4:	02049263          	bnez	s1,8000c0f8 <_Z13thread_createPP7_threadPFvPvES2_+0x7c>
    {
        mem_free(stack_space);
    }

    return result;
    8000c0d8:	0004851b          	sext.w	a0,s1
}
    8000c0dc:	02813083          	ld	ra,40(sp)
    8000c0e0:	02013403          	ld	s0,32(sp)
    8000c0e4:	01813483          	ld	s1,24(sp)
    8000c0e8:	01013903          	ld	s2,16(sp)
    8000c0ec:	00813983          	ld	s3,8(sp)
    8000c0f0:	03010113          	addi	sp,sp,48
    8000c0f4:	00008067          	ret
        mem_free(stack_space);
    8000c0f8:	00000097          	auipc	ra,0x0
    8000c0fc:	f58080e7          	jalr	-168(ra) # 8000c050 <_Z8mem_freePv>
    8000c100:	fd9ff06f          	j	8000c0d8 <_Z13thread_createPP7_threadPFvPvES2_+0x5c>
        return -1;
    8000c104:	fff00513          	li	a0,-1
    8000c108:	fd5ff06f          	j	8000c0dc <_Z13thread_createPP7_threadPFvPvES2_+0x60>

000000008000c10c <_Z15thread_dispatchv>:

void thread_dispatch()
{
    8000c10c:	ff010113          	addi	sp,sp,-16
    8000c110:	00813423          	sd	s0,8(sp)
    8000c114:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    8000c118:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    8000c11c:	00000073          	ecall
}
    8000c120:	00813403          	ld	s0,8(sp)
    8000c124:	01010113          	addi	sp,sp,16
    8000c128:	00008067          	ret

000000008000c12c <_Z11thread_exitv>:

int thread_exit()
{
    8000c12c:	ff010113          	addi	sp,sp,-16
    8000c130:	00813423          	sd	s0,8(sp)
    8000c134:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    8000c138:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    8000c13c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c140:	00050513          	mv	a0,a0
    return result;
}
    8000c144:	0005051b          	sext.w	a0,a0
    8000c148:	00813403          	ld	s0,8(sp)
    8000c14c:	01010113          	addi	sp,sp,16
    8000c150:	00008067          	ret

000000008000c154 <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned int x)
{
    8000c154:	ff010113          	addi	sp,sp,-16
    8000c158:	00813423          	sd	s0,8(sp)
    8000c15c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)x));
    8000c160:	02059593          	slli	a1,a1,0x20
    8000c164:	0205d593          	srli	a1,a1,0x20
    8000c168:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    8000c16c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    8000c170:	02100513          	li	a0,33

    __asm__ volatile("ecall");
    8000c174:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c178:	00050513          	mv	a0,a0
    return result;
}
    8000c17c:	0005051b          	sext.w	a0,a0
    8000c180:	00813403          	ld	s0,8(sp)
    8000c184:	01010113          	addi	sp,sp,16
    8000c188:	00008067          	ret

000000008000c18c <_Z9sem_closeP4_sem>:


int sem_close(sem_t handle)
{
    8000c18c:	ff010113          	addi	sp,sp,-16
    8000c190:	00813423          	sd	s0,8(sp)
    8000c194:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    8000c198:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    8000c19c:	02200513          	li	a0,34

    __asm__ volatile("ecall");
    8000c1a0:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c1a4:	00050513          	mv	a0,a0
    return result;
}
    8000c1a8:	0005051b          	sext.w	a0,a0
    8000c1ac:	00813403          	ld	s0,8(sp)
    8000c1b0:	01010113          	addi	sp,sp,16
    8000c1b4:	00008067          	ret

000000008000c1b8 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id)
{
    8000c1b8:	ff010113          	addi	sp,sp,-16
    8000c1bc:	00813423          	sd	s0,8(sp)
    8000c1c0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    8000c1c4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    8000c1c8:	02300513          	li	a0,35

    __asm__ volatile("ecall");
    8000c1cc:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c1d0:	00050513          	mv	a0,a0
    return result;
}
    8000c1d4:	0005051b          	sext.w	a0,a0
    8000c1d8:	00813403          	ld	s0,8(sp)
    8000c1dc:	01010113          	addi	sp,sp,16
    8000c1e0:	00008067          	ret

000000008000c1e4 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id)
{
    8000c1e4:	ff010113          	addi	sp,sp,-16
    8000c1e8:	00813423          	sd	s0,8(sp)
    8000c1ec:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    8000c1f0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    8000c1f4:	02400513          	li	a0,36

    __asm__ volatile("ecall");
    8000c1f8:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c1fc:	00050513          	mv	a0,a0
    return result;
}
    8000c200:	0005051b          	sext.w	a0,a0
    8000c204:	00813403          	ld	s0,8(sp)
    8000c208:	01010113          	addi	sp,sp,16
    8000c20c:	00008067          	ret

000000008000c210 <_Z10time_sleepm>:

int time_sleep(uint64 time)
{
    8000c210:	ff010113          	addi	sp,sp,-16
    8000c214:	00813423          	sd	s0,8(sp)
    8000c218:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)time));
    8000c21c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    8000c220:	03100513          	li	a0,49

    __asm__ volatile("ecall");
    8000c224:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c228:	00050513          	mv	a0,a0
    return result;
}
    8000c22c:	0005051b          	sext.w	a0,a0
    8000c230:	00813403          	ld	s0,8(sp)
    8000c234:	01010113          	addi	sp,sp,16
    8000c238:	00008067          	ret

000000008000c23c <_Z12thread_startPv>:

int thread_start(void* p)
{
    8000c23c:	ff010113          	addi	sp,sp,-16
    8000c240:	00813423          	sd	s0,8(sp)
    8000c244:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)p));
    8000c248:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x15");
    8000c24c:	01500513          	li	a0,21

    __asm__ volatile("ecall");
    8000c250:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c254:	00050513          	mv	a0,a0
    return result;
}
    8000c258:	0005051b          	sext.w	a0,a0
    8000c25c:	00813403          	ld	s0,8(sp)
    8000c260:	01010113          	addi	sp,sp,16
    8000c264:	00008067          	ret

000000008000c268 <_Z15thread_make_pcbPP7_threadPFvPvES2_>:

int thread_make_pcb(thread_t* handle, void(*start_routine)(void*), void *arg)
{
    8000c268:	fd010113          	addi	sp,sp,-48
    8000c26c:	02113423          	sd	ra,40(sp)
    8000c270:	02813023          	sd	s0,32(sp)
    8000c274:	00913c23          	sd	s1,24(sp)
    8000c278:	01213823          	sd	s2,16(sp)
    8000c27c:	01313423          	sd	s3,8(sp)
    8000c280:	03010413          	addi	s0,sp,48
    8000c284:	00050493          	mv	s1,a0
    8000c288:	00058913          	mv	s2,a1
    8000c28c:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)arg;
    uint64 opLocal = 0x14;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    8000c290:	00001537          	lui	a0,0x1
    8000c294:	00000097          	auipc	ra,0x0
    8000c298:	d8c080e7          	jalr	-628(ra) # 8000c020 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == 0)
    8000c29c:	04050a63          	beqz	a0,8000c2f0 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x88>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    8000c2a0:	00050713          	mv	a4,a0
    //__asm__ volatile("mv a4, %0" :  : "r"((uint64)1));
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    8000c2a4:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    8000c2a8:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    8000c2ac:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    8000c2b0:	01400793          	li	a5,20
    8000c2b4:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    8000c2b8:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c2bc:	00050493          	mv	s1,a0

    if(result != 0)
    8000c2c0:	02049263          	bnez	s1,8000c2e4 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x7c>
    {
        mem_free(stack_space);
    }

    return result;
    8000c2c4:	0004851b          	sext.w	a0,s1
}
    8000c2c8:	02813083          	ld	ra,40(sp)
    8000c2cc:	02013403          	ld	s0,32(sp)
    8000c2d0:	01813483          	ld	s1,24(sp)
    8000c2d4:	01013903          	ld	s2,16(sp)
    8000c2d8:	00813983          	ld	s3,8(sp)
    8000c2dc:	03010113          	addi	sp,sp,48
    8000c2e0:	00008067          	ret
        mem_free(stack_space);
    8000c2e4:	00000097          	auipc	ra,0x0
    8000c2e8:	d6c080e7          	jalr	-660(ra) # 8000c050 <_Z8mem_freePv>
    8000c2ec:	fd9ff06f          	j	8000c2c4 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x5c>
        return -1;
    8000c2f0:	fff00513          	li	a0,-1
    8000c2f4:	fd5ff06f          	j	8000c2c8 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x60>

000000008000c2f8 <_Z4getcv>:

char getc()
{
    8000c2f8:	ff010113          	addi	sp,sp,-16
    8000c2fc:	00813423          	sd	s0,8(sp)
    8000c300:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    8000c304:	04100513          	li	a0,65

    __asm__ volatile("ecall");
    8000c308:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c30c:	00050513          	mv	a0,a0
    return (char)result;
}
    8000c310:	0ff57513          	andi	a0,a0,255
    8000c314:	00813403          	ld	s0,8(sp)
    8000c318:	01010113          	addi	sp,sp,16
    8000c31c:	00008067          	ret

000000008000c320 <_Z4putcc>:

void putc(char c)
{
    8000c320:	ff010113          	addi	sp,sp,-16
    8000c324:	00813423          	sd	s0,8(sp)
    8000c328:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)c));
    8000c32c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    8000c330:	04200513          	li	a0,66
    __asm__ volatile("ecall");
    8000c334:	00000073          	ecall
}
    8000c338:	00813403          	ld	s0,8(sp)
    8000c33c:	01010113          	addi	sp,sp,16
    8000c340:	00008067          	ret

000000008000c344 <_Z17thread_delete_pcbP7_thread>:
//    __asm__ volatile("mv %0, a0" : "=r"(result));
//    return (char)result;
//}

int thread_delete_pcb(thread_t handle)
{
    8000c344:	ff010113          	addi	sp,sp,-16
    8000c348:	00813423          	sd	s0,8(sp)
    8000c34c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    8000c350:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x16");
    8000c354:	01600513          	li	a0,22
    __asm__ volatile("ecall");
    8000c358:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c35c:	00050513          	mv	a0,a0
    return (char)result;
}
    8000c360:	0ff57513          	andi	a0,a0,255
    8000c364:	00813403          	ld	s0,8(sp)
    8000c368:	01010113          	addi	sp,sp,16
    8000c36c:	00008067          	ret

000000008000c370 <_ZN7_threaddlEPv>:
//

#include "../../h/_thread.hpp"
#include "../../h/syscall_c.hpp"

void _thread::operator delete(void *p) {
    8000c370:	ff010113          	addi	sp,sp,-16
    8000c374:	00113423          	sd	ra,8(sp)
    8000c378:	00813023          	sd	s0,0(sp)
    8000c37c:	01010413          	addi	s0,sp,16
    thread_delete_pcb((thread_t)p);
    8000c380:	00000097          	auipc	ra,0x0
    8000c384:	fc4080e7          	jalr	-60(ra) # 8000c344 <_Z17thread_delete_pcbP7_thread>
    8000c388:	00813083          	ld	ra,8(sp)
    8000c38c:	00013403          	ld	s0,0(sp)
    8000c390:	01010113          	addi	sp,sp,16
    8000c394:	00008067          	ret

000000008000c398 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    8000c398:	fe010113          	addi	sp,sp,-32
    8000c39c:	00113c23          	sd	ra,24(sp)
    8000c3a0:	00813823          	sd	s0,16(sp)
    8000c3a4:	00913423          	sd	s1,8(sp)
    8000c3a8:	02010413          	addi	s0,sp,32
    8000c3ac:	00050493          	mv	s1,a0
    LOCK();
    8000c3b0:	00100613          	li	a2,1
    8000c3b4:	00000593          	li	a1,0
    8000c3b8:	00002517          	auipc	a0,0x2
    8000c3bc:	d0050513          	addi	a0,a0,-768 # 8000e0b8 <lockPrint>
    8000c3c0:	00000097          	auipc	ra,0x0
    8000c3c4:	c40080e7          	jalr	-960(ra) # 8000c000 <copy_and_swap>
    8000c3c8:	fe0514e3          	bnez	a0,8000c3b0 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000c3cc:	0004c503          	lbu	a0,0(s1)
    8000c3d0:	00050a63          	beqz	a0,8000c3e4 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    8000c3d4:	00000097          	auipc	ra,0x0
    8000c3d8:	f4c080e7          	jalr	-180(ra) # 8000c320 <_Z4putcc>
        string++;
    8000c3dc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000c3e0:	fedff06f          	j	8000c3cc <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    8000c3e4:	00000613          	li	a2,0
    8000c3e8:	00100593          	li	a1,1
    8000c3ec:	00002517          	auipc	a0,0x2
    8000c3f0:	ccc50513          	addi	a0,a0,-820 # 8000e0b8 <lockPrint>
    8000c3f4:	00000097          	auipc	ra,0x0
    8000c3f8:	c0c080e7          	jalr	-1012(ra) # 8000c000 <copy_and_swap>
    8000c3fc:	fe0514e3          	bnez	a0,8000c3e4 <_Z11printStringPKc+0x4c>
}
    8000c400:	01813083          	ld	ra,24(sp)
    8000c404:	01013403          	ld	s0,16(sp)
    8000c408:	00813483          	ld	s1,8(sp)
    8000c40c:	02010113          	addi	sp,sp,32
    8000c410:	00008067          	ret

000000008000c414 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    8000c414:	fd010113          	addi	sp,sp,-48
    8000c418:	02113423          	sd	ra,40(sp)
    8000c41c:	02813023          	sd	s0,32(sp)
    8000c420:	00913c23          	sd	s1,24(sp)
    8000c424:	01213823          	sd	s2,16(sp)
    8000c428:	01313423          	sd	s3,8(sp)
    8000c42c:	01413023          	sd	s4,0(sp)
    8000c430:	03010413          	addi	s0,sp,48
    8000c434:	00050993          	mv	s3,a0
    8000c438:	00058a13          	mv	s4,a1
    LOCK();
    8000c43c:	00100613          	li	a2,1
    8000c440:	00000593          	li	a1,0
    8000c444:	00002517          	auipc	a0,0x2
    8000c448:	c7450513          	addi	a0,a0,-908 # 8000e0b8 <lockPrint>
    8000c44c:	00000097          	auipc	ra,0x0
    8000c450:	bb4080e7          	jalr	-1100(ra) # 8000c000 <copy_and_swap>
    8000c454:	fe0514e3          	bnez	a0,8000c43c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    8000c458:	00000913          	li	s2,0
    8000c45c:	00090493          	mv	s1,s2
    8000c460:	0019091b          	addiw	s2,s2,1
    8000c464:	03495a63          	bge	s2,s4,8000c498 <_Z9getStringPci+0x84>
        cc = getc();
    8000c468:	00000097          	auipc	ra,0x0
    8000c46c:	e90080e7          	jalr	-368(ra) # 8000c2f8 <_Z4getcv>
        if(cc < 1)
    8000c470:	02050463          	beqz	a0,8000c498 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    8000c474:	009984b3          	add	s1,s3,s1
    8000c478:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8000c47c:	00a00793          	li	a5,10
    8000c480:	00f50a63          	beq	a0,a5,8000c494 <_Z9getStringPci+0x80>
    8000c484:	00d00793          	li	a5,13
    8000c488:	fcf51ae3          	bne	a0,a5,8000c45c <_Z9getStringPci+0x48>
        buf[i++] = c;
    8000c48c:	00090493          	mv	s1,s2
    8000c490:	0080006f          	j	8000c498 <_Z9getStringPci+0x84>
    8000c494:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    8000c498:	009984b3          	add	s1,s3,s1
    8000c49c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    8000c4a0:	00000613          	li	a2,0
    8000c4a4:	00100593          	li	a1,1
    8000c4a8:	00002517          	auipc	a0,0x2
    8000c4ac:	c1050513          	addi	a0,a0,-1008 # 8000e0b8 <lockPrint>
    8000c4b0:	00000097          	auipc	ra,0x0
    8000c4b4:	b50080e7          	jalr	-1200(ra) # 8000c000 <copy_and_swap>
    8000c4b8:	fe0514e3          	bnez	a0,8000c4a0 <_Z9getStringPci+0x8c>
    return buf;
}
    8000c4bc:	00098513          	mv	a0,s3
    8000c4c0:	02813083          	ld	ra,40(sp)
    8000c4c4:	02013403          	ld	s0,32(sp)
    8000c4c8:	01813483          	ld	s1,24(sp)
    8000c4cc:	01013903          	ld	s2,16(sp)
    8000c4d0:	00813983          	ld	s3,8(sp)
    8000c4d4:	00013a03          	ld	s4,0(sp)
    8000c4d8:	03010113          	addi	sp,sp,48
    8000c4dc:	00008067          	ret

000000008000c4e0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    8000c4e0:	ff010113          	addi	sp,sp,-16
    8000c4e4:	00813423          	sd	s0,8(sp)
    8000c4e8:	01010413          	addi	s0,sp,16
    8000c4ec:	00050693          	mv	a3,a0
    int n;

    n = 0;
    8000c4f0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000c4f4:	0006c603          	lbu	a2,0(a3)
    8000c4f8:	fd06071b          	addiw	a4,a2,-48
    8000c4fc:	0ff77713          	andi	a4,a4,255
    8000c500:	00900793          	li	a5,9
    8000c504:	02e7e063          	bltu	a5,a4,8000c524 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    8000c508:	0025179b          	slliw	a5,a0,0x2
    8000c50c:	00a787bb          	addw	a5,a5,a0
    8000c510:	0017979b          	slliw	a5,a5,0x1
    8000c514:	00168693          	addi	a3,a3,1
    8000c518:	00c787bb          	addw	a5,a5,a2
    8000c51c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    8000c520:	fd5ff06f          	j	8000c4f4 <_Z11stringToIntPKc+0x14>
    return n;
}
    8000c524:	00813403          	ld	s0,8(sp)
    8000c528:	01010113          	addi	sp,sp,16
    8000c52c:	00008067          	ret

000000008000c530 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    8000c530:	fc010113          	addi	sp,sp,-64
    8000c534:	02113c23          	sd	ra,56(sp)
    8000c538:	02813823          	sd	s0,48(sp)
    8000c53c:	02913423          	sd	s1,40(sp)
    8000c540:	03213023          	sd	s2,32(sp)
    8000c544:	01313c23          	sd	s3,24(sp)
    8000c548:	04010413          	addi	s0,sp,64
    8000c54c:	00050493          	mv	s1,a0
    8000c550:	00058913          	mv	s2,a1
    8000c554:	00060993          	mv	s3,a2
    LOCK();
    8000c558:	00100613          	li	a2,1
    8000c55c:	00000593          	li	a1,0
    8000c560:	00002517          	auipc	a0,0x2
    8000c564:	b5850513          	addi	a0,a0,-1192 # 8000e0b8 <lockPrint>
    8000c568:	00000097          	auipc	ra,0x0
    8000c56c:	a98080e7          	jalr	-1384(ra) # 8000c000 <copy_and_swap>
    8000c570:	fe0514e3          	bnez	a0,8000c558 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000c574:	00098463          	beqz	s3,8000c57c <_Z8printIntiii+0x4c>
    8000c578:	0804c463          	bltz	s1,8000c600 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    8000c57c:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000c580:	00000593          	li	a1,0
    }

    i = 0;
    8000c584:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    8000c588:	0009079b          	sext.w	a5,s2
    8000c58c:	0325773b          	remuw	a4,a0,s2
    8000c590:	00048613          	mv	a2,s1
    8000c594:	0014849b          	addiw	s1,s1,1
    8000c598:	02071693          	slli	a3,a4,0x20
    8000c59c:	0206d693          	srli	a3,a3,0x20
    8000c5a0:	00002717          	auipc	a4,0x2
    8000c5a4:	a8870713          	addi	a4,a4,-1400 # 8000e028 <digits>
    8000c5a8:	00d70733          	add	a4,a4,a3
    8000c5ac:	00074683          	lbu	a3,0(a4)
    8000c5b0:	fd040713          	addi	a4,s0,-48
    8000c5b4:	00c70733          	add	a4,a4,a2
    8000c5b8:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    8000c5bc:	0005071b          	sext.w	a4,a0
    8000c5c0:	0325553b          	divuw	a0,a0,s2
    8000c5c4:	fcf772e3          	bgeu	a4,a5,8000c588 <_Z8printIntiii+0x58>
    if(neg)
    8000c5c8:	00058c63          	beqz	a1,8000c5e0 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    8000c5cc:	fd040793          	addi	a5,s0,-48
    8000c5d0:	009784b3          	add	s1,a5,s1
    8000c5d4:	02d00793          	li	a5,45
    8000c5d8:	fef48823          	sb	a5,-16(s1)
    8000c5dc:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    8000c5e0:	fff4849b          	addiw	s1,s1,-1
    8000c5e4:	0204c463          	bltz	s1,8000c60c <_Z8printIntiii+0xdc>
        putc(buf[i]);
    8000c5e8:	fd040793          	addi	a5,s0,-48
    8000c5ec:	009787b3          	add	a5,a5,s1
    8000c5f0:	ff07c503          	lbu	a0,-16(a5)
    8000c5f4:	00000097          	auipc	ra,0x0
    8000c5f8:	d2c080e7          	jalr	-724(ra) # 8000c320 <_Z4putcc>
    8000c5fc:	fe5ff06f          	j	8000c5e0 <_Z8printIntiii+0xb0>
        x = -xx;
    8000c600:	4090053b          	negw	a0,s1
        neg = 1;
    8000c604:	00100593          	li	a1,1
        x = -xx;
    8000c608:	f7dff06f          	j	8000c584 <_Z8printIntiii+0x54>

    UNLOCK();
    8000c60c:	00000613          	li	a2,0
    8000c610:	00100593          	li	a1,1
    8000c614:	00002517          	auipc	a0,0x2
    8000c618:	aa450513          	addi	a0,a0,-1372 # 8000e0b8 <lockPrint>
    8000c61c:	00000097          	auipc	ra,0x0
    8000c620:	9e4080e7          	jalr	-1564(ra) # 8000c000 <copy_and_swap>
    8000c624:	fe0514e3          	bnez	a0,8000c60c <_Z8printIntiii+0xdc>
}
    8000c628:	03813083          	ld	ra,56(sp)
    8000c62c:	03013403          	ld	s0,48(sp)
    8000c630:	02813483          	ld	s1,40(sp)
    8000c634:	02013903          	ld	s2,32(sp)
    8000c638:	01813983          	ld	s3,24(sp)
    8000c63c:	04010113          	addi	sp,sp,64
    8000c640:	00008067          	ret

000000008000c644 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "printing.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000c644:	fd010113          	addi	sp,sp,-48
    8000c648:	02113423          	sd	ra,40(sp)
    8000c64c:	02813023          	sd	s0,32(sp)
    8000c650:	00913c23          	sd	s1,24(sp)
    8000c654:	01213823          	sd	s2,16(sp)
    8000c658:	01313423          	sd	s3,8(sp)
    8000c65c:	03010413          	addi	s0,sp,48
    8000c660:	00050493          	mv	s1,a0
    8000c664:	00058993          	mv	s3,a1
    8000c668:	0015879b          	addiw	a5,a1,1
    8000c66c:	0007851b          	sext.w	a0,a5
    8000c670:	00f4a023          	sw	a5,0(s1)
    8000c674:	0004a823          	sw	zero,16(s1)
    8000c678:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000c67c:	00251513          	slli	a0,a0,0x2
    8000c680:	00000097          	auipc	ra,0x0
    8000c684:	9a0080e7          	jalr	-1632(ra) # 8000c020 <_Z9mem_allocm>
    8000c688:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    8000c68c:	01000513          	li	a0,16
    8000c690:	00001097          	auipc	ra,0x1
    8000c694:	8dc080e7          	jalr	-1828(ra) # 8000cf6c <_Znwm>
    8000c698:	00050913          	mv	s2,a0
    8000c69c:	00050863          	beqz	a0,8000c6ac <_ZN9BufferCPPC1Ei+0x68>
    8000c6a0:	00000593          	li	a1,0
    8000c6a4:	00001097          	auipc	ra,0x1
    8000c6a8:	b1c080e7          	jalr	-1252(ra) # 8000d1c0 <_ZN9SemaphoreC1Ej>
    8000c6ac:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(_cap);
    8000c6b0:	01000513          	li	a0,16
    8000c6b4:	00001097          	auipc	ra,0x1
    8000c6b8:	8b8080e7          	jalr	-1864(ra) # 8000cf6c <_Znwm>
    8000c6bc:	00050913          	mv	s2,a0
    8000c6c0:	00050863          	beqz	a0,8000c6d0 <_ZN9BufferCPPC1Ei+0x8c>
    8000c6c4:	00098593          	mv	a1,s3
    8000c6c8:	00001097          	auipc	ra,0x1
    8000c6cc:	af8080e7          	jalr	-1288(ra) # 8000d1c0 <_ZN9SemaphoreC1Ej>
    8000c6d0:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    8000c6d4:	01000513          	li	a0,16
    8000c6d8:	00001097          	auipc	ra,0x1
    8000c6dc:	894080e7          	jalr	-1900(ra) # 8000cf6c <_Znwm>
    8000c6e0:	00050913          	mv	s2,a0
    8000c6e4:	00050863          	beqz	a0,8000c6f4 <_ZN9BufferCPPC1Ei+0xb0>
    8000c6e8:	00100593          	li	a1,1
    8000c6ec:	00001097          	auipc	ra,0x1
    8000c6f0:	ad4080e7          	jalr	-1324(ra) # 8000d1c0 <_ZN9SemaphoreC1Ej>
    8000c6f4:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    8000c6f8:	01000513          	li	a0,16
    8000c6fc:	00001097          	auipc	ra,0x1
    8000c700:	870080e7          	jalr	-1936(ra) # 8000cf6c <_Znwm>
    8000c704:	00050913          	mv	s2,a0
    8000c708:	00050863          	beqz	a0,8000c718 <_ZN9BufferCPPC1Ei+0xd4>
    8000c70c:	00100593          	li	a1,1
    8000c710:	00001097          	auipc	ra,0x1
    8000c714:	ab0080e7          	jalr	-1360(ra) # 8000d1c0 <_ZN9SemaphoreC1Ej>
    8000c718:	0324b823          	sd	s2,48(s1)
}
    8000c71c:	02813083          	ld	ra,40(sp)
    8000c720:	02013403          	ld	s0,32(sp)
    8000c724:	01813483          	ld	s1,24(sp)
    8000c728:	01013903          	ld	s2,16(sp)
    8000c72c:	00813983          	ld	s3,8(sp)
    8000c730:	03010113          	addi	sp,sp,48
    8000c734:	00008067          	ret
    8000c738:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    8000c73c:	00090513          	mv	a0,s2
    8000c740:	00001097          	auipc	ra,0x1
    8000c744:	854080e7          	jalr	-1964(ra) # 8000cf94 <_ZdlPv>
    8000c748:	00048513          	mv	a0,s1
    8000c74c:	ffffd097          	auipc	ra,0xffffd
    8000c750:	46c080e7          	jalr	1132(ra) # 80009bb8 <_Unwind_Resume>
    8000c754:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    8000c758:	00090513          	mv	a0,s2
    8000c75c:	00001097          	auipc	ra,0x1
    8000c760:	838080e7          	jalr	-1992(ra) # 8000cf94 <_ZdlPv>
    8000c764:	00048513          	mv	a0,s1
    8000c768:	ffffd097          	auipc	ra,0xffffd
    8000c76c:	450080e7          	jalr	1104(ra) # 80009bb8 <_Unwind_Resume>
    8000c770:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    8000c774:	00090513          	mv	a0,s2
    8000c778:	00001097          	auipc	ra,0x1
    8000c77c:	81c080e7          	jalr	-2020(ra) # 8000cf94 <_ZdlPv>
    8000c780:	00048513          	mv	a0,s1
    8000c784:	ffffd097          	auipc	ra,0xffffd
    8000c788:	434080e7          	jalr	1076(ra) # 80009bb8 <_Unwind_Resume>
    8000c78c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000c790:	00090513          	mv	a0,s2
    8000c794:	00001097          	auipc	ra,0x1
    8000c798:	800080e7          	jalr	-2048(ra) # 8000cf94 <_ZdlPv>
    8000c79c:	00048513          	mv	a0,s1
    8000c7a0:	ffffd097          	auipc	ra,0xffffd
    8000c7a4:	418080e7          	jalr	1048(ra) # 80009bb8 <_Unwind_Resume>

000000008000c7a8 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    8000c7a8:	fe010113          	addi	sp,sp,-32
    8000c7ac:	00113c23          	sd	ra,24(sp)
    8000c7b0:	00813823          	sd	s0,16(sp)
    8000c7b4:	00913423          	sd	s1,8(sp)
    8000c7b8:	01213023          	sd	s2,0(sp)
    8000c7bc:	02010413          	addi	s0,sp,32
    8000c7c0:	00050493          	mv	s1,a0
    8000c7c4:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    8000c7c8:	01853503          	ld	a0,24(a0)
    8000c7cc:	00001097          	auipc	ra,0x1
    8000c7d0:	9bc080e7          	jalr	-1604(ra) # 8000d188 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    8000c7d4:	0304b503          	ld	a0,48(s1)
    8000c7d8:	00001097          	auipc	ra,0x1
    8000c7dc:	9b0080e7          	jalr	-1616(ra) # 8000d188 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    8000c7e0:	0084b783          	ld	a5,8(s1)
    8000c7e4:	0144a703          	lw	a4,20(s1)
    8000c7e8:	00271713          	slli	a4,a4,0x2
    8000c7ec:	00e787b3          	add	a5,a5,a4
    8000c7f0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000c7f4:	0144a783          	lw	a5,20(s1)
    8000c7f8:	0017879b          	addiw	a5,a5,1
    8000c7fc:	0004a703          	lw	a4,0(s1)
    8000c800:	02e7e7bb          	remw	a5,a5,a4
    8000c804:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    8000c808:	0304b503          	ld	a0,48(s1)
    8000c80c:	00001097          	auipc	ra,0x1
    8000c810:	a00080e7          	jalr	-1536(ra) # 8000d20c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    8000c814:	0204b503          	ld	a0,32(s1)
    8000c818:	00001097          	auipc	ra,0x1
    8000c81c:	9f4080e7          	jalr	-1548(ra) # 8000d20c <_ZN9Semaphore6signalEv>

}
    8000c820:	01813083          	ld	ra,24(sp)
    8000c824:	01013403          	ld	s0,16(sp)
    8000c828:	00813483          	ld	s1,8(sp)
    8000c82c:	00013903          	ld	s2,0(sp)
    8000c830:	02010113          	addi	sp,sp,32
    8000c834:	00008067          	ret

000000008000c838 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    8000c838:	fe010113          	addi	sp,sp,-32
    8000c83c:	00113c23          	sd	ra,24(sp)
    8000c840:	00813823          	sd	s0,16(sp)
    8000c844:	00913423          	sd	s1,8(sp)
    8000c848:	01213023          	sd	s2,0(sp)
    8000c84c:	02010413          	addi	s0,sp,32
    8000c850:	00050493          	mv	s1,a0
    itemAvailable->wait();
    8000c854:	02053503          	ld	a0,32(a0)
    8000c858:	00001097          	auipc	ra,0x1
    8000c85c:	930080e7          	jalr	-1744(ra) # 8000d188 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000c860:	0284b503          	ld	a0,40(s1)
    8000c864:	00001097          	auipc	ra,0x1
    8000c868:	924080e7          	jalr	-1756(ra) # 8000d188 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    8000c86c:	0084b703          	ld	a4,8(s1)
    8000c870:	0104a783          	lw	a5,16(s1)
    8000c874:	00279693          	slli	a3,a5,0x2
    8000c878:	00d70733          	add	a4,a4,a3
    8000c87c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000c880:	0017879b          	addiw	a5,a5,1
    8000c884:	0004a703          	lw	a4,0(s1)
    8000c888:	02e7e7bb          	remw	a5,a5,a4
    8000c88c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000c890:	0284b503          	ld	a0,40(s1)
    8000c894:	00001097          	auipc	ra,0x1
    8000c898:	978080e7          	jalr	-1672(ra) # 8000d20c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    8000c89c:	0184b503          	ld	a0,24(s1)
    8000c8a0:	00001097          	auipc	ra,0x1
    8000c8a4:	96c080e7          	jalr	-1684(ra) # 8000d20c <_ZN9Semaphore6signalEv>

    return ret;
}
    8000c8a8:	00090513          	mv	a0,s2
    8000c8ac:	01813083          	ld	ra,24(sp)
    8000c8b0:	01013403          	ld	s0,16(sp)
    8000c8b4:	00813483          	ld	s1,8(sp)
    8000c8b8:	00013903          	ld	s2,0(sp)
    8000c8bc:	02010113          	addi	sp,sp,32
    8000c8c0:	00008067          	ret

000000008000c8c4 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    8000c8c4:	fe010113          	addi	sp,sp,-32
    8000c8c8:	00113c23          	sd	ra,24(sp)
    8000c8cc:	00813823          	sd	s0,16(sp)
    8000c8d0:	00913423          	sd	s1,8(sp)
    8000c8d4:	01213023          	sd	s2,0(sp)
    8000c8d8:	02010413          	addi	s0,sp,32
    8000c8dc:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    8000c8e0:	02853503          	ld	a0,40(a0)
    8000c8e4:	00001097          	auipc	ra,0x1
    8000c8e8:	8a4080e7          	jalr	-1884(ra) # 8000d188 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    8000c8ec:	0304b503          	ld	a0,48(s1)
    8000c8f0:	00001097          	auipc	ra,0x1
    8000c8f4:	898080e7          	jalr	-1896(ra) # 8000d188 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    8000c8f8:	0144a783          	lw	a5,20(s1)
    8000c8fc:	0104a903          	lw	s2,16(s1)
    8000c900:	0327ce63          	blt	a5,s2,8000c93c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    8000c904:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    8000c908:	0304b503          	ld	a0,48(s1)
    8000c90c:	00001097          	auipc	ra,0x1
    8000c910:	900080e7          	jalr	-1792(ra) # 8000d20c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    8000c914:	0284b503          	ld	a0,40(s1)
    8000c918:	00001097          	auipc	ra,0x1
    8000c91c:	8f4080e7          	jalr	-1804(ra) # 8000d20c <_ZN9Semaphore6signalEv>

    return ret;
}
    8000c920:	00090513          	mv	a0,s2
    8000c924:	01813083          	ld	ra,24(sp)
    8000c928:	01013403          	ld	s0,16(sp)
    8000c92c:	00813483          	ld	s1,8(sp)
    8000c930:	00013903          	ld	s2,0(sp)
    8000c934:	02010113          	addi	sp,sp,32
    8000c938:	00008067          	ret
        ret = cap - head + tail;
    8000c93c:	0004a703          	lw	a4,0(s1)
    8000c940:	4127093b          	subw	s2,a4,s2
    8000c944:	00f9093b          	addw	s2,s2,a5
    8000c948:	fc1ff06f          	j	8000c908 <_ZN9BufferCPP6getCntEv+0x44>

000000008000c94c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    8000c94c:	fe010113          	addi	sp,sp,-32
    8000c950:	00113c23          	sd	ra,24(sp)
    8000c954:	00813823          	sd	s0,16(sp)
    8000c958:	00913423          	sd	s1,8(sp)
    8000c95c:	02010413          	addi	s0,sp,32
    8000c960:	00050493          	mv	s1,a0
    Console::putc('\n');
    8000c964:	00a00513          	li	a0,10
    8000c968:	00001097          	auipc	ra,0x1
    8000c96c:	904080e7          	jalr	-1788(ra) # 8000d26c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    8000c970:	00001517          	auipc	a0,0x1
    8000c974:	69050513          	addi	a0,a0,1680 # 8000e000 <userDataStart>
    8000c978:	00000097          	auipc	ra,0x0
    8000c97c:	a20080e7          	jalr	-1504(ra) # 8000c398 <_Z11printStringPKc>
    while (getCnt()) {
    8000c980:	00048513          	mv	a0,s1
    8000c984:	00000097          	auipc	ra,0x0
    8000c988:	f40080e7          	jalr	-192(ra) # 8000c8c4 <_ZN9BufferCPP6getCntEv>
    8000c98c:	02050c63          	beqz	a0,8000c9c4 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    8000c990:	0084b783          	ld	a5,8(s1)
    8000c994:	0104a703          	lw	a4,16(s1)
    8000c998:	00271713          	slli	a4,a4,0x2
    8000c99c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    8000c9a0:	0007c503          	lbu	a0,0(a5)
    8000c9a4:	00001097          	auipc	ra,0x1
    8000c9a8:	8c8080e7          	jalr	-1848(ra) # 8000d26c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    8000c9ac:	0104a783          	lw	a5,16(s1)
    8000c9b0:	0017879b          	addiw	a5,a5,1
    8000c9b4:	0004a703          	lw	a4,0(s1)
    8000c9b8:	02e7e7bb          	remw	a5,a5,a4
    8000c9bc:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    8000c9c0:	fc1ff06f          	j	8000c980 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    8000c9c4:	02100513          	li	a0,33
    8000c9c8:	00001097          	auipc	ra,0x1
    8000c9cc:	8a4080e7          	jalr	-1884(ra) # 8000d26c <_ZN7Console4putcEc>
    Console::putc('\n');
    8000c9d0:	00a00513          	li	a0,10
    8000c9d4:	00001097          	auipc	ra,0x1
    8000c9d8:	898080e7          	jalr	-1896(ra) # 8000d26c <_ZN7Console4putcEc>
    mem_free(buffer);
    8000c9dc:	0084b503          	ld	a0,8(s1)
    8000c9e0:	fffff097          	auipc	ra,0xfffff
    8000c9e4:	670080e7          	jalr	1648(ra) # 8000c050 <_Z8mem_freePv>
    delete itemAvailable;
    8000c9e8:	0204b503          	ld	a0,32(s1)
    8000c9ec:	00050863          	beqz	a0,8000c9fc <_ZN9BufferCPPD1Ev+0xb0>
    8000c9f0:	00053783          	ld	a5,0(a0)
    8000c9f4:	0087b783          	ld	a5,8(a5)
    8000c9f8:	000780e7          	jalr	a5
    delete spaceAvailable;
    8000c9fc:	0184b503          	ld	a0,24(s1)
    8000ca00:	00050863          	beqz	a0,8000ca10 <_ZN9BufferCPPD1Ev+0xc4>
    8000ca04:	00053783          	ld	a5,0(a0)
    8000ca08:	0087b783          	ld	a5,8(a5)
    8000ca0c:	000780e7          	jalr	a5
    delete mutexTail;
    8000ca10:	0304b503          	ld	a0,48(s1)
    8000ca14:	00050863          	beqz	a0,8000ca24 <_ZN9BufferCPPD1Ev+0xd8>
    8000ca18:	00053783          	ld	a5,0(a0)
    8000ca1c:	0087b783          	ld	a5,8(a5)
    8000ca20:	000780e7          	jalr	a5
    delete mutexHead;
    8000ca24:	0284b503          	ld	a0,40(s1)
    8000ca28:	00050863          	beqz	a0,8000ca38 <_ZN9BufferCPPD1Ev+0xec>
    8000ca2c:	00053783          	ld	a5,0(a0)
    8000ca30:	0087b783          	ld	a5,8(a5)
    8000ca34:	000780e7          	jalr	a5
}
    8000ca38:	01813083          	ld	ra,24(sp)
    8000ca3c:	01013403          	ld	s0,16(sp)
    8000ca40:	00813483          	ld	s1,8(sp)
    8000ca44:	02010113          	addi	sp,sp,32
    8000ca48:	00008067          	ret

000000008000ca4c <_Z9sleepyRunPv>:
#include "../../../h/syscall_c_kernel.hpp"
#include "printing.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    8000ca4c:	fe010113          	addi	sp,sp,-32
    8000ca50:	00113c23          	sd	ra,24(sp)
    8000ca54:	00813823          	sd	s0,16(sp)
    8000ca58:	00913423          	sd	s1,8(sp)
    8000ca5c:	01213023          	sd	s2,0(sp)
    8000ca60:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    8000ca64:	00053903          	ld	s2,0(a0)
    int i = 6;
    8000ca68:	00600493          	li	s1,6
    while (--i > 0) {
    8000ca6c:	fff4849b          	addiw	s1,s1,-1
    8000ca70:	04905463          	blez	s1,8000cab8 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    8000ca74:	00001517          	auipc	a0,0x1
    8000ca78:	5a450513          	addi	a0,a0,1444 # 8000e018 <userDataStart+0x18>
    8000ca7c:	00000097          	auipc	ra,0x0
    8000ca80:	91c080e7          	jalr	-1764(ra) # 8000c398 <_Z11printStringPKc>
        printInt(sleep_time);
    8000ca84:	00000613          	li	a2,0
    8000ca88:	00a00593          	li	a1,10
    8000ca8c:	0009051b          	sext.w	a0,s2
    8000ca90:	00000097          	auipc	ra,0x0
    8000ca94:	aa0080e7          	jalr	-1376(ra) # 8000c530 <_Z8printIntiii>
        printString(" !\n");
    8000ca98:	00001517          	auipc	a0,0x1
    8000ca9c:	58850513          	addi	a0,a0,1416 # 8000e020 <userDataStart+0x20>
    8000caa0:	00000097          	auipc	ra,0x0
    8000caa4:	8f8080e7          	jalr	-1800(ra) # 8000c398 <_Z11printStringPKc>
        time_sleep(sleep_time);
    8000caa8:	00090513          	mv	a0,s2
    8000caac:	fffff097          	auipc	ra,0xfffff
    8000cab0:	764080e7          	jalr	1892(ra) # 8000c210 <_Z10time_sleepm>
    while (--i > 0) {
    8000cab4:	fb9ff06f          	j	8000ca6c <_Z9sleepyRunPv+0x20>
//        {
//            thread_dispatch_kernel();
//            *((size_t*)HEAP_START_ADDR) = 4;
//        }
    }
    finished[sleep_time/10-1] = true;
    8000cab8:	00a00793          	li	a5,10
    8000cabc:	02f95933          	divu	s2,s2,a5
    8000cac0:	fff90913          	addi	s2,s2,-1
    8000cac4:	00001797          	auipc	a5,0x1
    8000cac8:	5fc78793          	addi	a5,a5,1532 # 8000e0c0 <finished>
    8000cacc:	01278933          	add	s2,a5,s2
    8000cad0:	00100793          	li	a5,1
    8000cad4:	00f90023          	sb	a5,0(s2)
}
    8000cad8:	01813083          	ld	ra,24(sp)
    8000cadc:	01013403          	ld	s0,16(sp)
    8000cae0:	00813483          	ld	s1,8(sp)
    8000cae4:	00013903          	ld	s2,0(sp)
    8000cae8:	02010113          	addi	sp,sp,32
    8000caec:	00008067          	ret

000000008000caf0 <_Z12testSleepingv>:

void testSleeping() {
    8000caf0:	fc010113          	addi	sp,sp,-64
    8000caf4:	02113c23          	sd	ra,56(sp)
    8000caf8:	02813823          	sd	s0,48(sp)
    8000cafc:	02913423          	sd	s1,40(sp)
    8000cb00:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    8000cb04:	00a00793          	li	a5,10
    8000cb08:	fcf43823          	sd	a5,-48(s0)
    8000cb0c:	01400793          	li	a5,20
    8000cb10:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    8000cb14:	00000493          	li	s1,0
    8000cb18:	02c0006f          	j	8000cb44 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    8000cb1c:	00349793          	slli	a5,s1,0x3
    8000cb20:	fd040613          	addi	a2,s0,-48
    8000cb24:	00f60633          	add	a2,a2,a5
    8000cb28:	00000597          	auipc	a1,0x0
    8000cb2c:	f2458593          	addi	a1,a1,-220 # 8000ca4c <_Z9sleepyRunPv>
    8000cb30:	fc040513          	addi	a0,s0,-64
    8000cb34:	00f50533          	add	a0,a0,a5
    8000cb38:	fffff097          	auipc	ra,0xfffff
    8000cb3c:	544080e7          	jalr	1348(ra) # 8000c07c <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    8000cb40:	0014849b          	addiw	s1,s1,1
    8000cb44:	00100793          	li	a5,1
    8000cb48:	fc97dae3          	bge	a5,s1,8000cb1c <_Z12testSleepingv+0x2c>
    }

//    int count = 0;
    while (!(finished[0] && finished[1])) {
    8000cb4c:	00001797          	auipc	a5,0x1
    8000cb50:	5747c783          	lbu	a5,1396(a5) # 8000e0c0 <finished>
    8000cb54:	fe078ce3          	beqz	a5,8000cb4c <_Z12testSleepingv+0x5c>
    8000cb58:	00001797          	auipc	a5,0x1
    8000cb5c:	5697c783          	lbu	a5,1385(a5) # 8000e0c1 <finished+0x1>
    8000cb60:	fe0786e3          	beqz	a5,8000cb4c <_Z12testSleepingv+0x5c>
//        if(count == 2000*2000)
//            finished[0] = true;
//        else
//            thread_dispatch();
    }
}
    8000cb64:	03813083          	ld	ra,56(sp)
    8000cb68:	03013403          	ld	s0,48(sp)
    8000cb6c:	02813483          	ld	s1,40(sp)
    8000cb70:	04010113          	addi	sp,sp,64
    8000cb74:	00008067          	ret

000000008000cb78 <_Z8userMainv>:
//#include "ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

//#include "test1OS2.hpp"

void userMain()
{
    8000cb78:	ff010113          	addi	sp,sp,-16
    8000cb7c:	00113423          	sd	ra,8(sp)
    8000cb80:	00813023          	sd	s0,0(sp)
    8000cb84:	01010413          	addi	s0,sp,16
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    testSleeping(); // thread_sleep test C API
    8000cb88:	00000097          	auipc	ra,0x0
    8000cb8c:	f68080e7          	jalr	-152(ra) # 8000caf0 <_Z12testSleepingv>
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    //userMainTest();
    8000cb90:	00813083          	ld	ra,8(sp)
    8000cb94:	00013403          	ld	s0,0(sp)
    8000cb98:	01010113          	addi	sp,sp,16
    8000cb9c:	00008067          	ret

000000008000cba0 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000cba0:	fe010113          	addi	sp,sp,-32
    8000cba4:	00113c23          	sd	ra,24(sp)
    8000cba8:	00813823          	sd	s0,16(sp)
    8000cbac:	00913423          	sd	s1,8(sp)
    8000cbb0:	01213023          	sd	s2,0(sp)
    8000cbb4:	02010413          	addi	s0,sp,32
    8000cbb8:	00050493          	mv	s1,a0
    8000cbbc:	00058913          	mv	s2,a1
    8000cbc0:	0015879b          	addiw	a5,a1,1
    8000cbc4:	0007851b          	sext.w	a0,a5
    8000cbc8:	00f4a023          	sw	a5,0(s1)
    8000cbcc:	0004a823          	sw	zero,16(s1)
    8000cbd0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000cbd4:	00251513          	slli	a0,a0,0x2
    8000cbd8:	fffff097          	auipc	ra,0xfffff
    8000cbdc:	448080e7          	jalr	1096(ra) # 8000c020 <_Z9mem_allocm>
    8000cbe0:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    8000cbe4:	00000593          	li	a1,0
    8000cbe8:	02048513          	addi	a0,s1,32
    8000cbec:	fffff097          	auipc	ra,0xfffff
    8000cbf0:	568080e7          	jalr	1384(ra) # 8000c154 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    8000cbf4:	00090593          	mv	a1,s2
    8000cbf8:	01848513          	addi	a0,s1,24
    8000cbfc:	fffff097          	auipc	ra,0xfffff
    8000cc00:	558080e7          	jalr	1368(ra) # 8000c154 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    8000cc04:	00100593          	li	a1,1
    8000cc08:	02848513          	addi	a0,s1,40
    8000cc0c:	fffff097          	auipc	ra,0xfffff
    8000cc10:	548080e7          	jalr	1352(ra) # 8000c154 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    8000cc14:	00100593          	li	a1,1
    8000cc18:	03048513          	addi	a0,s1,48
    8000cc1c:	fffff097          	auipc	ra,0xfffff
    8000cc20:	538080e7          	jalr	1336(ra) # 8000c154 <_Z8sem_openPP4_semj>
}
    8000cc24:	01813083          	ld	ra,24(sp)
    8000cc28:	01013403          	ld	s0,16(sp)
    8000cc2c:	00813483          	ld	s1,8(sp)
    8000cc30:	00013903          	ld	s2,0(sp)
    8000cc34:	02010113          	addi	sp,sp,32
    8000cc38:	00008067          	ret

000000008000cc3c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    8000cc3c:	fe010113          	addi	sp,sp,-32
    8000cc40:	00113c23          	sd	ra,24(sp)
    8000cc44:	00813823          	sd	s0,16(sp)
    8000cc48:	00913423          	sd	s1,8(sp)
    8000cc4c:	01213023          	sd	s2,0(sp)
    8000cc50:	02010413          	addi	s0,sp,32
    8000cc54:	00050493          	mv	s1,a0
    8000cc58:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    8000cc5c:	01853503          	ld	a0,24(a0)
    8000cc60:	fffff097          	auipc	ra,0xfffff
    8000cc64:	558080e7          	jalr	1368(ra) # 8000c1b8 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    8000cc68:	0304b503          	ld	a0,48(s1)
    8000cc6c:	fffff097          	auipc	ra,0xfffff
    8000cc70:	54c080e7          	jalr	1356(ra) # 8000c1b8 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    8000cc74:	0084b783          	ld	a5,8(s1)
    8000cc78:	0144a703          	lw	a4,20(s1)
    8000cc7c:	00271713          	slli	a4,a4,0x2
    8000cc80:	00e787b3          	add	a5,a5,a4
    8000cc84:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000cc88:	0144a783          	lw	a5,20(s1)
    8000cc8c:	0017879b          	addiw	a5,a5,1
    8000cc90:	0004a703          	lw	a4,0(s1)
    8000cc94:	02e7e7bb          	remw	a5,a5,a4
    8000cc98:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    8000cc9c:	0304b503          	ld	a0,48(s1)
    8000cca0:	fffff097          	auipc	ra,0xfffff
    8000cca4:	544080e7          	jalr	1348(ra) # 8000c1e4 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    8000cca8:	0204b503          	ld	a0,32(s1)
    8000ccac:	fffff097          	auipc	ra,0xfffff
    8000ccb0:	538080e7          	jalr	1336(ra) # 8000c1e4 <_Z10sem_signalP4_sem>

}
    8000ccb4:	01813083          	ld	ra,24(sp)
    8000ccb8:	01013403          	ld	s0,16(sp)
    8000ccbc:	00813483          	ld	s1,8(sp)
    8000ccc0:	00013903          	ld	s2,0(sp)
    8000ccc4:	02010113          	addi	sp,sp,32
    8000ccc8:	00008067          	ret

000000008000cccc <_ZN6Buffer3getEv>:

int Buffer::get() {
    8000cccc:	fe010113          	addi	sp,sp,-32
    8000ccd0:	00113c23          	sd	ra,24(sp)
    8000ccd4:	00813823          	sd	s0,16(sp)
    8000ccd8:	00913423          	sd	s1,8(sp)
    8000ccdc:	01213023          	sd	s2,0(sp)
    8000cce0:	02010413          	addi	s0,sp,32
    8000cce4:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000cce8:	02053503          	ld	a0,32(a0)
    8000ccec:	fffff097          	auipc	ra,0xfffff
    8000ccf0:	4cc080e7          	jalr	1228(ra) # 8000c1b8 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    8000ccf4:	0284b503          	ld	a0,40(s1)
    8000ccf8:	fffff097          	auipc	ra,0xfffff
    8000ccfc:	4c0080e7          	jalr	1216(ra) # 8000c1b8 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    8000cd00:	0084b703          	ld	a4,8(s1)
    8000cd04:	0104a783          	lw	a5,16(s1)
    8000cd08:	00279693          	slli	a3,a5,0x2
    8000cd0c:	00d70733          	add	a4,a4,a3
    8000cd10:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000cd14:	0017879b          	addiw	a5,a5,1
    8000cd18:	0004a703          	lw	a4,0(s1)
    8000cd1c:	02e7e7bb          	remw	a5,a5,a4
    8000cd20:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    8000cd24:	0284b503          	ld	a0,40(s1)
    8000cd28:	fffff097          	auipc	ra,0xfffff
    8000cd2c:	4bc080e7          	jalr	1212(ra) # 8000c1e4 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    8000cd30:	0184b503          	ld	a0,24(s1)
    8000cd34:	fffff097          	auipc	ra,0xfffff
    8000cd38:	4b0080e7          	jalr	1200(ra) # 8000c1e4 <_Z10sem_signalP4_sem>

    return ret;
}
    8000cd3c:	00090513          	mv	a0,s2
    8000cd40:	01813083          	ld	ra,24(sp)
    8000cd44:	01013403          	ld	s0,16(sp)
    8000cd48:	00813483          	ld	s1,8(sp)
    8000cd4c:	00013903          	ld	s2,0(sp)
    8000cd50:	02010113          	addi	sp,sp,32
    8000cd54:	00008067          	ret

000000008000cd58 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    8000cd58:	fe010113          	addi	sp,sp,-32
    8000cd5c:	00113c23          	sd	ra,24(sp)
    8000cd60:	00813823          	sd	s0,16(sp)
    8000cd64:	00913423          	sd	s1,8(sp)
    8000cd68:	01213023          	sd	s2,0(sp)
    8000cd6c:	02010413          	addi	s0,sp,32
    8000cd70:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    8000cd74:	02853503          	ld	a0,40(a0)
    8000cd78:	fffff097          	auipc	ra,0xfffff
    8000cd7c:	440080e7          	jalr	1088(ra) # 8000c1b8 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    8000cd80:	0304b503          	ld	a0,48(s1)
    8000cd84:	fffff097          	auipc	ra,0xfffff
    8000cd88:	434080e7          	jalr	1076(ra) # 8000c1b8 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    8000cd8c:	0144a783          	lw	a5,20(s1)
    8000cd90:	0104a903          	lw	s2,16(s1)
    8000cd94:	0327ce63          	blt	a5,s2,8000cdd0 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    8000cd98:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    8000cd9c:	0304b503          	ld	a0,48(s1)
    8000cda0:	fffff097          	auipc	ra,0xfffff
    8000cda4:	444080e7          	jalr	1092(ra) # 8000c1e4 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    8000cda8:	0284b503          	ld	a0,40(s1)
    8000cdac:	fffff097          	auipc	ra,0xfffff
    8000cdb0:	438080e7          	jalr	1080(ra) # 8000c1e4 <_Z10sem_signalP4_sem>

    return ret;
    8000cdb4:	00090513          	mv	a0,s2
    8000cdb8:	01813083          	ld	ra,24(sp)
    8000cdbc:	01013403          	ld	s0,16(sp)
    8000cdc0:	00813483          	ld	s1,8(sp)
    8000cdc4:	00013903          	ld	s2,0(sp)
    8000cdc8:	02010113          	addi	sp,sp,32
    8000cdcc:	00008067          	ret
        ret = cap - head + tail;
    8000cdd0:	0004a703          	lw	a4,0(s1)
    8000cdd4:	4127093b          	subw	s2,a4,s2
    8000cdd8:	00f9093b          	addw	s2,s2,a5
    8000cddc:	fc1ff06f          	j	8000cd9c <_ZN6Buffer6getCntEv+0x44>

000000008000cde0 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    8000cde0:	fe010113          	addi	sp,sp,-32
    8000cde4:	00113c23          	sd	ra,24(sp)
    8000cde8:	00813823          	sd	s0,16(sp)
    8000cdec:	00913423          	sd	s1,8(sp)
    8000cdf0:	02010413          	addi	s0,sp,32
    8000cdf4:	00050493          	mv	s1,a0
    putc('\n');
    8000cdf8:	00a00513          	li	a0,10
    8000cdfc:	fffff097          	auipc	ra,0xfffff
    8000ce00:	524080e7          	jalr	1316(ra) # 8000c320 <_Z4putcc>
    printString("Buffer deleted!\n");
    8000ce04:	00001517          	auipc	a0,0x1
    8000ce08:	1fc50513          	addi	a0,a0,508 # 8000e000 <userDataStart>
    8000ce0c:	fffff097          	auipc	ra,0xfffff
    8000ce10:	58c080e7          	jalr	1420(ra) # 8000c398 <_Z11printStringPKc>
    while (getCnt() > 0) {
    8000ce14:	00048513          	mv	a0,s1
    8000ce18:	00000097          	auipc	ra,0x0
    8000ce1c:	f40080e7          	jalr	-192(ra) # 8000cd58 <_ZN6Buffer6getCntEv>
    8000ce20:	02a05c63          	blez	a0,8000ce58 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    8000ce24:	0084b783          	ld	a5,8(s1)
    8000ce28:	0104a703          	lw	a4,16(s1)
    8000ce2c:	00271713          	slli	a4,a4,0x2
    8000ce30:	00e787b3          	add	a5,a5,a4
        putc(ch);
    8000ce34:	0007c503          	lbu	a0,0(a5)
    8000ce38:	fffff097          	auipc	ra,0xfffff
    8000ce3c:	4e8080e7          	jalr	1256(ra) # 8000c320 <_Z4putcc>
        head = (head + 1) % cap;
    8000ce40:	0104a783          	lw	a5,16(s1)
    8000ce44:	0017879b          	addiw	a5,a5,1
    8000ce48:	0004a703          	lw	a4,0(s1)
    8000ce4c:	02e7e7bb          	remw	a5,a5,a4
    8000ce50:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    8000ce54:	fc1ff06f          	j	8000ce14 <_ZN6BufferD1Ev+0x34>
    putc('!');
    8000ce58:	02100513          	li	a0,33
    8000ce5c:	fffff097          	auipc	ra,0xfffff
    8000ce60:	4c4080e7          	jalr	1220(ra) # 8000c320 <_Z4putcc>
    putc('\n');
    8000ce64:	00a00513          	li	a0,10
    8000ce68:	fffff097          	auipc	ra,0xfffff
    8000ce6c:	4b8080e7          	jalr	1208(ra) # 8000c320 <_Z4putcc>
    mem_free(buffer);
    8000ce70:	0084b503          	ld	a0,8(s1)
    8000ce74:	fffff097          	auipc	ra,0xfffff
    8000ce78:	1dc080e7          	jalr	476(ra) # 8000c050 <_Z8mem_freePv>
    sem_close(itemAvailable);
    8000ce7c:	0204b503          	ld	a0,32(s1)
    8000ce80:	fffff097          	auipc	ra,0xfffff
    8000ce84:	30c080e7          	jalr	780(ra) # 8000c18c <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    8000ce88:	0184b503          	ld	a0,24(s1)
    8000ce8c:	fffff097          	auipc	ra,0xfffff
    8000ce90:	300080e7          	jalr	768(ra) # 8000c18c <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    8000ce94:	0304b503          	ld	a0,48(s1)
    8000ce98:	fffff097          	auipc	ra,0xfffff
    8000ce9c:	2f4080e7          	jalr	756(ra) # 8000c18c <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    8000cea0:	0284b503          	ld	a0,40(s1)
    8000cea4:	fffff097          	auipc	ra,0xfffff
    8000cea8:	2e8080e7          	jalr	744(ra) # 8000c18c <_Z9sem_closeP4_sem>
}
    8000ceac:	01813083          	ld	ra,24(sp)
    8000ceb0:	01013403          	ld	s0,16(sp)
    8000ceb4:	00813483          	ld	s1,8(sp)
    8000ceb8:	02010113          	addi	sp,sp,32
    8000cebc:	00008067          	ret

000000008000cec0 <_ZN6Thread6runnerEPv>:
    myHandle = nullptr;
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    8000cec0:	ff010113          	addi	sp,sp,-16
    8000cec4:	00113423          	sd	ra,8(sp)
    8000cec8:	00813023          	sd	s0,0(sp)
    8000cecc:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    8000ced0:	00053783          	ld	a5,0(a0)
    8000ced4:	0107b783          	ld	a5,16(a5)
    8000ced8:	000780e7          	jalr	a5
}
    8000cedc:	00813083          	ld	ra,8(sp)
    8000cee0:	00013403          	ld	s0,0(sp)
    8000cee4:	01010113          	addi	sp,sp,16
    8000cee8:	00008067          	ret

000000008000ceec <_ZN6ThreadD1Ev>:

Thread::~Thread()
    8000ceec:	00001797          	auipc	a5,0x1
    8000cef0:	19478793          	addi	a5,a5,404 # 8000e080 <_ZTV6Thread+0x10>
    8000cef4:	00f53023          	sd	a5,0(a0)
{
    delete myHandle;
    8000cef8:	00853503          	ld	a0,8(a0)
    8000cefc:	02050663          	beqz	a0,8000cf28 <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread()
    8000cf00:	ff010113          	addi	sp,sp,-16
    8000cf04:	00113423          	sd	ra,8(sp)
    8000cf08:	00813023          	sd	s0,0(sp)
    8000cf0c:	01010413          	addi	s0,sp,16
    delete myHandle;
    8000cf10:	fffff097          	auipc	ra,0xfffff
    8000cf14:	460080e7          	jalr	1120(ra) # 8000c370 <_ZN7_threaddlEPv>
}
    8000cf18:	00813083          	ld	ra,8(sp)
    8000cf1c:	00013403          	ld	s0,0(sp)
    8000cf20:	01010113          	addi	sp,sp,16
    8000cf24:	00008067          	ret
    8000cf28:	00008067          	ret

000000008000cf2c <_ZN9SemaphoreD1Ev>:
    if(myHandle == nullptr)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    8000cf2c:	00001797          	auipc	a5,0x1
    8000cf30:	17c78793          	addi	a5,a5,380 # 8000e0a8 <_ZTV9Semaphore+0x10>
    8000cf34:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    8000cf38:	00853503          	ld	a0,8(a0)
    8000cf3c:	02050663          	beqz	a0,8000cf68 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    8000cf40:	ff010113          	addi	sp,sp,-16
    8000cf44:	00113423          	sd	ra,8(sp)
    8000cf48:	00813023          	sd	s0,0(sp)
    8000cf4c:	01010413          	addi	s0,sp,16
    delete myHandle;
    8000cf50:	00000097          	auipc	ra,0x0
    8000cf54:	4c4080e7          	jalr	1220(ra) # 8000d414 <_ZN4_semdlEPv>
}
    8000cf58:	00813083          	ld	ra,8(sp)
    8000cf5c:	00013403          	ld	s0,0(sp)
    8000cf60:	01010113          	addi	sp,sp,16
    8000cf64:	00008067          	ret
    8000cf68:	00008067          	ret

000000008000cf6c <_Znwm>:
{
    8000cf6c:	ff010113          	addi	sp,sp,-16
    8000cf70:	00113423          	sd	ra,8(sp)
    8000cf74:	00813023          	sd	s0,0(sp)
    8000cf78:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    8000cf7c:	fffff097          	auipc	ra,0xfffff
    8000cf80:	0a4080e7          	jalr	164(ra) # 8000c020 <_Z9mem_allocm>
}
    8000cf84:	00813083          	ld	ra,8(sp)
    8000cf88:	00013403          	ld	s0,0(sp)
    8000cf8c:	01010113          	addi	sp,sp,16
    8000cf90:	00008067          	ret

000000008000cf94 <_ZdlPv>:
{
    8000cf94:	ff010113          	addi	sp,sp,-16
    8000cf98:	00113423          	sd	ra,8(sp)
    8000cf9c:	00813023          	sd	s0,0(sp)
    8000cfa0:	01010413          	addi	s0,sp,16
    mem_free(p);
    8000cfa4:	fffff097          	auipc	ra,0xfffff
    8000cfa8:	0ac080e7          	jalr	172(ra) # 8000c050 <_Z8mem_freePv>
}
    8000cfac:	00813083          	ld	ra,8(sp)
    8000cfb0:	00013403          	ld	s0,0(sp)
    8000cfb4:	01010113          	addi	sp,sp,16
    8000cfb8:	00008067          	ret

000000008000cfbc <_ZN6ThreadD0Ev>:
Thread::~Thread()
    8000cfbc:	fe010113          	addi	sp,sp,-32
    8000cfc0:	00113c23          	sd	ra,24(sp)
    8000cfc4:	00813823          	sd	s0,16(sp)
    8000cfc8:	00913423          	sd	s1,8(sp)
    8000cfcc:	02010413          	addi	s0,sp,32
    8000cfd0:	00050493          	mv	s1,a0
}
    8000cfd4:	00000097          	auipc	ra,0x0
    8000cfd8:	f18080e7          	jalr	-232(ra) # 8000ceec <_ZN6ThreadD1Ev>
    8000cfdc:	00048513          	mv	a0,s1
    8000cfe0:	00000097          	auipc	ra,0x0
    8000cfe4:	fb4080e7          	jalr	-76(ra) # 8000cf94 <_ZdlPv>
    8000cfe8:	01813083          	ld	ra,24(sp)
    8000cfec:	01013403          	ld	s0,16(sp)
    8000cff0:	00813483          	ld	s1,8(sp)
    8000cff4:	02010113          	addi	sp,sp,32
    8000cff8:	00008067          	ret

000000008000cffc <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    8000cffc:	fe010113          	addi	sp,sp,-32
    8000d000:	00113c23          	sd	ra,24(sp)
    8000d004:	00813823          	sd	s0,16(sp)
    8000d008:	00913423          	sd	s1,8(sp)
    8000d00c:	02010413          	addi	s0,sp,32
    8000d010:	00050493          	mv	s1,a0
}
    8000d014:	00000097          	auipc	ra,0x0
    8000d018:	f18080e7          	jalr	-232(ra) # 8000cf2c <_ZN9SemaphoreD1Ev>
    8000d01c:	00048513          	mv	a0,s1
    8000d020:	00000097          	auipc	ra,0x0
    8000d024:	f74080e7          	jalr	-140(ra) # 8000cf94 <_ZdlPv>
    8000d028:	01813083          	ld	ra,24(sp)
    8000d02c:	01013403          	ld	s0,16(sp)
    8000d030:	00813483          	ld	s1,8(sp)
    8000d034:	02010113          	addi	sp,sp,32
    8000d038:	00008067          	ret

000000008000d03c <_ZN6Thread5startEv>:
    if(myHandle != nullptr)
    8000d03c:	00853503          	ld	a0,8(a0)
    8000d040:	02050663          	beqz	a0,8000d06c <_ZN6Thread5startEv+0x30>
{
    8000d044:	ff010113          	addi	sp,sp,-16
    8000d048:	00113423          	sd	ra,8(sp)
    8000d04c:	00813023          	sd	s0,0(sp)
    8000d050:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    8000d054:	fffff097          	auipc	ra,0xfffff
    8000d058:	1e8080e7          	jalr	488(ra) # 8000c23c <_Z12thread_startPv>
}
    8000d05c:	00813083          	ld	ra,8(sp)
    8000d060:	00013403          	ld	s0,0(sp)
    8000d064:	01010113          	addi	sp,sp,16
    8000d068:	00008067          	ret
        return -1;
    8000d06c:	fff00513          	li	a0,-1
}
    8000d070:	00008067          	ret

000000008000d074 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    8000d074:	ff010113          	addi	sp,sp,-16
    8000d078:	00113423          	sd	ra,8(sp)
    8000d07c:	00813023          	sd	s0,0(sp)
    8000d080:	01010413          	addi	s0,sp,16
    thread_dispatch();
    8000d084:	fffff097          	auipc	ra,0xfffff
    8000d088:	088080e7          	jalr	136(ra) # 8000c10c <_Z15thread_dispatchv>
}
    8000d08c:	00813083          	ld	ra,8(sp)
    8000d090:	00013403          	ld	s0,0(sp)
    8000d094:	01010113          	addi	sp,sp,16
    8000d098:	00008067          	ret

000000008000d09c <_ZN6Thread5sleepEm>:
{
    8000d09c:	ff010113          	addi	sp,sp,-16
    8000d0a0:	00113423          	sd	ra,8(sp)
    8000d0a4:	00813023          	sd	s0,0(sp)
    8000d0a8:	01010413          	addi	s0,sp,16
    time_sleep(time);
    8000d0ac:	fffff097          	auipc	ra,0xfffff
    8000d0b0:	164080e7          	jalr	356(ra) # 8000c210 <_Z10time_sleepm>
}
    8000d0b4:	00813083          	ld	ra,8(sp)
    8000d0b8:	00013403          	ld	s0,0(sp)
    8000d0bc:	01010113          	addi	sp,sp,16
    8000d0c0:	00008067          	ret

000000008000d0c4 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    8000d0c4:	fe010113          	addi	sp,sp,-32
    8000d0c8:	00113c23          	sd	ra,24(sp)
    8000d0cc:	00813823          	sd	s0,16(sp)
    8000d0d0:	00913423          	sd	s1,8(sp)
    8000d0d4:	01213023          	sd	s2,0(sp)
    8000d0d8:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    8000d0dc:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    8000d0e0:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    8000d0e4:	0004b783          	ld	a5,0(s1)
    8000d0e8:	0187b783          	ld	a5,24(a5)
    8000d0ec:	00048513          	mv	a0,s1
    8000d0f0:	000780e7          	jalr	a5
        Thread::sleep(time);
    8000d0f4:	00090513          	mv	a0,s2
    8000d0f8:	00000097          	auipc	ra,0x0
    8000d0fc:	fa4080e7          	jalr	-92(ra) # 8000d09c <_ZN6Thread5sleepEm>
    while(true)
    8000d100:	fe5ff06f          	j	8000d0e4 <_ZN14PeriodicThread6runnerEPv+0x20>

000000008000d104 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    8000d104:	ff010113          	addi	sp,sp,-16
    8000d108:	00113423          	sd	ra,8(sp)
    8000d10c:	00813023          	sd	s0,0(sp)
    8000d110:	01010413          	addi	s0,sp,16
    8000d114:	00001797          	auipc	a5,0x1
    8000d118:	f6c78793          	addi	a5,a5,-148 # 8000e080 <_ZTV6Thread+0x10>
    8000d11c:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    8000d120:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, body, args);
    8000d124:	00850513          	addi	a0,a0,8
    8000d128:	fffff097          	auipc	ra,0xfffff
    8000d12c:	140080e7          	jalr	320(ra) # 8000c268 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    8000d130:	00813083          	ld	ra,8(sp)
    8000d134:	00013403          	ld	s0,0(sp)
    8000d138:	01010113          	addi	sp,sp,16
    8000d13c:	00008067          	ret

000000008000d140 <_ZN6ThreadC1Ev>:
Thread::Thread()
    8000d140:	ff010113          	addi	sp,sp,-16
    8000d144:	00113423          	sd	ra,8(sp)
    8000d148:	00813023          	sd	s0,0(sp)
    8000d14c:	01010413          	addi	s0,sp,16
    8000d150:	00001797          	auipc	a5,0x1
    8000d154:	f3078793          	addi	a5,a5,-208 # 8000e080 <_ZTV6Thread+0x10>
    8000d158:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    8000d15c:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    8000d160:	00050613          	mv	a2,a0
    8000d164:	00000597          	auipc	a1,0x0
    8000d168:	d5c58593          	addi	a1,a1,-676 # 8000cec0 <_ZN6Thread6runnerEPv>
    8000d16c:	00850513          	addi	a0,a0,8
    8000d170:	fffff097          	auipc	ra,0xfffff
    8000d174:	0f8080e7          	jalr	248(ra) # 8000c268 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    8000d178:	00813083          	ld	ra,8(sp)
    8000d17c:	00013403          	ld	s0,0(sp)
    8000d180:	01010113          	addi	sp,sp,16
    8000d184:	00008067          	ret

000000008000d188 <_ZN9Semaphore4waitEv>:
    if(myHandle == nullptr)
    8000d188:	00853503          	ld	a0,8(a0)
    8000d18c:	02050663          	beqz	a0,8000d1b8 <_ZN9Semaphore4waitEv+0x30>
{
    8000d190:	ff010113          	addi	sp,sp,-16
    8000d194:	00113423          	sd	ra,8(sp)
    8000d198:	00813023          	sd	s0,0(sp)
    8000d19c:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    8000d1a0:	fffff097          	auipc	ra,0xfffff
    8000d1a4:	018080e7          	jalr	24(ra) # 8000c1b8 <_Z8sem_waitP4_sem>
}
    8000d1a8:	00813083          	ld	ra,8(sp)
    8000d1ac:	00013403          	ld	s0,0(sp)
    8000d1b0:	01010113          	addi	sp,sp,16
    8000d1b4:	00008067          	ret
        return -1;
    8000d1b8:	fff00513          	li	a0,-1
}
    8000d1bc:	00008067          	ret

000000008000d1c0 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    8000d1c0:	fe010113          	addi	sp,sp,-32
    8000d1c4:	00113c23          	sd	ra,24(sp)
    8000d1c8:	00813823          	sd	s0,16(sp)
    8000d1cc:	00913423          	sd	s1,8(sp)
    8000d1d0:	02010413          	addi	s0,sp,32
    8000d1d4:	00050493          	mv	s1,a0
    8000d1d8:	00001797          	auipc	a5,0x1
    8000d1dc:	ed078793          	addi	a5,a5,-304 # 8000e0a8 <_ZTV9Semaphore+0x10>
    8000d1e0:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    8000d1e4:	00850513          	addi	a0,a0,8
    8000d1e8:	fffff097          	auipc	ra,0xfffff
    8000d1ec:	f6c080e7          	jalr	-148(ra) # 8000c154 <_Z8sem_openPP4_semj>
    if(retval != 0)
    8000d1f0:	00050463          	beqz	a0,8000d1f8 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = nullptr;
    8000d1f4:	0004b423          	sd	zero,8(s1)
}
    8000d1f8:	01813083          	ld	ra,24(sp)
    8000d1fc:	01013403          	ld	s0,16(sp)
    8000d200:	00813483          	ld	s1,8(sp)
    8000d204:	02010113          	addi	sp,sp,32
    8000d208:	00008067          	ret

000000008000d20c <_ZN9Semaphore6signalEv>:
    if(myHandle == nullptr)
    8000d20c:	00853503          	ld	a0,8(a0)
    8000d210:	02050663          	beqz	a0,8000d23c <_ZN9Semaphore6signalEv+0x30>
{
    8000d214:	ff010113          	addi	sp,sp,-16
    8000d218:	00113423          	sd	ra,8(sp)
    8000d21c:	00813023          	sd	s0,0(sp)
    8000d220:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    8000d224:	fffff097          	auipc	ra,0xfffff
    8000d228:	fc0080e7          	jalr	-64(ra) # 8000c1e4 <_Z10sem_signalP4_sem>
}
    8000d22c:	00813083          	ld	ra,8(sp)
    8000d230:	00013403          	ld	s0,0(sp)
    8000d234:	01010113          	addi	sp,sp,16
    8000d238:	00008067          	ret
        return -1;
    8000d23c:	fff00513          	li	a0,-1
}
    8000d240:	00008067          	ret

000000008000d244 <_ZN7Console4getcEv>:
{
    8000d244:	ff010113          	addi	sp,sp,-16
    8000d248:	00113423          	sd	ra,8(sp)
    8000d24c:	00813023          	sd	s0,0(sp)
    8000d250:	01010413          	addi	s0,sp,16
    return ::getc();
    8000d254:	fffff097          	auipc	ra,0xfffff
    8000d258:	0a4080e7          	jalr	164(ra) # 8000c2f8 <_Z4getcv>
}
    8000d25c:	00813083          	ld	ra,8(sp)
    8000d260:	00013403          	ld	s0,0(sp)
    8000d264:	01010113          	addi	sp,sp,16
    8000d268:	00008067          	ret

000000008000d26c <_ZN7Console4putcEc>:
{
    8000d26c:	ff010113          	addi	sp,sp,-16
    8000d270:	00113423          	sd	ra,8(sp)
    8000d274:	00813023          	sd	s0,0(sp)
    8000d278:	01010413          	addi	s0,sp,16
    return ::putc(c);
    8000d27c:	fffff097          	auipc	ra,0xfffff
    8000d280:	0a4080e7          	jalr	164(ra) # 8000c320 <_Z4putcc>
}
    8000d284:	00813083          	ld	ra,8(sp)
    8000d288:	00013403          	ld	s0,0(sp)
    8000d28c:	01010113          	addi	sp,sp,16
    8000d290:	00008067          	ret

000000008000d294 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    8000d294:	fe010113          	addi	sp,sp,-32
    8000d298:	00113c23          	sd	ra,24(sp)
    8000d29c:	00813823          	sd	s0,16(sp)
    8000d2a0:	00913423          	sd	s1,8(sp)
    8000d2a4:	01213023          	sd	s2,0(sp)
    8000d2a8:	02010413          	addi	s0,sp,32
    8000d2ac:	00050493          	mv	s1,a0
    8000d2b0:	00058913          	mv	s2,a1
    8000d2b4:	01000513          	li	a0,16
    8000d2b8:	00000097          	auipc	ra,0x0
    8000d2bc:	cb4080e7          	jalr	-844(ra) # 8000cf6c <_Znwm>
    8000d2c0:	00050613          	mv	a2,a0
    8000d2c4:	00050663          	beqz	a0,8000d2d0 <_ZN14PeriodicThreadC1Em+0x3c>
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    8000d2c8:	00953023          	sd	s1,0(a0)
    8000d2cc:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    8000d2d0:	00000597          	auipc	a1,0x0
    8000d2d4:	df458593          	addi	a1,a1,-524 # 8000d0c4 <_ZN14PeriodicThread6runnerEPv>
    8000d2d8:	00048513          	mv	a0,s1
    8000d2dc:	00000097          	auipc	ra,0x0
    8000d2e0:	e28080e7          	jalr	-472(ra) # 8000d104 <_ZN6ThreadC1EPFvPvES0_>
    8000d2e4:	00001797          	auipc	a5,0x1
    8000d2e8:	d6c78793          	addi	a5,a5,-660 # 8000e050 <_ZTV14PeriodicThread+0x10>
    8000d2ec:	00f4b023          	sd	a5,0(s1)
}
    8000d2f0:	01813083          	ld	ra,24(sp)
    8000d2f4:	01013403          	ld	s0,16(sp)
    8000d2f8:	00813483          	ld	s1,8(sp)
    8000d2fc:	00013903          	ld	s2,0(sp)
    8000d300:	02010113          	addi	sp,sp,32
    8000d304:	00008067          	ret

000000008000d308 <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    8000d308:	ff010113          	addi	sp,sp,-16
    8000d30c:	00813423          	sd	s0,8(sp)
    8000d310:	01010413          	addi	s0,sp,16
    8000d314:	00813403          	ld	s0,8(sp)
    8000d318:	01010113          	addi	sp,sp,16
    8000d31c:	00008067          	ret

000000008000d320 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    8000d320:	ff010113          	addi	sp,sp,-16
    8000d324:	00813423          	sd	s0,8(sp)
    8000d328:	01010413          	addi	s0,sp,16
    8000d32c:	00813403          	ld	s0,8(sp)
    8000d330:	01010113          	addi	sp,sp,16
    8000d334:	00008067          	ret

000000008000d338 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    8000d338:	ff010113          	addi	sp,sp,-16
    8000d33c:	00113423          	sd	ra,8(sp)
    8000d340:	00813023          	sd	s0,0(sp)
    8000d344:	01010413          	addi	s0,sp,16
    8000d348:	00001797          	auipc	a5,0x1
    8000d34c:	d0878793          	addi	a5,a5,-760 # 8000e050 <_ZTV14PeriodicThread+0x10>
    8000d350:	00f53023          	sd	a5,0(a0)
    8000d354:	00000097          	auipc	ra,0x0
    8000d358:	b98080e7          	jalr	-1128(ra) # 8000ceec <_ZN6ThreadD1Ev>
    8000d35c:	00813083          	ld	ra,8(sp)
    8000d360:	00013403          	ld	s0,0(sp)
    8000d364:	01010113          	addi	sp,sp,16
    8000d368:	00008067          	ret

000000008000d36c <_ZN14PeriodicThreadD0Ev>:
    8000d36c:	fe010113          	addi	sp,sp,-32
    8000d370:	00113c23          	sd	ra,24(sp)
    8000d374:	00813823          	sd	s0,16(sp)
    8000d378:	00913423          	sd	s1,8(sp)
    8000d37c:	02010413          	addi	s0,sp,32
    8000d380:	00050493          	mv	s1,a0
    8000d384:	00001797          	auipc	a5,0x1
    8000d388:	ccc78793          	addi	a5,a5,-820 # 8000e050 <_ZTV14PeriodicThread+0x10>
    8000d38c:	00f53023          	sd	a5,0(a0)
    8000d390:	00000097          	auipc	ra,0x0
    8000d394:	b5c080e7          	jalr	-1188(ra) # 8000ceec <_ZN6ThreadD1Ev>
    8000d398:	00048513          	mv	a0,s1
    8000d39c:	00000097          	auipc	ra,0x0
    8000d3a0:	bf8080e7          	jalr	-1032(ra) # 8000cf94 <_ZdlPv>
    8000d3a4:	01813083          	ld	ra,24(sp)
    8000d3a8:	01013403          	ld	s0,16(sp)
    8000d3ac:	00813483          	ld	s1,8(sp)
    8000d3b0:	02010113          	addi	sp,sp,32
    8000d3b4:	00008067          	ret

000000008000d3b8 <_ZN14PCBWrapperUser15userMainWrapperEPv>:
#include "../../h/PCBWrapperUser.hpp"
#include "../../h/syscall_c.hpp"
#include "test/userMain.hpp"

void PCBWrapperUser::userMainWrapper(void* a)
{
    8000d3b8:	ff010113          	addi	sp,sp,-16
    8000d3bc:	00113423          	sd	ra,8(sp)
    8000d3c0:	00813023          	sd	s0,0(sp)
    8000d3c4:	01010413          	addi	s0,sp,16
    userMain();
    8000d3c8:	fffff097          	auipc	ra,0xfffff
    8000d3cc:	7b0080e7          	jalr	1968(ra) # 8000cb78 <_Z8userMainv>
}
    8000d3d0:	00813083          	ld	ra,8(sp)
    8000d3d4:	00013403          	ld	s0,0(sp)
    8000d3d8:	01010113          	addi	sp,sp,16
    8000d3dc:	00008067          	ret

000000008000d3e0 <_ZN14PCBWrapperUser11wrapperUserEPFvPvES0_>:

void PCBWrapperUser::wrapperUser(Body body, void* args)
{
    8000d3e0:	ff010113          	addi	sp,sp,-16
    8000d3e4:	00113423          	sd	ra,8(sp)
    8000d3e8:	00813023          	sd	s0,0(sp)
    8000d3ec:	01010413          	addi	s0,sp,16
    8000d3f0:	00050793          	mv	a5,a0
    body(args);
    8000d3f4:	00058513          	mv	a0,a1
    8000d3f8:	000780e7          	jalr	a5
    thread_exit();
    8000d3fc:	fffff097          	auipc	ra,0xfffff
    8000d400:	d30080e7          	jalr	-720(ra) # 8000c12c <_Z11thread_exitv>
    8000d404:	00813083          	ld	ra,8(sp)
    8000d408:	00013403          	ld	s0,0(sp)
    8000d40c:	01010113          	addi	sp,sp,16
    8000d410:	00008067          	ret

000000008000d414 <_ZN4_semdlEPv>:
//

#include "../../h/_sem.hpp"
#include "../../h/syscall_c.hpp"

void _sem::operator delete(void *p) {
    8000d414:	ff010113          	addi	sp,sp,-16
    8000d418:	00113423          	sd	ra,8(sp)
    8000d41c:	00813023          	sd	s0,0(sp)
    8000d420:	01010413          	addi	s0,sp,16
    sem_close((sem_t)p);
    8000d424:	fffff097          	auipc	ra,0xfffff
    8000d428:	d68080e7          	jalr	-664(ra) # 8000c18c <_Z9sem_closeP4_sem>
}
    8000d42c:	00813083          	ld	ra,8(sp)
    8000d430:	00013403          	ld	s0,0(sp)
    8000d434:	01010113          	addi	sp,sp,16
    8000d438:	00008067          	ret
	...

000000008000e000 <userDataStart>:
    8000e000:	7542                	ld	a0,48(sp)
    8000e002:	6666                	ld	a2,88(sp)
    8000e004:	7265                	lui	tp,0xffff9
    8000e006:	6420                	ld	s0,72(s0)
    8000e008:	6c65                	lui	s8,0x19
    8000e00a:	7465                	lui	s0,0xffff9
    8000e00c:	6465                	lui	s0,0x19
    8000e00e:	0a21                	addi	s4,s4,8
	...
    8000e018:	6548                	ld	a0,136(a0)
    8000e01a:	6c6c                	ld	a1,216(s0)
    8000e01c:	0000206f          	j	8001001c <end+0x101c>
    8000e020:	2120                	fld	fs0,64(a0)
    8000e022:	000a                	c.slli	zero,0x2
    8000e024:	0000                	unimp
	...

000000008000e028 <digits>:
    8000e028:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF
	...

000000008000e040 <_ZTV14PeriodicThread>:
	...
    8000e050:	d338 8000 0000 0000 d36c 8000 0000 0000     8.......l.......
    8000e060:	d308 8000 0000 0000 d320 8000 0000 0000     ........ .......

000000008000e070 <_ZTV6Thread>:
	...
    8000e080:	ceec 8000 0000 0000 cfbc 8000 0000 0000     ................
    8000e090:	d308 8000 0000 0000                         ........

000000008000e098 <_ZTV9Semaphore>:
	...
    8000e0a8:	cf2c 8000 0000 0000 cffc 8000 0000 0000     ,...............

000000008000e0b8 <lockPrint>:
	...

000000008000e0c0 <finished>:
	...
    8000e0c8:	0010 0000 0000 0000 7a03 0052 7c01 0101     .........zR..|..
    8000e0d8:	0d1b 0002 0020 0000 0018 0000 df3c ffff     .... .......<...
    8000e0e8:	0030 0000 4400 100e 8844 4402 000c 0000     0....D..D..D....
    8000e0f8:	0c00 1002 0e44 0000 0020 0000 003c 0000     ....D... ...<...
    8000e108:	df48 ffff 002c 0000 4400 100e 8844 4402     H...,....D..D..D
    8000e118:	000c 0000 0c00 1002 0e44 0000 0034 0000     ........D...4...
    8000e128:	0060 0000 df50 ffff 0090 0000 4400 000e     `...P........D..
	...
    8000e140:	9300 440a 080c 0000 0000 0000 0c00 3002     ...D...........0
    8000e150:	c944 d244 d344 0e44 4400 000b 0020 0000     D.D.D.D..D.. ...
    8000e160:	0098 0000 dfa8 ffff 0020 0000 4400 100e     ........ ....D..
    8000e170:	8844 4402 000c 0000 0c00 1002 0e44 0000     D..D........D...
    8000e180:	0020 0000 00bc 0000 dfa4 ffff 0028 0000      ...........(...
    8000e190:	4400 100e 8844 4402 000c 0000 0c00 1002     .D..D..D........
    8000e1a0:	0e44 0000 0020 0000 00e0 0000 dfa8 ffff     D... ...........
    8000e1b0:	0038 0000 4400 100e 8844 4402 000c 0000     8....D..D..D....
    8000e1c0:	0c00 1002 0e44 0000 0020 0000 0104 0000     ....D... .......
    8000e1d0:	dfbc ffff 002c 0000 4400 100e 8844 4402     ....,....D..D..D
    8000e1e0:	000c 0000 0c00 1002 0e44 0000 0020 0000     ........D... ...
    8000e1f0:	0128 0000 dfc4 ffff 002c 0000 4400 100e     (.......,....D..
    8000e200:	8844 4402 000c 0000 0c00 1002 0e44 0000     D..D........D...
    8000e210:	0020 0000 014c 0000 dfcc ffff 002c 0000      ...L.......,...
    8000e220:	4400 100e 8844 4402 000c 0000 0c00 1002     .D..D..D........
    8000e230:	0e44 0000 0020 0000 0170 0000 dfd4 ffff     D... ...p.......
    8000e240:	002c 0000 4400 100e 8844 4402 000c 0000     ,....D..D..D....
    8000e250:	0c00 1002 0e44 0000 0020 0000 0194 0000     ....D... .......
    8000e260:	dfdc ffff 002c 0000 4400 100e 8844 4402     ....,....D..D..D
    8000e270:	000c 0000 0c00 1002 0e44 0000 0034 0000     ........D...4...
    8000e280:	01b8 0000 dfe4 ffff 0090 0000 4400 000e     .............D..
	...
    8000e298:	9300 440a 080c 0000 0000 0000 0c00 3002     ...D...........0
    8000e2a8:	c944 d244 d344 0e44 4400 000b 0020 0000     D.D.D.D..D.. ...
    8000e2b8:	01f0 0000 e03c ffff 0028 0000 4400 100e     ....<...(....D..
    8000e2c8:	8844 4402 000c 0000 0c00 1002 0e44 0000     D..D........D...
    8000e2d8:	0020 0000 0214 0000 e040 ffff 0024 0000      .......@...$...
    8000e2e8:	4400 100e 8844 4402 000c 0000 0c00 1002     .D..D..D........
    8000e2f8:	0e44 0000 0020 0000 0238 0000 e040 ffff     D... ...8...@...
    8000e308:	002c 0000 4400 100e 8844 4402 000c 0000     ,....D..D..D....
    8000e318:	0c00 1002 0e44 0000 0010 0000 0000 0000     ....D...........
    8000e328:	7a03 0052 7c01 0101 0d1b 0002 0028 0000     .zR..|......(...
    8000e338:	0018 0000 e034 ffff 0028 0000 4400 000e     ....4...(....D..
    8000e348:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    8000e358:	0e44 0000 0000 0000 0010 0000 0000 0000     D...............
    8000e368:	7a03 0052 7c01 0101 0d1b 0002 0028 0000     .zR..|......(...
    8000e378:	0018 0000 e01c ffff 007c 0000 4400 000e     ........|....D..
    8000e388:	0000 0000 8900 4406 080c 0200 0000 0000     .......D........
    8000e398:	020c 4420 44c9 000e 0034 0000 0044 0000     .. D.D..4...D...
    8000e3a8:	e06c ffff 00cc 0000 4400 000e 0000 0000     l........D......
    8000e3b8:	0000 0000 0000 9400 440c 080c 0200 0000     .........D......
    8000e3c8:	0000 020c 4430 44c9 44d2 44d3 44d4 000e     ....0D.D.D.D.D..
    8000e3d8:	0020 0000 007c 0000 e100 ffff 0050 0000      ...|.......P...
    8000e3e8:	4400 100e 8844 4402 000c 0000 0c00 1002     .D..D..D........
    8000e3f8:	0e44 0000 0030 0000 00a0 0000 e12c ffff     D...0.......,...
    8000e408:	0114 0000 4400 000e 0000 0000 0000 0000     .....D..........
    8000e418:	9300 440a 080c 0200 0000 0000 020c 4440     ...D..........@D
    8000e428:	44c9 44d2 44d3 000e 0018 0000 0000 0000     .D.D.D..........
    8000e438:	7a03 4c50 0052 7c01 0701 6d9b ffa4 1bff     .zPLR..|...m....
    8000e448:	0d1b 0002 0038 0000 0020 0000 e1f0 ffff     ....8... .......
    8000e458:	0164 0000 9104 ffa3 44ff 000e 0000 0000     d........D......
    8000e468:	0000 0000 9300 440a 080c 0000 0000 0000     .......D........
    8000e478:	0c00 3002 c944 d244 d344 0e44 4400 000b     ...0D.D.D.D..D..
    8000e488:	0010 0000 0000 0000 7a03 0052 7c01 0101     .........zR..|..
    8000e498:	0d1b 0002 002c 0000 0018 0000 e304 ffff     ....,...........
    8000e4a8:	0090 0000 4400 000e 0000 0000 0000 9200     .....D..........
    8000e4b8:	4408 080c 0200 0000 0000 020c 4420 44c9     .D.......... D.D
    8000e4c8:	44d2 000e 002c 0000 0048 0000 e364 ffff     .D..,...H...d...
    8000e4d8:	008c 0000 4400 000e 0000 0000 0000 9200     .....D..........
    8000e4e8:	4408 080c 0200 0000 0000 020c 4420 44c9     .D.......... D.D
    8000e4f8:	44d2 000e 0030 0000 0078 0000 e3c0 ffff     .D..0...x.......
    8000e508:	0088 0000 4400 000e 0000 0000 0000 9200     .....D..........
    8000e518:	4408 080c 0000 0000 0000 0c00 2002 c944     .D........... D.
    8000e528:	d244 0e44 4400 000b 002c 0000 0104 0000     D.D..D..,.......
    8000e538:	e414 ffff 0100 0000 4e04 ffa3 44ff 000e     .........N...D..
    8000e548:	0000 0000 8900 4406 080c 0200 0000 0000     .......D........
    8000e558:	020c 4420 44c9 000e 0010 0000 0000 0000     .. D.D..........
    8000e568:	7a03 0052 7c01 0101 0d1b 0002 002c 0000     .zR..|......,...
    8000e578:	0018 0000 e4d0 ffff 00a4 0000 4400 000e     .............D..
    8000e588:	0000 0000 0000 9200 4408 080c 0200 0000     .........D......
    8000e598:	0000 020c 4420 44c9 44d2 000e 0028 0000     .... D.D.D..(...
    8000e5a8:	0048 0000 e544 ffff 0088 0000 4400 000e     H...D........D..
    8000e5b8:	0000 0000 8900 4406 080c 0200 0000 0000     .......D........
    8000e5c8:	020c 4440 44c9 000e 0024 0000 0074 0000     ..@D.D..$...t...
    8000e5d8:	e5a0 ffff 0028 0000 4400 000e 0000 8800     ....(....D......
    8000e5e8:	4404 080c 0000 0000 0c00 1002 0e44 0000     .D..........D...
    8000e5f8:	0010 0000 0000 0000 7a03 0052 7c01 0101     .........zR..|..
    8000e608:	0d1b 0002 002c 0000 0018 0000 e58c ffff     ....,...........
    8000e618:	009c 0000 4400 000e 0000 0000 0000 9200     .....D..........
    8000e628:	4408 080c 0200 0000 0000 020c 4420 44c9     .D.......... D.D
    8000e638:	44d2 000e 002c 0000 0048 0000 e5f8 ffff     .D..,...H.......
    8000e648:	0090 0000 4400 000e 0000 0000 0000 9200     .....D..........
    8000e658:	4408 080c 0200 0000 0000 020c 4420 44c9     .D.......... D.D
    8000e668:	44d2 000e 002c 0000 0078 0000 e658 ffff     .D..,...x...X...
    8000e678:	008c 0000 4400 000e 0000 0000 0000 9200     .....D..........
    8000e688:	4408 080c 0200 0000 0000 020c 4420 44c9     .D.......... D.D
    8000e698:	44d2 000e 0030 0000 00a8 0000 e6b4 ffff     .D..0...........
    8000e6a8:	0088 0000 4400 000e 0000 0000 0000 9200     .....D..........
    8000e6b8:	4408 080c 0000 0000 0000 0c00 2002 c944     .D........... D.
    8000e6c8:	d244 0e44 4400 000b 0018 0000 0000 0000     D.D..D..........
    8000e6d8:	7a03 4c50 0052 7c01 0701 cd9b ffa1 1bff     .zPLR..|........
    8000e6e8:	0d1b 0002 0030 0000 0020 0000 e6ec ffff     ....0... .......
    8000e6f8:	00e0 0000 9604 ffa1 44ff 000e 0000 0000     .........D......
    8000e708:	8900 4406 080c 0200 0000 0000 020c 4420     ...D.......... D
    8000e718:	44c9 000e 0000 0000 0010 0000 0000 0000     .D..............
    8000e728:	7a03 0052 7c01 0101 0d1b 0002 0020 0000     .zR..|...... ...
    8000e738:	0018 0000 ebcc ffff 0018 0000 4400 100e     .............D..
    8000e748:	8844 4402 000c 0000 0c00 1002 0e44 0000     D..D........D...
    8000e758:	0020 0000 003c 0000 ebc0 ffff 0018 0000      ...<...........
    8000e768:	4400 100e 8844 4402 000c 0000 0c00 1002     .D..D..D........
    8000e778:	0e44 0000 0024 0000 0060 0000 e73c ffff     D...$...`...<...
    8000e788:	002c 0000 4400 000e 0000 8800 4404 080c     ,....D.......D..
    8000e798:	0000 0000 0c00 1002 0e44 0000 0018 0000     ........D.......
    8000e7a8:	0000 0000 7a03 4c50 0052 7c01 0701 f99b     .....zPLR..|....
    8000e7b8:	ffa0 1bff 0d1b 0002 0028 0000 0020 0000     ........(... ...
    8000e7c8:	e724 ffff 0040 0000 c604 ffa0 58ff 000e     $...@........X..
    8000e7d8:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    8000e7e8:	0e44 0000 0024 0000 00d0 0000 eb44 ffff     D...$.......D...
    8000e7f8:	0034 0000 4400 000e 0000 8800 4404 080c     4....D.......D..
    8000e808:	0000 0000 0c00 1002 0e44 0000 0028 0000     ........D...(...
    8000e818:	0074 0000 e710 ffff 0040 0000 7604 ffa0     t.......@....v..
    8000e828:	58ff 000e 0000 8800 4404 080c 0000 0000     .X.......D......
    8000e838:	0c00 1002 0e44 0000 0024 0000 0124 0000     ....D...$...$...
    8000e848:	e724 ffff 0028 0000 4400 000e 0000 8800     $...(....D......
    8000e858:	4404 080c 0000 0000 0c00 1002 0e44 0000     .D..........D...
    8000e868:	0024 0000 014c 0000 e724 ffff 0028 0000     $...L...$...(...
    8000e878:	4400 000e 0000 8800 4404 080c 0000 0000     .D.......D......
    8000e888:	0c00 1002 0e44 0000 0028 0000 0174 0000     ....D...(...t...
    8000e898:	e724 ffff 0040 0000 4400 000e 0000 0000     $...@....D......
    8000e8a8:	8900 4406 080c 0000 0000 0c00 2002 c944     ...D......... D.
    8000e8b8:	0e44 0000 0028 0000 01a0 0000 e738 ffff     D...(.......8...
    8000e8c8:	0040 0000 4400 000e 0000 0000 8900 4406     @....D.........D
    8000e8d8:	080c 0000 0000 0c00 2002 c944 0e44 0000     ......... D.D...
    8000e8e8:	0028 0000 01cc 0000 ea7c ffff 004c 0000     (.......|...L...
    8000e8f8:	4400 000e 0000 0000 8900 4406 080c 0000     .D.........D....
    8000e908:	0000 0c00 2002 c944 0e44 0000 0024 0000     ..... D.D...$...
    8000e918:	01f8 0000 e720 ffff 0038 0000 4c00 000e     .... ...8....L..
    8000e928:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    8000e938:	0e44 0000 0024 0000 0220 0000 e730 ffff     D...$... ...0...
    8000e948:	0028 0000 4400 000e 0000 8800 4404 080c     (....D.......D..
    8000e958:	0000 0000 0c00 1002 0e44 0000 0024 0000     ........D...$...
    8000e968:	0248 0000 e730 ffff 0028 0000 4400 000e     H...0...(....D..
    8000e978:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    8000e988:	0e44 0000 0020 0000 0270 0000 e730 ffff     D... ...p...0...
    8000e998:	0040 0000 4400 000e 0000 0000 0000 9200     @....D..........
    8000e9a8:	4408 080c 0000 0000 0024 0000 0294 0000     .D......$.......
    8000e9b8:	e74c ffff 003c 0000 4400 000e 0000 8800     L...<....D......
    8000e9c8:	4404 080c 0000 0000 0c00 1002 0e44 0000     .D..........D...
    8000e9d8:	0024 0000 02bc 0000 e760 ffff 0048 0000     $.......`...H...
    8000e9e8:	4400 000e 0000 8800 4404 080c 0000 0000     .D.......D......
    8000e9f8:	0c00 1002 0e44 0000 0024 0000 02e4 0000     ....D...$.......
    8000ea08:	e780 ffff 0038 0000 4c00 000e 0000 8800     ....8....L......
    8000ea18:	4404 080c 0000 0000 0c00 1002 0e44 0000     .D..........D...
    8000ea28:	0028 0000 030c 0000 e790 ffff 004c 0000     (...........L...
    8000ea38:	4400 000e 0000 0000 8900 4406 080c 0000     .D.........D....
    8000ea48:	0000 0c00 2002 c944 0e44 0000 0024 0000     ..... D.D...$...
    8000ea58:	0338 0000 e7b0 ffff 0038 0000 4c00 000e     8.......8....L..
    8000ea68:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    8000ea78:	0e44 0000 0024 0000 0360 0000 e7c0 ffff     D...$...`.......
    8000ea88:	0028 0000 4400 000e 0000 8800 4404 080c     (....D.......D..
    8000ea98:	0000 0000 0c00 1002 0e44 0000 0024 0000     ........D...$...
    8000eaa8:	0388 0000 e7c0 ffff 0028 0000 4400 000e     ........(....D..
    8000eab8:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    8000eac8:	0e44 0000 0030 0000 03b0 0000 e7c0 ffff     D...0...........
    8000ead8:	0074 0000 4400 000e 0000 0000 0000 9200     t....D..........
    8000eae8:	4408 080c 0200 0000 0000 020c 4420 44c9     .D.......... D.D
    8000eaf8:	44d2 000e 0000 0000 0010 0000 0000 0000     .D..............
    8000eb08:	7a03 0052 7c01 0101 0d1b 0002 0024 0000     .zR..|......$...
    8000eb18:	0018 0000 e89c ffff 0028 0000 4400 000e     ........(....D..
    8000eb28:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    8000eb38:	0e44 0000 0028 0000 0040 0000 e89c ffff     D...(...@.......
    8000eb48:	0034 0000 4400 000e 0000 8800 4404 080c     4....D.......D..
    8000eb58:	0000 0000 0c00 1002 0e44 0000 0000 0000     ........D.......
    8000eb68:	0010 0000 0000 0000 7a03 0052 7c01 0101     .........zR..|..
    8000eb78:	0d1b 0002 0028 0000 0018 0000 e890 ffff     ....(...........
    8000eb88:	0028 0000 4400 000e 0000 8800 4404 080c     (....D.......D..
    8000eb98:	0000 0000 0c00 1002 0e44 0000 0000 0000     ........D.......
